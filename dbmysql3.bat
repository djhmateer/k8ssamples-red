call az group create -n amysql3 -l westeurope
call az mysql server create -l westeurope -g amysql3 -n davemysql3 -u dave -p SECRET --sku-name B_Gen5_1

call az mysql db create -g amysql3 -s davemysql3 -n wordpress

call az mysql server firewall-rule create --resource-group amysql3 --server davemysql3 --name "AllowAllWindowsAzureIps" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0

call az mysql server update --resource-group amysql3 --name davemysql3 --ssl-enforcement Disabled

kubectl create secret generic mysql-pass --from-literal=password=SECRET

