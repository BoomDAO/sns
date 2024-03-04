export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(record { batch_id = 6 : nat; evidence = blob \"\d5\af\46\e6\17\b9\71\d0\ee\a9\7d\8f\d5\73\b4\f1\2b\3c\f9\68\c8\aa\89\0b\ab\f7\3e\9d\af\24\c3\af\";})")"

quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Commit changes to Login Webpage Asset Canister.\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes generic function commit_proposed_batch on Login Webpage Asset canister. 

Proposed batch includes new NFID interface and version bump for packages in Login Webpage.

For more information check https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister#submitting-an-sns-proposal-and-upgrading-an-asset-canister .
\"; 
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1200:nat64; 
                payload = ${BLOB};
            }
        }    
    }
)" > message.json

quill send message.json