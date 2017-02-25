package ClipByte;

 use overload "+" => \&clip_add,
              "-" => \&clip_sub;

 sub new {
     my $class = shift;
     my $value = shift;
     return bless \$value => $class;
 }

 sub clip_add {
     my ($x, $y) = @_;
     my ($value) = ref($x) ? $$x : $x;
     $value     += ref($y) ? $$y : $y;
     $value = 255 if $value > 255;
     $value =   0 if $value < 0;
     return bless \$value => ref($x);
 }

 sub clip_sub {
     my ($x, $y, $swap) = @_;
     my ($value) = (ref $x) ? $$x : $x;
     $value     -= (ref $y) ? $$y : $y;
     if ($swap) { $value = -$value }
     $value = 255 if $value > 255;
     $value =   0 if $value < 0;
     return bless \$value => ref($x);
 }

 package main;

 $byte1 = ClipByte->new(200);
 $byte2 = ClipByte->new(100);

 $byte3 = $byte1 + $byte2;    # 255
 $byte4 = $byte1 - $byte2;    # 100
 $byte5 = 150 - $byte2;       # 50
