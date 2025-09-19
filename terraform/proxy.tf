resource "docker_container" "proxy" {
    name = "nginx_proxy"
    image = "nginx:stable-perl"

    networks_advanced {
        name = docker_network.labnet.name
    }
}