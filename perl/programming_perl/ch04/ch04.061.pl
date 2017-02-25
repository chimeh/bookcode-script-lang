SWITCH: {
    if (/^abc/) { $abc = 1; last SWITCH }
    if (/^def/) { $def = 1; last SWITCH }
    if (/^xyz/) { $xyz = 1; last SWITCH }
    $nothing = 1;
}
