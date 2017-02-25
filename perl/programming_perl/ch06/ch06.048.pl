@collated_text = sort {

    primary($a)    <=>   primary($b)
                    ||
    secondary($a)  <=>   secondary($b)
                    ||
    tertiary($a)   <=>   tertiary($b)
                    ||
    quaternary($a) <=>   quaternary($b)

} @random_text;
