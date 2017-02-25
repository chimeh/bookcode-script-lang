%EXPORT_TAGS = (foo => [qw(aa bb cc)], bar => [qw(aa cc dd)]);

Exporter::export_tags("foo");     # add aa, bb and cc to @EXPORT
Exporter::export_ok_tags("bar");  # add aa, cc and dd to @EXPORT_OK
