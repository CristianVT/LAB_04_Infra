resource "docker_container" "app" {
    name = "app"
    image = "hashicorp/http-echo:1.0"

    command = [
        "-text", "Hola Mundo desde app"
    ]

    networks_advanced {
      name = docker_network.labnet.name
    }

    ports {
      internal = 80
      external = 8084
    }
}

resource "docker_network" "labnet" {
  name = "labnet"  
}