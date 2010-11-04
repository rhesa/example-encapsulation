use MooseX::Declare;

class Janitor with Employee {
    use Types qw(FiscalMonth Salary);
    method _salary (FiscalMonth $month) returns (Salary) {
        return "None";
    }
}
