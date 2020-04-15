output "fester_service_port" {
  value = kubernetes_service.fester.spec[0].port[0].port
}

output "fester_service_name" {
  value = kubernetes_service.fester.metadata[0].name
}
