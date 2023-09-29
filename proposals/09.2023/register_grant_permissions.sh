quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add custom SNS function for asset canister upgrades";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function grant_permission to the Game Launcher asset canister so that the SNS can grant permissions to principals to prepare asset canister upgrades. 
        This grant_permission function will be executed via proposal by SNS governance canister to grant Prepare permissions to principals.
        More info on upgrading asset canisters under SNS control can be found here: https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1001 : nat64;
                name = "SNS Asset canister function grant_permission";
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