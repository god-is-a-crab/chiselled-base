// g++ -std=c++17 hello.cpp -o hello

#include <iostream>

int main(int argc, char **argv) {
    std::cout << argc << std::endl;
    std::cout << argv[0] << std::endl;
    std::cout << "Hello world!" << std::endl;
}
