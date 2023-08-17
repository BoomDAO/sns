export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export CID=""

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(record { title=\"Register generic functions.\"; url=\"https://boomdao/xyz\"; summary=\"This proposals registers generic functions.\"; action=opt variant {AddGenericNervousSystemFunction = record {id=1001:nat64; name=\"upgradeUserNodes\"; description=null; function_type=opt variant {GenericNervousSystemFunction=record{validator_canister_id=opt principal\"$CID\"; target_canister_id=opt principal\"$CID\"; validator_method_name=opt\"validate\"; target_method_name=opt\"execute\"}}}}})" $DEVELOPER_NEURON_ID > register-generic-functions.json

quill send register-generic-functions.json