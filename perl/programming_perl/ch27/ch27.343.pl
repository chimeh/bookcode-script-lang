@graphs = grep { length } split /(\X)/, $word;
@graphs = $word =~ /\X/g;
