sleep 5
# Create dev-submitted-responses table.

aws dynamodb --endpoint http://localhost:8000/ create-table \
	--table-name dev-submitted-responses \
    --attribute-definitions AttributeName=tx_id,AttributeType=S \
	--key-schema AttributeName=tx_id,KeyType=HASH \
	--provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

aws dynamodb --endpoint http://localhost:8000/ list-tables