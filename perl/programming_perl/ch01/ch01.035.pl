 1  #!/usr/bin/perl
 2  use v5.14;
 3
 4  open(GRADES, "<:utf8", "grades")  || die "Can't open grades: $!\n";
 5  binmode(STDOUT, ':utf8');
 6
 7  my %grades;
 8  while (my $line = <GRADES>) {
 9      my ($student, $grade) = split(" ", $line);
10      $grades{$student} .= $grade . " ";
11  }
12
13  for my $student (sort keys %grades) {
14      my $scores = 0;
15      my $total = 0;
16      my @grades = split(" ", $grades{$student});
17      for my $grade (@grades) {
18          $total += $grade;
19          $scores++;
20      }
21      my $average = $total / $scores;
22      print "$student: $grades{$student}\tAverage: $average\n";
23  }
