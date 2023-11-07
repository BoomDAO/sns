export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade NFT Deployer canister"  \
  --summary "This proposal upgrades the NFT Deployer canister. 
    
Proposed changes, features or fixes : 
1. Modifications to NFT canister code to introduce transaction history so that BOOM DAO projects can validate NFT transfers."  \
  --url "https://boomdao.xyz"  \
  --target-canister-id "j474s-uqaaa-aaaap-abf6q-cai" \
  --wasm-path "./proposals/09.2023/nfts_deployer.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"