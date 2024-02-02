export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export BLOB="$(didc encode --format blob "(1706881086834683041 : int)")"
quill sns  --canister-ids-file ./sns_canister_ids.json  --pem-file $PEM_FILE  make-proposal $DEVELOPER_NEURON_ID --proposal "(
    record { 
        title = \"Execute upgrade_worlds function in World Deployer canister to upgrade World canisters\"; 
        url = \"https://boomdao.xyz\"; 
        summary = \"This proposal executes the generic function upgrade_worlds in the World Deployer canister, which will programmatically upgrade all the existing World canisters to the latest WASM version. This will make all old World canisters compatible with the latest version of WorldHub and UserNode canisters. 

More information about the details of this upgrade to the World Protocol can be found here: https://docs.boomdao.xyz/release-notes\";
        action = opt variant {
            ExecuteGenericNervousSystemFunction = record {
                function_id = 1100:nat64; 
                payload = ${BLOB}
            }
        }    
    }
)" > message.json   

quill send message.json