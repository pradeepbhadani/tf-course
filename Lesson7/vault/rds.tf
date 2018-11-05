resource "random_id" "snapshot_id" {
  byte_length = 8
}

resource "aws_db_subnet_group" "rds_db_sg" {
  name        = "tfcourse-rds-dbsg"
  subnet_ids  = ["${var.subnets}"]
  description = "TF Course RDS DB Subnet Group"
  tags        = "${var.tags}"
}

resource "aws_rds_cluster" "myrds_cluster" {
  cluster_identifier        = "tfcourse-rds-cluster"
  database_name             = "tfcourse"
  db_subnet_group_name      = "${aws_db_subnet_group.rds_db_sg.name}"
  vpc_security_group_ids    = ["${data.aws_security_group.my_sg.id}"]
  final_snapshot_identifier = "tfcourse-rds-cluster-final-${random_id.snapshot_id.hex}"
  tags                      = "${var.tags}"
  master_username           = "${data.vault_generic_secret.myrds_master_user.data["username"]}"
  master_password           = "${data.vault_generic_secret.myrds_master_user.data["password"]}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_rds_cluster_instance" "myrds_cluster_instance" {
  identifier           = "tfcourse-rds-cluster-instance"
  cluster_identifier   = "${aws_rds_cluster.myrds_cluster.id}"
  instance_class       = "${var.db_instance_class}"
  db_subnet_group_name = "${aws_db_subnet_group.rds_db_sg.name}"
  publicly_accessible  = false
  tags                 = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
