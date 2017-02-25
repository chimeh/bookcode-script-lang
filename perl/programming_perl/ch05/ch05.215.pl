$word_rx = qr{    (?&one_word)
  (?(DEFINE)
    (?<a_letter>        (?= [\p{Alphabetic}\p{Digit}] ) \X          )
    (?<some_letters>    (?: (?&a_letter) | (?&tick) | (?&dash) ) +  )
    (?<tick>            ['\N{RIGHT SINGLE QUOTATION MARK}]          )
    (?<dash>            (?= [^\N{EM DASH}] ) \p{dash}               )
    (?<one_word>
        \b
        (?= (?&a_letter) )
        (?&some_letters)
        (?! (?&a_letter)
          | (?&dash)
        )
    )
  ) # end define block
}x;
