use v6;
use Math::OddFunctions;
use Test;

plan 8;

is_approx log1p(0), 0, "log1p(0) == 0";
is_approx log1p(1e-50), 1e-50, "log1p(1e-50) == 1e-50";
is_approx log1p(-1e-50), -1e-50, "log1p(-1e-50) == -1e-50";
is_approx log1p(.5), 0.4054651081, "log1p(.5) == 0.4054651081";
is_approx log1p(-.5), -0.6931471806, "log1p(-.5) == -0.69314718061";
is_approx log1p(1), 0.6931471806, "log1p(1) == 0.6931471806";
is_approx log1p(10), 2.397895273, "log1p(10) == 2.397895273";
is_approx log1p(100), 4.615120517, "log1p(100) == 4.615120517";


