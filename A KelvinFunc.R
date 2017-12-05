library(kelvin)
library(rootSolve)
s = 0.0001 #storage coefficient
rw = 0.08333333 # in ft
rc = 0.33333333 # in ft
A = 0.0057
SP = s*(rc/rw)^2
Per = 4.47E+04 #x is T'
fun <- function (x) (A-(((1-pi/x*Kei((2*pi*SP/x)^0.5)))^2+(pi/x*(Ker((2*pi*SP/x)^0.5))^2))^(-0.5))
curve(fun(x), 0.005, 0.2)
abline(h = 0, lty = 3)
TP <- uniroot(fun, c(0.005, 0.2), tol =0.000000000000000000001)
#fun(all)
Tr = TP$root*(rc^2)/Per #Transmissivity
Tr
	