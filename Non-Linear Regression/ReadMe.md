
  

# Non-Linear Regression

## Non-Linear Model Fitting Theory
The model to be fitted is given as:
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=y&space;=&space;ln&space;(ax)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?y&space;=&space;ln&space;(ax)" title="y = ln (ax)" /></a>
</p>
where,

a = unknown

x = x data point

y = y data point

<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=E&space;=&space;\sum_{i=1}^{N}&space;(Y_{i}&space;-&space;ln(aX_{i}))^{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?E&space;=&space;\sum_{i=1}^{N}&space;(Y_{i}&space;-&space;ln(aX_{i}))^{2}" title="E = \sum_{i=1}^{N} (Y_{i} - ln(aX_{i}))^{2}" /></a>
</p>

where,

E = error function

N = number of total known data points

a = unknown


Taking the partial derivative w.r.t to the unknown variables of the above error function:
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=\frac{dE}{da}&space;=&space;\sum_{i=1}^{N}&space;2(Y_{i}&space;-&space;ln(aX_{i}))&space;(-\frac{1}{a})" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{dE}{da}&space;=&space;\sum_{i=1}^{N}&space;2(Y_{i}&space;-&space;ln(aX_{i}))&space;(-\frac{1}{a})" title="\frac{dE}{da} = \sum_{i=1}^{N} 2(Y_{i} - ln(aX_{i})) (-\frac{1}{a})" /></a>
</p>

We want to minimize the error function, so we equate the partial derivative to zero:
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=\sum_{i=1}^{N}&space;(Y_{i}&space;-&space;ln(aX_{i}))&space;(\frac{1}{a})&space;=&space;0" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\sum_{i=1}^{N}&space;(Y_{i}&space;-&space;ln(aX_{i}))&space;(\frac{1}{a})&space;=&space;0" title="\sum_{i=1}^{N} (Y_{i} - ln(aX_{i})) (\frac{1}{a}) = 0" /></a>
</p>

Now, applying the root-finding approach to iteratively solve the problem:
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=f(a)&space;=&space;\sum_{i=1}^{N}&space;\frac{Y_{i}}{a}&space;-&space;\frac{ln(aX_{i})}{a}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f(a)&space;=&space;\sum_{i=1}^{N}&space;\frac{Y_{i}}{a}&space;-&space;\frac{ln(aX_{i})}{a}" title="f(a) = \sum_{i=1}^{N} \frac{Y_{i}}{a} - \frac{ln(aX_{i})}{a}" /></a>
</p>
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=f^{'}(a)&space;=&space;\sum_{i=1}^{N}&space;-\frac{Y_{i}}{a^{2}}&space;-&space;\frac{\left&space;(&space;1&space;-&space;ln(aX_{i})&space;\right&space;)}{a^{2}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f^{'}(a)&space;=&space;\sum_{i=1}^{N}&space;-\frac{Y_{i}}{a^{2}}&space;-&space;\frac{\left&space;(&space;1&space;-&space;ln(aX_{i})&space;\right&space;)}{a^{2}}" title="f^{'}(a) = \sum_{i=1}^{N} -\frac{Y_{i}}{a^{2}} - \frac{\left ( 1 - ln(aX_{i}) \right )}{a^{2}}" /></a>
</p>
Now using the below equation to iteratively find a converging solution:
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=a_{n&plus;1}&space;=&space;a_{n}&space;-&space;\frac{f(a_{n})}{f'(a_{n})}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a_{n&plus;1}&space;=&space;a_{n}&space;-&space;\frac{f(a_{n})}{f'(a_{n})}" title="a_{n+1} = a_{n} - \frac{f(a_{n})}{f'(a_{n})}" /></a>
</p>
where,

<a href="https://www.codecogs.com/eqnedit.php?latex=a_{n}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a_{n}" title="a_{n}" /></a>= Initial guess

<a href="https://www.codecogs.com/eqnedit.php?latex=a_{n&plus;1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a_{n&plus;1}" title="a_{n+1}" /></a> = calculated guess to be used in the next iteration

## Implementation Details

1. Data set for Model fitting is given [here](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/tree/master/Non-Linear%20Regression/input_data_set).

2. The C++ implementation for the model fitting can be found [here](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/model_fitting_cpp/model_fitting.cpp). For theory refer to the above given text.

3. The results from the model fitting code can be found [here](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/tree/master/Non-Linear%20Regression/result_files). These results are used by a [MATLAB script](https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/MATLAB_plotting_script/nonLinearModelFitting.m) to plot the results.
4.  Log model is used to fit all the given data set. 
 

## Results

Non-Linear model fitting plots for three data sets are given below:

  

### Model A:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Model_fitted_A.png"  width="400"  height="300"/>
</p>

### Convergance for Model A:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Convergance_A.png"  width="400"  height="300"/>
</p>

|  |  |
|--|--|
| Initial guess| 8.0 |
| Convergence  | 6.71136 |
| Number of iterations | 5 |


### Model B:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Model_fitted_B.png"  width="400"  height="300"/>
</p>

### Convergance for Model B:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Convergance_B.png"  width="400"  height="300"/>
</p>

|  |  |
|--|--|
| Initial guess| 20.0 |
| Convergence  | 18.9961|
| Number of iterations | 4 |

### Model C:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Model_fitted_C.png"  width="400"  height="300"/>
</p>

### Convergance for Model C:
<p  align="center">
<img  src="https://github.com/prateeks97/linear_and_nonlinear_modelFitting/blob/master/Non-Linear%20Regression/plots/Convergance_C.png"  width="400"  height="300"/>
</p>

|  |  |
|--|--|
| Initial guess| 0.2 |
| Convergence  | 0.28998|
| Number of iterations | 6 |