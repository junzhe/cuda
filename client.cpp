#ifndef _MSC_VER
#include <unistd.h>
#define SLEEP(x) sleep(x)
#else
#include <windows.h>
#define SLEEP(x) Sleep(x)
#endif

#include "client.h"
#include "json_socket/json_socket.h"
#include <iostream>
#define DEBUG 1

#include <algorithm>

using namespace std;
void client::error(error_msg* err) {
    cout << "error: " << err->message << endl;
}

move_response* client::move(move_request* req) {
    #ifdef DEBUG
    cout << "\n========Play card========" << endl;
    cout << "Printing stats: " << endl;
    check_stats(req->state);
    int card = play_hand();
    cout << "Card to play: " << card << endl;
    if (req->state->can_challenge)
        return new offer_challenge();
    #endif
   return new play_card_response(card);
}

challenge_response* client::challenge(move_request* req) {
    // Refuses the challenges
    #ifdef DEBUG
    cout << "\n========Chanllenge========" << endl;
    cout << "Printing stats: " << endl;
    check_stats(req->state);
    #endif
    int card = play_hand();
    cout << "Card to play: " << card << endl;
    bool take = false;
    if (card > 10)
        take = true;
    return new challenge_response(take);
}

void client::server_greeting(greeting* greet) {
    cout << "Connected to server." << endl;
}

void client::game_over(game_result* r) {
}

void client::trick_done(move_result* r) {
}

void client::hand_done(move_result* r) {
}


void client::check_stats(game_state * state){
    cout << "====================\n";
    cout << "Key Stats: \n";
    cout << "Our tricks: " << state->your_tricks << endl;
    cout << "Their tricks: " << state->their_tricks << endl;
    cout << "Our points: " << state->your_points << endl;
    cout << "Their points: " << state->their_points << endl;
    cout << "====================\n";
    cout << "Hands are : ";
    if (state->hand.size() == 5 ) {
        cards = std::move(state->hand);
        std::sort(cards.begin(), cards.end());
    }
    for_each(cards.begin(), cards.end(), [](int hand_){cout<<hand_<<" ";});
    cout << endl;
    cout << "hand_id " << state->hand_id << endl;
    cout << "game_id " << state->game_id << endl;
    cout << "your_tricks " << state->your_tricks << endl;
    cout << "their_tricks " << state->their_tricks << endl;
    cout << "can_challenge " << state->can_challenge << endl;
    cout << "in_challenge " << state->in_challenge << endl;
    cout << "total_tricks " << state->total_tricks << endl; //could be less than your_tricks+their_tricks if there have been ties
    cout << "your_points " << state->your_points << endl;
    cout << "opponent_id " << state->opponent_id << endl;
    cout << "their_points " << state->their_points << endl;
    cout << "player_number " << state->player_number << endl;
    cout << "opp_lead " << state->opp_lead << endl; //if true the opponent has lead a card and this->card will be set
    cout << "opp_card " << state->card << endl; //card the opponent has played if opp_lead is true
    cout << "\n\n";
}

int client::play_hand() {
    int ret =  cards.back();
    cards.pop_back();
    return ret;
}


int main(void) {
#ifdef _MSC_VER
	// Initialize Winsock
	WSADATA wsaData;
	WSAStartup(MAKEWORD(2, 0), &wsaData);
#endif

    string server = "cuda.contest";
    for (;;) {
        try {
            json_socket contest_server = json_socket(server, "9999");
            client myclient = client();

            game_mediator game = game_mediator(&myclient, &contest_server);
            game.start();
        }
        catch (UnableToConnect) {
            cout << "Unable to connect. Waiting 10 seconds..." << endl;
        }
        catch (NotParseableJson) {
            cout << "Unparsable JSON encountered. Server probably hung up. Waiting 10 seconds..."
                 << endl;
        }
        SLEEP(10);
    }

    return 0;
}
