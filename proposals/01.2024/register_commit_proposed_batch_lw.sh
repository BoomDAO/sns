export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal '(
    record {
        title = "Add a new custom SNS function for asset canister upgrades";          
        url = "https://boomdao.xyz/";        
        summary = "Adding custom function **commit_proposed_batch** to Login Webpage asset canister. 
        This **commit_proposed_batch** function will be executed via proposal to commit changes to the Login Webpage asset canister.

        For more information regarding SNS Asset canisters upgrade, check here : https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister";
        action = opt variant {
            AddGenericNervousSystemFunction = record {
                id = 1200 : nat64;
                name = "Login Webpage asset canister function commit_proposed_batch";
                description = opt "Call commit_proposed_batch function to commit changes to upgrade Login Webpage asset canister";
                function_type = opt variant { 
                    GenericNervousSystemFunction = record { 
                        validator_canister_id = opt principal "7p3gx-jaaaa-aaaal-acbda-cai"; 
                        target_canister_id = opt principal "7p3gx-jaaaa-aaaal-acbda-cai"; 
                        validator_method_name = opt "validate_commit_proposed_batch"; 
                        target_method_name = opt "commit_proposed_batch";
                    } 
                };
            }
        };
    }
)' > message.json

quill send message.json