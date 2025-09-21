resource "docker_container" "proxy" {
    name = "nginx_proxy"
    image = "nginx:stable-perl"

    networks_advanced {
        name = docker_network.labnet.name
    }

    volumes {
        host_path      = abspath("${path.module}/../host_volumenes/nginx.conf")
        container_path = "/etc/nginx/conf.d"
        read_only      = false
    }

    volumes {
        host_path      = abspath("${path.module}/../host_volumenes/web")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }
}

