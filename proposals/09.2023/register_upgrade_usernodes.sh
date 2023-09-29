export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add a new custom SNS function for upgrading UserNode canisters";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function upgrade_usernodes to WorldHub canister of the World Protocol. 
        This upgrade_usernodes function will be executed via sns proposal to push latest features, changes and bug fixes to all UserNode canisters, which are directly under control of the WorldHub canister.";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1002 : nat64;
                name = "Add a new custom SNS function upgrade_usernodes";
                description = opt "Add a new custom SNS function to the WorldHub canister";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "j362g-ziaaa-aaaap-abf6a-cai"; 
                        target_canister_id = opt principal "j362g-ziaaa-aaaap-abf6a-cai"; 
                        validator_method_name = opt "validate_upgrade_usernodes"; 
                        target_method_name = opt "upgrade_usernodes";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json