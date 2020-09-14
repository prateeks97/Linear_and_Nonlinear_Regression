#include <bits/stdc++.h>
#include "Eigen/Dense"
#include <fstream>
#include <math.h>

using namespace std;

int main(){
    ifstream excel("model_dataSet.csv");
    if (!excel.is_open()){
        cout << "Error: File Open" << endl;
    }
    Eigen::MatrixXd A(3398,3);
    Eigen::MatrixXd b(3398,1);
    Eigen::MatrixXd X;
    string p_id, meal_id, nBites, KCal;
    int idx = 0;
    while (excel.good()){
        getline(excel,p_id , ' ');
        getline(excel, meal_id, ' ');
        getline(excel, nBites, ' ');
        getline(excel, KCal, '\n');
        double bites = stoi(nBites);
        double calories = stoi(KCal);
        double cal_per_bite = calories/bites;

        double x_1 = bites;
        double y_1 = cal_per_bite;
        A(idx,0) = (x_1*x_1)/4;
        A(idx,1) = -x_1/2;
        A(idx,2) = 1;
        b(idx,0) = y_1;

        idx++;
    }
    excel.close();

    // A and b matrix are formed. Now we find transpose of A
    Eigen::MatrixXd A_t = A.transpose();
    X = (A_t*A).inverse()* A_t * b;
    double p = 1/X(0);
    double h = p * X(1);
    double k = X(2) - ((h*h)/(4*p));
    cout << p << " " << h << " " << k << endl;
    ofstream write_file;
    write_file.open("Result_Upward_parabola.txt");
    for (double i = 0; i< 300; i++){
        double y = (((i-h)*(i-h))/(4*p)) + k;
        write_file << y << " " << i << endl;
    }
    write_file.close();
    return 0;
}
