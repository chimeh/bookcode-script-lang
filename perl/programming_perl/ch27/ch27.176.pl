@keys   = keys   %ENV;    # keys are in the same order as
@values = values %ENV;    # values, as this demonstrates
while (@keys) {
    say pop(@keys), "=", pop(@values);
}
