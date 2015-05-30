#!/usr/bin/perl -w

use strict;

my $base = 6*6 + 5 + 6*7*3 + 8*3*7*2 + 3*3*2*2*2*7 * 4;
my $step = 8*7*9*5;
my $d;

for $d (-5 .. 5)
{
    my $num = $base + $step * $d;
    for my $i (2 .. 10)
    {
        my $rem = $num % $i;
        print "$num % $i == $rem\n";
        if ($rem != ($i-1))
        {
            die "No way, Jose!";
        }
    }
}
1;

