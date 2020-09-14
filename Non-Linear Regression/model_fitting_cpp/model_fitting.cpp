#include <bits/stdc++.h>
#include <math.h>
#include <fstream>
#define	TOTAL_ITERATIONS	50000
#define	SQR(x)	((x)*(x))

using namespace std;

int main()
{
    double an;
    //ifstream excel("A.csv");    an= 8.0;		 // Initial guess for A.csv;
    //ifstream excel("B.csv");  an= 20.0;		 // Initial guess for B.csv;
    ifstream excel("C.csv");  an= 0.2;		 // Initial guess for C.csv;
    if (!excel.is_open()){
        cout << "Error: File Open" << endl;
    }
    string x,y;
    double x_1, y_1;
    vector<double> x_vec;
    vector<double> y_vec;
    while (excel.good()){
        getline(excel, x, ' ');
        getline(excel, y, '\n');
        x_vec.push_back(stod(x));
        y_vec.push_back(stod(y));
    }
    excel.close();

    ofstream iterations;
    //iterations.open("an_covergance_A.txt");
    //iterations.open("an_covergance_B.txt");
    iterations.open("an_covergance_C.txt");

    double	an1,fan,fpan;
    int	i,j;
    for (j=0; j<TOTAL_ITERATIONS; j++)
    {
        iterations << an << endl;
        fan=fpan=0.0;
        for (i=0; i < x_vec.size(); i++)
        {
            fan+=(y_vec[i]/an) - ((log(an*x_vec[i]))/an);
            fpan+=(-y_vec[i]/SQR(an)) - ((1 - log(an*x_vec[i]))/SQR(an));
        }
        an1=an-fan/fpan;
        cout << an << "  " << an1 << endl;
        if (fabs(an-an1) < 0.0000001)
            break;
        an=an1;
    }
    cout << "Final answer is: " << an << endl;
    printf("%d iterations\n",j);
    iterations.close();
    // Exporting results
    ofstream write_file;
    //write_file.open("Result_A.txt");
    //write_file.open("Result_B.txt");
    write_file.open("Result_C.txt");

    double y_r;
    for (int i = 0; i<60; i++){
        y_r = log(an*i);
        write_file << y_r << " " << i << endl;
    }
    write_file.close();

}
