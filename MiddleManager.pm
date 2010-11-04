use MooseX::Declare;

class MiddleManager with Employee {
    use Types qw(FiscalMonth Salary);
    method _salary (FiscalMonth $month) returns (Salary) {
        my $s = $month;
        $s =~ s/-/./;
        return $s;
    }
}
