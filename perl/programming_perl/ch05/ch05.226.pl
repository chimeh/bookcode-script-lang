{
  "" => "C<B<nested>>",
  "podtag" => {
    "" => "C<B<nested>>",
    "capital" => "C",
    "either" => {
      "" => "<B<nested>>",
      "balanced" => {
        "" => "<B<nested>>",
        "contents" => {
          "" => "B<nested>",
          "podtag" => [
            {
              "" => "B<nested>",
              "capital" => "B",
              "either" => {
                "" => "<nested>",
                "balanced" => {
                  "" => "<nested>",
                  "contents" => { "" => "nested", "unangle" => ["nested"] },
                },
              },
            },
          ],
        },
      },
    },
  },
}
{
  "" => "I<< N<inside>un>tag >>",
  "podtag" => {
    "" => "I<< N<inside>un>tag >>",
    "capital" => "I",
    "either" => {
      "" => "<< N<inside>un>tag >>",
      "mirrored" => {
        "" => "<< N<inside>un>tag >>",
        "open" => "<<",
        "podtag" => {
          "" => "N<inside>",
          "capital" => "N",
          "either" => {
            "" => "<inside>",
            "balanced" => {
              "" => "<inside>",
              "contents" => { "" => "inside", "unangle" => ["inside"] },
            },
          },
        },
      },
    },
  },
}
{
  "" => "X<indexed>",
  "podtag" => {
    "" => "X<indexed>",
    "capital" => "X",
    "either" => {
      "" => "<indexed>",
      "balanced" => {
        "" => "<indexed>",
        "contents" => { "" => "indexed", "unangle" => ["indexed"] },
      },
    },
  },
} 
