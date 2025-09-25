resource "docker_container" "proxy" {
    name = "nginx_proxy"
    image = "nginx:stable-perl"

    networks_advanced {
        name = docker_network.labnet.name
    }

    ports {
        internal = 80
        external = 4000
    }

    volumes {
        host_path      = abspath("${path.module}/../host_volumenes/nginx_conf")
        container_path = "/etc/nginx/conf.d"
        read_only      = false
    }

    volumes {
        host_path      = abspath("${path.module}/../host_volumenes/web")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }
}

