use v6;
use Math::OddFunctions;
use Test;

plan 11;

is error-function(0), 0, "Erf(0) == 0";
is_approx error-function(.5), .5205, "Erf(.5) == 0.5205";
is_approx error-function(-.5), -.5205, "Erf(-.5) == -0.5205";
is_approx error-function(1), .842701, "Erf(1) == 0.842701";
is_approx error-function(-1), -.842701, "Erf(-1) == -0.842701";
is_approx error-function(10), 1, "Erf(10) == ~1";
is_approx error-function(-10), -1, "Erf(-10) == ~-1";
is_approx error-function(100), 1, "Erf(100) == ~1";
is_approx error-function(-100), -1, "Erf(-100) == ~-1";
is_approx error-function(10**100000), 1, "Erf(10**100000) == ~1";
is_approx error-function(-10**100000), -1, "Erf(-10**100000) == ~-1";


