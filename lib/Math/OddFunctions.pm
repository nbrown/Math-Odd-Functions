use v6;
use NativeCall;

# libSystem should maybe be libm on Linux?

sub erf(num) returns num is native(Str)  { * }
sub error-function(Real $a) is export { erf(num.new($a.Num)) }

sub erfc(num) returns num is native(Str)  { * }
sub complementary-error-function(Real $a) is export { erfc(num.new($a.Num)) }

sub tgamma(num) returns num is native(Str)  { * }
multi Γ(Real $a) is export { $a == 0 ?? NaN !! tgamma(num.new($a.Num)) }
multi Γ(Int $a) is export {
    given $a {
        when * < 1 { NaN }
        when * < 13 { tgamma(num.new($a.Num)).round }
        default { [*] 1..($a - 1) }
    }
}

sub lgamma(num) returns num is native(Str)  { * }
multi logΓ(Real $a) is export { $a == 0 ?? NaN !! lgamma(num.new($a.Num)) }
