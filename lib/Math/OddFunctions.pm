use v6;
use NativeCall;

# libSystem should maybe be libm on Linux?

sub erf(num) returns num is native('libSystem')  { * }
sub error-function(Real $a) is export { erf(num.new($a.Num)) }

sub erfc(num) returns num is native('libSystem')  { * }
sub complementary-error-function(Real $a) is export { erfc(num.new($a.Num)) }