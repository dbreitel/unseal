echo "unsealling ...."
export VAULT_ADDR=http://127.0.0.1:8200
docker exec -it vault vault operator unseal -address=${VAULT_ADDR} $(grep 'Key 1:' keys.txt | awk '{print $NF}')
docker exec -it vault vault operator unseal -address=${VAULT_ADDR} $(grep 'Key 2:' keys.txt | awk '{print $NF}')
docker exec -it vault vault operator unseal -address=${VAULT_ADDR} $(grep 'Key 3:' keys.txt | awk '{print $NF}')
