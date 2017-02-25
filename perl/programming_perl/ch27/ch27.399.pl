undef $foo;
undef $bar{"blurfl"};   # Different from delete $bar{"blurfl"};
undef @ary;
undef %hash;
undef &mysub;
undef *xyz;             # destroys $xyz, @xyz, %xyz, &xyz, etc.
