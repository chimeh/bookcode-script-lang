given($foo) {
    when (/x/) { say '$foo contains an x'; continue }
    say "I always get here.";
    when (/y/) { say '$foo contains a y'            }
    default    { say '$foo does not contain a y'    }
}
