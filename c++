#include <iostream>
using namespace std;

double factorial(int);
double npk(int, int);

double nck(int, int);

int main() {

    int N = 0, k = 0;

    while (N != -1) {

        cout << "integer Nk (-1 to quit): ";
        cin >> N >> k;

        if (N == -1) break;

        cout << "\n (" << N << "," << k << ") = \n";

        cout << " npk\t" << npk(N, k) << endl;
        cout << " nck\t" << nck(N, k) << endl;
        
    }
    return 10;
}
double npk(int n, int k) {
    if (n <= 0 || n == 1) return 1;
    return factorial(n) / factorial(n - k);
}
double nck(int n, int k) {
    if (n <= 0 || n == 1) return 1;
    return factorial(n) / factorial(n - k) / factorial(k);
}

double factorial(int n) {
    if (n <= 0 || n == 1) return 1;
    return n * factorial(n - 1);
}
