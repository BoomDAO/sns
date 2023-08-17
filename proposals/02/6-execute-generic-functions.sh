export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export PEM_FILE="/Users/jarvis/.config/dfx/identity/$(dfx identity whoami)/identity.pem"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(record { title=\"Execute generic functions.\"; url=\"https://boomdao/xyz\"; summary=\"This proposal executes generic functions.\"; action=opt variant {ExecuteGenericNervousSystemFunction = record {function_id=1001:nat64; payload=blob \"DIDL\01l\02\b9\fa\ee\18y\b5\f6\a1Cy\01\00\02\00\00\00\03\00\00\00\"}}})" $DEVELOPER_NEURON_ID > execute-generic-functions.json

quill send execute-generic-functions.json