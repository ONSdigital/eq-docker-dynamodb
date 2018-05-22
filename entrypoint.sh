#!/bin/bash

sh /root/create_tables/submitted_responses.sh \
& /root/create_tables/questionnaire_state.sh \
& /root/create_tables/eq_session.sh \
& /root/create_tables/used_jti_claim.sh \
& java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
