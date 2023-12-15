export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add a new custom SNS function for upgrading World canisters";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function upgrade_worlds to World Deployer canister of the Game Launcher. 

This upgrade_worlds function will be executed via sns proposal to push latest features, changes and bug fixes to all World canisters, which are directly under control of the World Deployer canister.
";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1100 : nat64;
                name = "Upgrade all World canisters";
                description = opt "Execute upgrade_worlds function in World Deployer to upgrade all World canisters";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "js5r2-paaaa-aaaap-abf7q-cai"; 
                        target_canister_id = opt principal "js5r2-paaaa-aaaap-abf7q-cai"; 
                        validator_method_name = opt "validate_upgrade_worlds"; 
                        target_method_name = opt "upgrade_worlds";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json