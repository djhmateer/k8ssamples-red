:: go to dnsimple and download the .key and .pem file from the Nginx section
:: https://dnsimple.com/a/63829/domains/hoverflylagoons.co.uk/ssl_certificates
:: easy way is to delete the pod to kickstart it picking up the new ssl cert but it is the ingress controll
:: so may not need to do that

call kubectl delete secret hoverflylagoons-ssl
call kubectl create secret tls hoverflylagoons-ssl --key www_hoverflylagoons_co_uk.key --cert www_hoverflylagoons_co_uk.pem
