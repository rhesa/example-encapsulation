package Types;

use MooseX::Types -declare => [qw( Salary FiscalMonth )];
use MooseX::Types::Moose qw(Num Str);

subtype Salary,
    as Num,
    where { $_ > 0 },
    message { "Salary must be a positive number" };

subtype FiscalMonth,
    as Str,
    where { /^\d{4}-\d{2}$/ },
    message { "Fiscal month looks like ####-##" };

1;

