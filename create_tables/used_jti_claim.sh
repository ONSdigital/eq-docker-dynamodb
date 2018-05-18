sleep 5
# Create dev-used-jti-claim table.

aws dynamodb --endpoint http://localhost:8000/ create-table \
	--table-name dev-used-jti-claim \
    --attribute-definitions AttributeName=jti_claim,AttributeType=S \
	--key-schema AttributeName=jti_claim,KeyType=HASH \
	--provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

aws dynamodb --endpoint http://localhost:8000/ list-tables