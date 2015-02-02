use v6;
use Math::OddFunctions;
use Test;

plan 46;

sub postfix:<!>($n) { [*] 1..$n }

for 1..20 -> $n {
    is Γ($n), ($n - 1)!, "Γ($n) == {$n - 1}!";
}

for 1..20 -> $n {
    is_approx Γ($n.Num), ($n - 1)!, "Γ($n.Num) == {$n - 1}!";
}

is Γ(0), NaN, "Γ(0) is NaN";
is Γ(0.Num), NaN, "Γ(0.Num) is still NaN";
is_approx Γ(.5), 1.772453851, "Γ(.5) == 1.772453851";
is_approx Γ(-.5), -3.544907702, "Γ(-.5) == -3.544907702";
is_approx Γ(100), 9.332621544e+155, "Γ(100) == 9.332621544e+155";
is_approx Γ(100.Num), 9.332621544e+155, "Γ(100.Num) == 9.332621544e+155";