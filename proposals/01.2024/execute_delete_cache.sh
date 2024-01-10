export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "()")"
quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Execute delete_cache function in WorldHub canister\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes the generic function **delete_cache** in the WorldHub canister, which will clean the current user ids cached in the World Hub and re-add any necessary users in the World Protocol.

More information about the details of this upgrade to the World Protocol can be found here: https://docs.boomdao.xyz/release-notes\";
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1300:nat64; 
                payload = ${BLOB}
            }
        }    
    }
)" > message.json   

quill send message.json