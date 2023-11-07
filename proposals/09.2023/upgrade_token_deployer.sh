export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade Token Deployer canister"  \
  --summary "This proposal upgrades the Token Deployer canister. 
    
Proposed changes, features or fixes : 
1. Minor tweaks to the ICRC-3 canister code to be compatible with the ICRC code used by SNS tokens.
2. Added functionality for ICRC transaction history to enable BOOM DAO projects to validate ICRC transfers."  \
  --url "https://boomdao.xyz"  \
  --target-canister-id "jv4xo-cyaaa-aaaap-abf7a-cai" \
  --wasm-path "./proposals/09.2023/token_deployer.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"