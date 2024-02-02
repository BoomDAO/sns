export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(record { batch_id = 14 : nat; evidence = blob \"\69\c7\39\18\56\72\7f\ba\9b\65\39\b5\f4\e3\a1\92\c5\87\62\ea\86\aa\cc\61\b4\98\7b\ef\a9\28\98\a4\";})")"

quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Commit changes to Game Launcher Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic function commit_proposed_batch on Game Launcher Asset canister. 

Proposed batch includes version bump for packages and fixes to resolve UI bugs in Game Launcher.

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