ui = {{cfg.server.ui}}

storage "{{cfg.backend.storage}}" {
  path = "{{pkg.svc_data_path}}/{{cfg.backend.path}}"
}

listener "{{cfg.listener.type}}" {
  address = "{{cfg.listener.location}}:{{cfg.listener.port}}"
  tls_disable = "{{cfg.listener.tls_disable}}"{{#unless cfg.listener.tls_disable}}
  tls_cert_file = "{{cfg.listener.cert_file}}"
  tls_key_file = "{{cfg.listener.key_file}}"
  {{/unless}}
}
