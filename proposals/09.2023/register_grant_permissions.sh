quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add a new custom SNS function";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function grant_permission to Game Launcher asset canister. 
        This grant_permission function will be executed via proposal to grant SNS governance canister commit permissions.";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1000 : nat64;
                name = "Add a new custom SNS function grant_permission";
                description = opt "Add a new custom SNS function to the asset canister";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "awcae-maaaa-aaaam-abmyq-cai"; 
                        target_canister_id = opt principal "awcae-maaaa-aaaam-abmyq-cai"; 
                        validator_method_name = opt "validate_grant_permission"; 
                        target_method_name = opt "grant_permission";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json