# LMaFit

LMaFit is a MATLAB package that currently solves the following problems

- Matrix Complete (MC)  
 Find a rank-r matrix U such that Uij ~= Aij, (i,j) in E
 
- Sparse Matrix Separation (SMS)  
 Find a rank-r matrix U and a sparse matrix S such that U + S ~= A,
 
where the matrix A is given either in part as in MC or completely as in SMS. In general, we assume that data in A contain noise.  

Numerical testing showed that the MC code is highly competitive with existing codes. For example, within 2 minutes on a MacBook Pro laptop, LMatFit MC code can complete a 100,000 by 100,000 matrix of rank-10 using a 0.12% sample. LMatFit MC code only requires an over-estimate of the rank and then tries to estimate the correct rank. Moreover, the code can handle noisy data.

The code for sparse matrix separation was tested on removing both impulsive and white noise from a 512 by 512 checker board image; see the noisy and denoised image set 1 (also see image set 2 and image set 3). 

## Papers:
- Wen Zaiwen, Yin Wotao, Zhang Yin; Solving A Low-Rank Factorization Model for Matrix Completion by A Nonlinear Successive Over-Relaxation Algorithm; Mathematical Programming Computation; 4 (2012), 333-361. 

-	Shen Yuan, Wen Zaiwen, Zhang Yin; Augmented Lagrangian alternating direction method for matrix separation based on low-rank factorization; Optimization methods and Software; Vol. 29, No. 2 (2014), pp 239–263

## The Authors:

We hope that the package is useful for your application. If you have any bug reports or comments, please feel free to email one of the toolbox authors:

Yin Zhang
Zaiwen Wen
Yuan Shen (SMS)

## License:
LMaFit (for matrix completion) and LMaFit-SMS (for sparse matrix separation) are distributed under the terms of the GNU General Public License (http://www.gnu.org/licenses/gpl-3.0.html).
