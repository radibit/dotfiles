#!/usr/bin/env sh

echo ""
echo "####################################"
echo "# Running global setup commands"
echo "####################################"
echo ""

echo "Configuring HTTPS for local development"
# https://letsencrypt.org/docs/certificates-for-localhost/
openssl req -x509 -out localhost.crt -keyout localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")