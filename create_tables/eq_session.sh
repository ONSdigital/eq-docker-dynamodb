sleep 5
# Create dev-eq-session table.

aws dynamodb --endpoint http://localhost:8000/ create-table \
	--table-name dev-eq-session \
    --attribute-definitions AttributeName=eq_session_id,AttributeType=S \
	--key-schema AttributeName=eq_session_id,KeyType=HASH \
	--provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

aws dynamodb --endpoint http://localhost:8000/ list-tables