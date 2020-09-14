
# Least Sqaures and Normal Equations

## Problem Statement and Theory

  

1. The data set for 3,398 meals eaten by 83 different people is given [here](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/data_set/model_dataSet.csv). The first column is the participant ID, the second column is the meal ID. The third column is the number of bites taken in the meal, and the fourth column is the number of kilocalories consumed.

2. The objective is to fit a model using Least Squares (Regresssion analysis method) and normal equations for data using the third column (bites) and the dividend of the fourth and third columns (kilocalories per bite).

3. More information regarding [Least Squares](https://www.mathsisfun.com/data/least-squares-regression.html) and [Normal Equations](http://mlwiki.org/index.php/Normal_Equation) can be found in the hyperlinks.

  

## Implementation Details

  

1. Two models were used to fit the given [data set](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/data_set/model_dataSet.csv) , namely, [Linear](http://www.stat.yale.edu/Courses/1997-98/101/linreg.htm) and [Upward Parabola](http://jwilson.coe.uga.edu/EMT725/Class/Sarfaty/EMT669/InstructionalUnit/Parabolas/parabolas.html#:~:text=The%20standard%20form%20is%20%28x,is%20x%20=%20h%20-%20p.) model.

2. The C++ implementation for the [linear](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/cpp_modelFitting_codes/line_fitting.cpp) and [parabola](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/cpp_modelFitting_codes/upwardParabola_fitting.cpp) model can be found in the given links. For evaluating matrices [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) librabry was used.

3. The [results](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/tree/master/model_results) from the model are used by the [MATLAB script](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/MATLAB_plotting_script/model_fitting_plotting.m) for plotting results.

## Results

The resulting fit obtained from the models are shown below:

  

### Data Set:

<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/plots_of_fittedModel/dataSet.png"  width="400"  height="300"/>

  

### Linear Model Fitting:

<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/plots_of_fittedModel/line_fitted.png"  width="400"  height="300"/>

  

### Upward Parobola Model Fitting:

<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/plots_of_fittedModel/parabola_fitted.png"  width="400"  height="300"/>
