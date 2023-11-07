export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json  --pem-file ${PEM_FILE}  make-upgrade-canister-proposal \
  --title "Upgrade World Deployer canister"  \
  --summary "This proposal upgrades the World Deployer canister. 
    
Proposed changes, features or fixes : 
1. Upgrade the World version that the World Deployer uses.
2. World version has new code upgrades for On-Chain Leaderboard Roadmap Milestone.
3. World version now contains a refactor which contains handling and verification of ICP, ICRC tokens and NFT's. The PaymentHub is now deprecated.
4. World version refactored code with improved handling of actions and configs making it easier for developers.
5. World Deployer contains new enhanced wasm management for World canisters.
"  \
  --url "https://boomdao.xyz"  \
  --target-canister-id "js5r2-paaaa-aaaap-abf7q-cai" \
  --wasm-path "./proposals/09.2023/world_deployer.wasm" \
  --canister-upgrade-arg "(record {})" \
    ${DEVELOPER_NEURON_ID} > "message.json"

quill send "message.json"