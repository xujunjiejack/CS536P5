void voidFunction(){
    bool fool;
}


int emptyFunction(){
    return 1;
}

int functionWith2Arg(int a, int b){
    return a + b;
}

int functionWith3Arg(int a, int b, int c){
    return 1;
}

struct S{
    int a;
};

struct S2 {
    int a;
};

int foo1() {
    return 1;
}

int foo2() {
   return 2;
}

int main(){
    struct S s;
    struct S s2;
    int num;
    bool boolean;

    // Attempt to write a function
    cout << emptyFunction;

    // Attempt to write a struct name
    cout << S;


    // Attempt to write a struct variable
    cout << s;

    // Attempt to write void
    cout << voidFunction();

    // Attempt to read a function
    cin >> voidFunction;

    // Attempt to read a struct name
    cin >> S;

    // Attempt to read a struct variable
    cin >> s;

    // Attempt to call a non-function
    s();

    // Function call with wrong number of args
    voidFunction(num, boolean);
    functionWith2Arg(num);


    // Type of actual does not match type of formal
    functionWith2Arg(num, boolean);
    functionWith3Arg(num, boolean, num);

    // Missing return value

    foo1 = foo2;
    S = S2;
    s = s2;

    return 1;
}

// Missing return value
int missingReturnValue(){
    return;
}

bool missingReturnValueBool(){
    return;
}

// Return with a value in a void function
void voidFunctionWrong(){
    return 1 + 1;
}

int main2(){
    int a;
    bool b;
    a = true;
    b = true;
    return b;
}



