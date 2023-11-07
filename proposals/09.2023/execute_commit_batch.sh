export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(record { batch_id = 12 : nat; evidence = blob \"\11\13\1f\90\e9\ce\c0\da\22\a8\a0\77\af\2c\b7\4a\88\2a\d7\84\9c\27\11\18\83\68\92\67\a7\6c\37\5c\";})")"

quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Commit changes to Game Launcher Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic function commit_proposed_batch on Game Launcher Asset canister. 

Proposed batch includes UX fix for upgrading World canister using Game Launcher frontend feature.

For more information check https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister#submitting-an-sns-proposal-and-upgrading-an-asset-canister .
\"; 
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1010:nat64; 
                payload = ${BLOB};
            }
        }    
    }
)" > message.json

quill send message.json