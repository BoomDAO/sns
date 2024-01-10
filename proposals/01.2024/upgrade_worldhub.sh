export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade WorldHub canister"  \
  --summary "This proposal upgrades the WorldHub canister of the World Protocol.

Proposed changes, features or fixes : 
1. Upgrade WorldHub canister endpoints to support addition of new generic functions." \
  --url "https://boomdao.xyz"  \
  --target-canister-id "j362g-ziaaa-aaaap-abf6a-cai" \
  --wasm-path "./proposals/01.2024/WorldHub.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"