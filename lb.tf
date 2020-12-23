# Load-Balancer, AWS ELB classic  as we terminate SSL
# on instance and no need for new features of ALB
resource "aws_elb" "mirror_lb" {
  name = "ag-clb-${var.site_record}"

  security_groups = ["${module.vpc_aws.elb_security_group_id}"]
  subnets         = ["${module.vpc_aws.subnet_id}"]

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 10
    timeout             = 10
    target              = "TCP:80"
    interval            = 30
  }

  listener {
    lb_port           = "443"
    lb_protocol       = "tcp"
    instance_port     = "443"
    instance_protocol = "tcp"
  }
  listener {
    lb_port           = "80"
    lb_protocol       = "tcp"
    instance_port     = "80"
    instance_protocol = "tcp"
  }

  instances                   = module.nginxweb.id
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    "Name"      = "ag-test",
  }
}
