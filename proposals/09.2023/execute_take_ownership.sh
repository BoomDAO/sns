export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "()")"
quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Execute generic functions for Game Launcher Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic functions take_ownership for Game Launcher Asset canister, for clearing all permissions of SNS asset canister and granting only the SNS Governance canister Commit permissions over SNS asset canister. 
        For more information check https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister#listing-permissions .\"; 
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1000:nat64; 
                payload = ${BLOB};
            }
        }    
    }
)" > message.json

quill send message.json