int foo() {
    return 1;
}

void foo2() {
    return;
}

int foo3(int a, bool b) {
    return 2;
}

int foo4() {
    return;
}

bool foo5() {
    return;
}

bool foo6() {
    return true;
}

void foo7(int i){
}

struct P {
    int a;
};

int main() {
    struct P p;
    int a;
    bool b;

    cout << foo;
    cout << P;
    cout << p;
    cout << foo2();
    cin >> foo;
    cin >> P;
    cin >> p;
    a();
    b();
    p();
    a(p);
    foo3();
    foo3(a);
    foo3(b, a);
    foo3(a, p);
    a = foo4();
    b = foo5();
    a = foo2();
    b = foo();
    a = foo6();
    a = true + 1;
    a = true + false;
    a = false - 1;
    a = false - true;
    a = true * 1;
    a = true * false;
    a = true / 1;
    a = true / false;
    a = true + "hello";  // Should have one error for each of the non-int operands of the +
    b++;
    b--;

    // start writing from error "Relational operator applied to non-numeric operand"
    if (b < a){}
    if (b > a){}
    if (b >= a){}
    if (b <= a){}
    if (b < b){}
    if (b > b){}
    if (p >= b){}
    if (p <= b){}
    if (p < 1 + 1){}
    if (p < true + 1){}

    // Logical operator applied to non-bool operand
    if (!a){}
    if (!p){}
    if (a || b){}
    if (b && a){}
    if (p || p){}

    // Non-bool expression used as an if condition
    if (a){}
    if (a){} else{}
    if (foo()){}

    // Non-bool expression used as an while condition
    while (a){}

    // Type mismatch
    if (a == b){}
    if (foo == a){}
    if (b == foo){}
    if (P == p){}
    if (p == foo){}
    if (a != b){}
    if (foo != a){}
    if (b != foo){}
    if (P != p){}
    if (p != foo){}

    // Equality operator applied to void functions
    if (foo2() == foo2()){}
    if (foo2() != foo2()){}

    //Equality operator applied to functions
    if (foo() == foo()){}
    if (foo() != foo()){}

    // Equality operator applied to struct names
    if (P == P){}
    if (P != P){}

    // Equality operator applied to struct variables
    if (p == p){}
    if (p != p){}

    // TODO: Should start from Function assignment
}