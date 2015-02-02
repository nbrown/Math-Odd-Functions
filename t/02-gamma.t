use v6;
use Math::OddFunctions;
use Test;

plan 40;

sub postfix:<!>($n) { [*] 1..$n }

for 1..20 -> $n {
    is Γ($n), ($n - 1)!, "Γ($n) == {$n - 1}!";
}

for 1..20 -> $n {
    is_approx Γ($n.Num), ($n - 1)!, "Γ($n.Num) == {$n - 1}!";
}
