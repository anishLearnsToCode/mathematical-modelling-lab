# Mathematical Modelling & Simulation Lab

![made-with-matlab](https://img.shields.io/badge/Made%20with-Matlab-1f425f.svg)

| No. | Experiment | Date | Code | File |
|-----|------------|------|------|------|
| 1 | Find the solution of an Ordinary Differential Equation (ODE) | 21st August 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-01/experiment_1.m)| [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-experiment-01.pdf) |
| 2 | Perform Linear Regression and Fit a Linear Curve to Discrete Data | 4th September 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-02/polyfit_linear.m)| [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-2-linear-curve-fitting.pdf) |
| 3 | Perform Linear Regression and Fit a Quadratic Curve to Discrete Data | 4th September 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-02/polyfit_quadratic.m)| [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-2-quadratic-curve-fitting.pdf) |
| 4 | Perform Linear Regression and Fit a Cubic Curve to Discrete Data | 4th September 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-02/polyfit_cubic.m)| [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-2-cubic-curve-fitting.pdf) |
| 5 | Fit Control Points using a Spline Curve | 25th September 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-03/spline_test.m) | [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-3-spline-curve-fitting.pdf) |
| 6 | Multiple regression in using `regress()` | 16th October 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-06/multiple_regression.m) | [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-6-multiple-regression.pdf) |
| 7 | Draw some trajectories for predator prey problem in MATLAB | 23d October 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-07/prey_predator_model.m) | [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-7-prey-predator-model.pdf) |
| 8 | Write a Program for Statistical Analysis of Data Using MATLAB. | 6th November 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-08/statistical_data_anlysis.m) | [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-8-statistical-analysis.pdf) |
| 9 | Write a program for Monte Carlo method using MATLAB | 6th November 2020 | [![matlab](https://img.icons8.com/nolan/40/matlab.png)](lab/experiment-09/monte_carlo_simulation.m) | [![doc](https://img.icons8.com/color/40/000000/document.png)](project/ms-lab-9-monte-carlo.pdf) |

## Running Projects Locally
Clone this repository on your machine and enter the project directory.
```bash
git clone https://github.com/anishLearnsToCode/mathematical-modelling-lab.git
cd mathematical-modelling-lab/lab/
```

Navigate to a project of your choice from the list below and run it as follows e.g. to run 
experiment 1 
```bash
cd experiment-01
matlab -nosplash -nodesktop -r "run('experiment_1.m');"
``` 

Similarly you can run any experiment in the lab by executing a similar expression as:

```bash
cd experiment-n
matlab -nosplash -nodesktop -r "run('experiment_n.m');"
```   

where `n` stands for the experiment number.
