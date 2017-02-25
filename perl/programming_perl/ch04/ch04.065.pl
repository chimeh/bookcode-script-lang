for ($user_color_preference) {
    $value = /red/      ?   0xFF0000  :
             /green/    ?   0x00FF00  :
             /blue/     ?   0x0000FF  :
                            0x000000  ;   # black if all fail
}
