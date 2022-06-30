my $input = "input.txt".IO.slurp;
say "Part 1: ", $input.indices("(").elems - $input.indices(")").elems;

for $input.comb -> $c {
    state $i = 0;
    state $y = 0;

    if $y == -1 {
        say "Part 2: ", $i;
        last;
    }

    $y++ if $c eq "(";
    $y-- if $c eq ")";
    $i++;
}
