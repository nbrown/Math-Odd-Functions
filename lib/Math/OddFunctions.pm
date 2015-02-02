use v6;
use NativeCall;

# libSystem should maybe be libm on Linux?

sub erf(num) returns num is native('libSystem')  { * }
sub error-function(Real $a) is export { erf(num.new($a.Num)) }

sub erfc(num) returns num is native('libSystem')  { * }
sub complementary-error-function(Real $a) is export { erfc(num.new($a.Num)) }

sub tgamma(num) returns num is native('libSystem')  { * }
multi Γ(Real $a) is export { $a == 0 ?? NaN !! tgamma(num.new($a.Num)) }
multi Γ(Int $a) is export {
    given $a {
        when * < 1 { NaN }
        when * < 13 { tgamma(num.new($a.Num)).Int }
        default { [*] 1..($a - 1) }
    }
}
