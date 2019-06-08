#include <iostream>
#include <fstream>
#include <string>

using namespace std;

void main() {
	ifstream in;
	in.open("*.txt");
	if (in.is_open()) {
		cout << "Hello\n";
	}
	int a;
	cin >> a;

}