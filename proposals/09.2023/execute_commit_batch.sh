export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(record { batch_id = 15 : nat; evidence = blob \"\9e\03\da\76\93\30\d5\b7\91\4d\dc\13\2f\8f\ca\88\09\44\4d\71\85\c5\c4\26\cf\e5\19\63\d4\cb\8f\df\";})")"

quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Commit changes to Game Launcher Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic function commit_proposed_batch on Game Launcher Asset canister. 

Proposed batch includes BOOM GAMING GUILD V1.

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