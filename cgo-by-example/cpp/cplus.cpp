#include <iostream>
#include "cplus.hpp"

using namespace std;

void A::test() {
    cout << "From A.test()" << endl;
}

void B::test() {
    cout << "From B.test()" << endl;
}

void B::funcB() {
    cout << "funB" << endl;
}
