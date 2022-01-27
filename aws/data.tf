data "aws_ami" "nodes" {
  owners      = [var.ami_owner_id]
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

data "template_file" "init_script" {
  template = file("${path.module}/resources/init.sh")

  vars = {
    docker_compose_conf     = file("${path.module}/resources/docker-compose.yml")
    KCLK_PROXY_WEB_PORT     = var.kclk_web_port
    KCLK_PROXY_WS_PORT      = var.kclk_ws_port
    KCLK_POSTGRES_DB        = var.kclk_postgres_db
    KCLK_POSTGRES_USER      = var.kclk_postgres_user
    KCLK_POSTGRES_PASSWORD  = var.kclk_postgres_pwd
    KCLK_USER               = var.kclk_user
    KCLK_PASSWORD           = var.kclk_pwd
  }
}

data "template_cloudinit_config" "init" {
  part {
    filename     = "init.sh"
    content_type = "text/x-shellscript"
    content      = data.template_file.init_script.rendered
  }
}
