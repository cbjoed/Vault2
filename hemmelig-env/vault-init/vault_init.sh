export VAULT_ADDR='http://vault_dev:8200'
export VAULT_TOKEN='00000000-0000-0000-0000-000000000000'

# give some time for Vault to start and be ready
sleep 10

# Insert secrets
vault kv put -mount secret Hemmeligheder Secret=hsduehjrebxbbjklwxp39948788akkkkedlpahheb156512989736363yggs Issuer=DBKongerne

# Loop forever to prevent container from terminating

while :
do
	sleep 3600
done