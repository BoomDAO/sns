export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade World Deployer canister"  \
  --summary "This proposal upgrades World Deployer canister. 
    Proposed changes, feature and  fixes : 
    1. New Usernode code with new World schema compatibility.
    2. Ability to deploy new world schema to all pre-existing World's."  \
  --url "https://boomdao.xyz"  \
  --target-canister-id "js5r2-paaaa-aaaap-abf7q-cai" \
  --wasm-path "../../../.dfx/stag/canisters/world_deployer/world_deployer.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"