export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade WorldHub canister"  \
  --summary "This proposal upgrades the WorldHub canister of World Protocol. 
    Proposed changes, features or fixes : 
    1. Bug fix in **upgrade_usernodes** SNS custom endpoint." \
  --url "https://boomdao.xyz"  \
  --target-canister-id "j362g-ziaaa-aaaap-abf6a-cai" \
  --wasm-path "WorldHub.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"