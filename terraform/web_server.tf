resource "docker_container" "app_1" {
    name = "app1"
    image = "hashicorp/http-echo:1.0"

    command = [
        "-text", "Hola Mundo desde app_1"
    ]

    networks_advanced {
      name = docker_network.labnet.name
    }
}

resource "docker_container" "app_2" {
    name = "app2"
    image = "hashicorp/http-echo:1.0"

    command = [
        "-text", "Hola Mundo desde app_2"
    ]

    networks_advanced {
      name = docker_network.labnet.name
    }
}

resource "docker_container" "app_3" {
    name = "app3"
    image = "hashicorp/http-echo:1.0"

    command = [
        "-text", "Hola Mundo desde app_3"
    ]

    networks_advanced {
      name = docker_network.labnet.name
    }
}

resource "docker_network" "labnet" {
  name = "labnet"  
}