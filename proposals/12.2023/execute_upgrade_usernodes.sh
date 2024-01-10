export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(1701892906977837274 : int)")"
quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Execute upgrade_usernodes function in WorldHub canister to upgrade UserNode canisters\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes the generic function **upgrade_usernodes** in the WorldHub canister, which will programmatically upgrade all the existing UserNode canisters to the latest WASM version. This will make UserNode canisters compatible with the latest version of World and WorldHub canisters. 

More information about the details of this upgrade to the World Protocol can be found here: https://docs.boomdao.xyz/release-notes\";
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1002:nat64; 
                payload = ${BLOB}
            }
        }    
    }
)" > message.json   

quill send message.json