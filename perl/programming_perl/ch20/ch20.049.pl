Input: 2+2
2+2 produces [Normal Result] 4
Input: `ls -l`
`ls -l` produces [Security Violation]: 'quoted execution (``, qx)' 
trapped by operation mask
Input: use LWP::Simple; getprint('http://www.perl.org')
use LWP::Simple; getprint('http://www.perl.org') produces [Security Violation]: 
'require' trapped by operation mask
Input: 1/137
1/137 produces [Normal Result] 0.0072992700729927
