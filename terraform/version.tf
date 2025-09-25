// Definición del proveedor Docker
terraform {
    required_providers {
      docker = {
        source = "kreuzwerker/docker"
        version = "3.6.2"
      }
    }
}

provider "docker" {
  
}
/*
// Imagen de Nginx para tres aplicaciones diferentes
// app1
resource "docker_container" "nginx-app1" {
  name  = "nginx-app1"
  image = "nginx:stable-perl"

  ports {
    internal = 80
    external = 8081
  }
}

// app2
resource "docker_container" "nginx-app2" {
  name  = "nginx-app2"
  image = "nginx:stable-perl"

  ports {
    internal = 80
    external = 8082
  }
}

// app3
resource "docker_container" "nginx-app3" {
  name  = "nginx-app3"
  image = "nginx:stable-perl"

  ports {
    internal = 80
    external = 8083
  }
}

// Imagen de Redis
resource "docker_container" "redis" {
  name = "redis"
  image = "redis:8.2.1-bookworm"

  ports {
    internal = 6379
    external = 6379
  }
}

// Imagen de PostgreSQL
resource "docker_container" "postgres" {
  name  = "postgres"
  image = "postgres:18rc1"

  env = [
    "POSTGRES_USER=upao",
    "POSTGRES_PASSWORD=grupo3",
    "POSTGRES_DB=infra",
  ]

  ports {
    internal = 5432
    external = 5432
  }
}

// Imagen de Grafana
resource "docker_container" "grafana" {
  name = "grafana"
  image = "grafana/grafana:12.3.0-17814087142"

  ports {
    internal = 3000
    external = 3000
  }
}
*/