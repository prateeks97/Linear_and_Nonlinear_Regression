#include <bits/stdc++.h>
#include "Eigen/Dense"
#include <fstream>

using namespace std;

int main(){
    ifstream excel("model_dataSet.csv");
    if (!excel.is_open()){
        cout << "Error: File Open" << endl;
    }
    Eigen::MatrixXd A(3398,2);
    Eigen::MatrixXd b(3398,1);
    Eigen::MatrixXd X;
    vector<vector<int>> A_vec;
    string p_id, meal_id, nBites, KCal;
    int idx = 0;
    while (excel.good()){
        getline(excel,p_id , ' ');
        getline(excel, meal_id, ' ');
        getline(excel, nBites, ' ');
        getline(excel, KCal, '\n');
        int bites = stoi(nBites);
        int calories = stoi(KCal);
        int cal_per_bite = calories/bites;
        int x_1 = bites;
        int y_1 = cal_per_bite;

        vector<int> A_temp;
        A_temp.push_back(x_1);
        A_temp.push_back(1);
        A_vec.push_back(A_temp);

        //Making b matrix
        b(idx,0) = y_1;
        idx++;

    }
    excel.close();
    for (int i = 0; i< A_vec.size(); i++){
        for (int j = 0; j<A_vec[0].size(); j++){
            A(i,j) = A_vec[i][j];
        }
    }
    // A and b matrix are formed. Now we find transpose of A
    Eigen::MatrixXd A_t = A.transpose();
    X = (A_t*A).inverse()* A_t * b;
    cout << X << endl;
    ofstream write_file;
    write_file.open("Result_Line.txt");
    for (double i = 0; i< 150; i++){
        double y = X(0)*i + X(1);
        write_file << y << " " << i << endl;
    }
    write_file.close();
    return 0;
}
