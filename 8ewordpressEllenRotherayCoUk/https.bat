:: pfx bundle is in email (and in source control)
:: password is in secretserver for pfx
:: https://davemateer.com/wordpress/2018/05/31/Wordpress-in-AKS.html
::openssl pkcs12 -in wwwdotquorumlegaldotcodotuk.pfx -nocerts -nodes -out www_quorumlegal_co_uk.key 
::openssl pkcs12 -in wwwdotquorumlegaldotcodotuk.pfx -out www_quorumlegal_co_uk.pem -nodes -nokeys

::kubectl delete secret hoverflylagoons-ssl  
kubectl delete secret quorumlegal-ssl  
::kubectl create secret tls hoverflylagoons-ssl --key www_hoverflylagoons_co_uk.key --cert www_hoverflylagoons_co_uk.pem
kubectl create secret tls quorumlegal-ssl --key www_quorumlegal_co_uk.key --cert www_quorumlegal_co_uk.pem




