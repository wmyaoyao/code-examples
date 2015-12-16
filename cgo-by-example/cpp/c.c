#include <stdio.h>
#include "cplus.hpp"
#include "c.h"

void func1() {
    A *a = new B();
    a->test();
}

void func2() {
    // printf("Hello, library world.\n");
    // Test Obj B
    B *b = new B();
    b->funcB();
}
