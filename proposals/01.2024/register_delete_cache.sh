export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add a new custom SNS function in WorldHub";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function delete_cache to WorldHub canister of World Protocol. 

This delete_cache function will be executed via SNS proposal to clean the current user ids cached in the World Hub and re-add any necessary users in the World Protocol.
";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1300 : nat64;
                name = "Delete cache in the WorldHub canister";
                description = opt "Execute delete_cache function in WorldHub canister";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "j362g-ziaaa-aaaap-abf6a-cai"; 
                        target_canister_id = opt principal "j362g-ziaaa-aaaap-abf6a-cai"; 
                        validator_method_name = opt "validate_delete_cache"; 
                        target_method_name = opt "delete_cache";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json