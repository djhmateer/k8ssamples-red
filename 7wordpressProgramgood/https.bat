:: go to dnsimple and download the .key and .pem file from the Nginx section
kubectl create secret tls programgood-ssl --key www_programgood_net.key --cert www_programgood_net.pem

