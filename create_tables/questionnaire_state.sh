sleep 5
# Create dev-questionnaire-state table.

aws dynamodb --endpoint http://localhost:8000/ create-table \
	--table-name dev-questionnaire-state \
    --attribute-definitions AttributeName=user_id,AttributeType=S \
	--key-schema AttributeName=user_id,KeyType=HASH \
	--provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

aws dynamodb --endpoint http://localhost:8000/ list-tables