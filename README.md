# This is the guidance for simulation in paper: 
Potvin, D., DiLiberti, C.E., Hauck, W.W., Parr, A.F., Schuirmann, D.J. and Smith, R.A., 2008. Sequential design approaches for bioequivalence studies with crossover designs. Pharmaceutical Statistics: The Journal of Applied Statistics in the Pharmaceutical Industry, 7(4), pp.245-262.

# Here is the outline:

1.	Generate data X representing ln(test)-ln(reference)~N(ln(theta),2sigma^2) 
	a.	theta=1.25 or 0.95, sigma is calculated from the CV 10%~100%
2.	from 1, you simulate N1 at stage1. N1 is predetermined from 12~60 (see table I)
3.	From N1, you go through the method A, B, C, D.
4.	If the second stage is needed based on A, B, C, D, N2 is determined from method A, B, C, D, and original ratio=95%.
5.	Finally, you will have four sets results from A, B, C, D, telling you if BE is established or not. If the true data is from theta=0.95, then we know BE is true. If the true data is from theta=1.25, then you know BE is not true. you can code the result as 1 representing BE achieved, 0 representing BE not achieved. 
6.	Repeat 1~5 for 1 million times. You will have 1 million results for each scenario. Calculate the mean of 1. You will get the power when theta=0.95, and the type I error when theta=1.25
