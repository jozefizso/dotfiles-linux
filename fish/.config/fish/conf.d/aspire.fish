set -l aspnet_dev_certs_trust_dir "$HOME/.aspnet/dev-certs/trust"
set -l default_ssl_cert_dir "/usr/lib/ssl/certs"

if test -z "$SSL_CERT_DIR"
    set -gx SSL_CERT_DIR "$default_ssl_cert_dir:$aspnet_dev_certs_trust_dir"
else if not contains -- $aspnet_dev_certs_trust_dir (string split : -- "$SSL_CERT_DIR")
    set -gx SSL_CERT_DIR "$SSL_CERT_DIR:$aspnet_dev_certs_trust_dir"
end
