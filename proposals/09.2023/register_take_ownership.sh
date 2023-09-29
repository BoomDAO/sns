quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add custom SNS function for Commit permission of asset canister upgrades";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function take_ownership to Game Launcher asset canister so that the SNS governance canister can give itself permission to commit asset canister upgrades. 
This take_ownership function will be executed via proposal to grant the SNS governance canister Commit permissions.

More info on upgrading asset canisters under SNS control can be found here: https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1000 : nat64;
                name = "Add a new custom SNS function take_ownership";
                description = opt "Add a new custom SNS function to the asset canister";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "awcae-maaaa-aaaam-abmyq-cai"; 
                        target_canister_id = opt principal "awcae-maaaa-aaaam-abmyq-cai"; 
                        validator_method_name = opt "validate_take_ownership"; 
                        target_method_name = opt "take_ownership";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json