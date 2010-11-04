use MooseX::Declare;

role Employee {
    use Types qw(FiscalMonth Salary);
    requires '_salary';
    method salary (FiscalMonth $month) returns (Salary) {
        return $self->_salary($month);
    }
}

