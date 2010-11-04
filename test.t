
use Test::Most;

use MiddleManager;
my $m = MiddleManager->new;
is $m->salary("2010-03"), 2010.03, "correctly calculated salary";
throws_ok { $m->salary(123) } qr/FiscalMonth/, "Rejects malformed FiscalMonth";

use Janitor;
my $j = Janitor->new;
throws_ok { $j->salary("2010-11") } qr/Salary must be a positive number/, "Incorrectly calculated salary";

use CEO;
my $c = CEO->new;
throws_ok { $c->salary(10) } qr/FiscalMonth/, "Rejected malformed FiscalMonth";

done_testing;

__END__
ok 1 - correctly calculated salary
ok 2 - Rejects malformed FiscalMonth
ok 3 - Incorrectly calculated salary
ok 4 - Rejected malformed FiscalMonth
1..4
