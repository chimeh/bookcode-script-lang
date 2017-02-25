SWITCH: {
    /^abc/      && do { $abc = 1; last SWITCH };
    /^def/      && do { $def = 1; last SWITCH };
    /^xyz/      && do { $xyz = 1; last SWITCH };
    $nothing = 1;
}
