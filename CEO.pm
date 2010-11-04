use MooseX::Declare;

class CEO with Employee {
    method _salary ($bonus) {
        return 1e6 + $bonus;
    }
}
