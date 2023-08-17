export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export PEM_FILE="/Users/jarvis/.config/dfx/identity/$(dfx identity whoami)/identity.pem"
export CID=$(dfx canister --network ic id WorldHub) # Change Canister Name accordingly

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-upgrade-canister-proposal --summary "This proposal upgrades worldHub canister." --title "Upgrade worldHub canister." --url "https://boomdao.xyz" --target-canister-id $CID --wasm-path "./.dfx/local/canisters/worldHub/worldHub.wasm" $DEVELOPER_NEURON_ID > upgrade.json
quill send upgrade.json | grep -v "^ *new_canister_wasm"