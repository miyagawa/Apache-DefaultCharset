use strict;
use Apache::Test;
use Apache::TestRequest;

plan tests => 2, have_lwp;

{
    my $body = GET_BODY "/euc-jp/index.html";
    ok($body, qr/charset:euc-jp/);
}

{
    my $body = GET_BODY "/utf-8/index.html";
    ok($body, qr/charset:utf-8/);
}

