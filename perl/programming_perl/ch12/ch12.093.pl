use v5.14;

package Stables 1.01 {
    use Moose;

    has "animals" => (
        traits  => ["Array"],
        is      => "rw",
        isa     => "ArrayRef[Animal]",
        default => sub { [] },
        handles => {
            add_animal  => "push",
            add_animals => "push",
        },
    );

    sub roll_call {
        my($self) = @_;

        for my $animal ($self->animals) {
            say "Some ", $animal->type,
                " named ", $animal->name,
                " is in the stable";
        }
    }

}

package Animal 1.01 {
    use Moose;

    has "name" => (
        is       => "rw",
        isa      => "Str",
        required => 1,
    );

    has "type" => (
        is      => "rw",
        isa     => "Str",
        default => "animal",
    );

}

my $stables = Stables->new;

$stables->add_animal(
    Animal->new(name => "Mr. Ed", type => "horse")
);

$stables->add_animals(
    Animal->new(name => "Donkey",   type => "donkey"),
    Animal->new(name => "Lampwick", type => "donkey"),
    Animal->new(name => "Trigger",  type => "horse" ),
);

$stables->roll_call;
