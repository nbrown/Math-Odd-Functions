use v6;
use NativeCall;

sub erf(num) returns num is native('libSystem')  { * }
sub error-function(Real $a) is export { erf(num.new($a.Num)) }