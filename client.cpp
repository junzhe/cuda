#ifndef _MSC_VER
#include <unistd.h>
#define SLEEP(x) sleep(x)
#else
#include <windows.h>
#define SLEEP(x) Sleep(x)
#endif

#include "client.h"
#include "json_socket/json_socket.h"

void client::error(error_msg* err) {
    cout << "error: " << err->message << endl;
}

void print_game_state(game_state *state) {
	cout<<"game_state:"<<endl;
	cout<<"hand_id: "<<state->hand_id<<endl;
	cout<<"game_id: "<<state->game_id<<endl;
	cout<<"your_tricks: "<<state->your_tricks<<endl;
	cout<<"their_tricks: "<<state->their_tricks<<endl;
	cout<<"can_challenge: "<<state->can_challenge<<endl;
	cout<<"in_challenge: "<<state->in_challenge<<endl;
	cout<<"total_tricks: "<<state->total_tricks<<endl;
	cout<<"your_points: "<<state->your_points<<endl;
	cout<<"opponent_id: "<<state->opponent_id<<endl;
	cout<<"their_points: "<<state->their_points<<endl;
	cout<<"player_number: "<<state->player_number<<endl;
	cout<<"opp_lead: "<<state->opp_lead<<endl;
	cout<<"card: "<<state->card<<endl;
	cout<<"hand:"<<endl;
	for(int i = 0; i<state->hand.size(); i++)
		cout<<state->hand[i]<<endl;
	cout<<endl;
}

void print_move_request(move_request *req) {
	cout<<"move_request:"<<endl;
	cout<<"request: "<<req->request<<endl;
	cout<<"remaining: "<<req->remaining<<endl;
	cout<<"request_id: "<<req->request_id<<endl;

	cout<<endl;
	print_game_state(req->state);
}	

void print_game_result(game_result *r){
	cout<<"game_result:"<<endl;
	cout<<"by: "<<r->by<<endl;
	cout<<"iwon: "<<r->iwon<<endl;
	cout<<endl;
}

void print_move_result(move_result *r) {
	cout<<"move_result: "<<endl;
	cout<<"by: "<<r->by<<endl;
	cout<<"card: "<<r->card<<endl;
	cout<<"iwon: "<<r->iwon<<endl;
	cout<<endl;
}

move_response* client::move(move_request* req) {
	cout<<"move:"<<endl;
	print_move_request(req);
    return new play_card_response(req->state->hand[0]);
}

challenge_response* client::challenge(move_request* req) {
	cout<<"challenge:"<<endl;
	print_move_request(req);
    return new challenge_response(false);
}

void client::server_greeting(greeting* greet) {
    cout << "Connected to server." << endl;
}

void client::game_over(game_result* r) {
	cout<<"game_over:"<<endl;
	print_game_result(r);
	//TODO
	exit(0);
}

void client::trick_done(move_result* r) {
	cout<<"trick_done "<<endl;
	print_move_result(r);
}

void client::hand_done(move_result* r) {
	cout<<"hand_done"<<endl;
	print_move_result(r);
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
        	//TODO
		exit(0);
	}
        SLEEP(10);
    }

    return 0;
}
