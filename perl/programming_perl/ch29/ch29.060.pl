package Number;
use overload "+" => \&myadd,
             "-" => \&mysub,
            "*=" => "multiply_by";
