export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(record { batch_id = 17 : nat; evidence = blob \"\4f\96\22\98\80\d8\28\2a\f8\10\e5\84\33\7c\34\58\ad\f6\71\fe\82\3c\93\4d\fc\f8\71\39\6c\f1\05\f1\";})")"

quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Commit changes to Game Launcher Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic function commit_proposed_batch on Game Launcher Asset canister. 

Proposed batch includes UI/UX fixes.

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