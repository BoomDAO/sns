export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export PEM_FILE="/Users/jarvis/.config/dfx/identity/$(dfx identity whoami)/identity.pem"
export CID1="$(dfx canister --network ic id PaymentHub)"
export CID2="$(dfx canister --network ic id StakingHub)"
export CID3="$(dfx canister --network ic id WorldHub)"
export CID4="$(dfx canister --network ic id game-launcher)"
export CID5="$(dfx canister --network ic id game_deployer)"
export CID6="$(dfx canister --network ic id login-webpage)"
export CID7="$(dfx canister --network ic id nfts_deployer)"
export CID8="$(dfx canister --network ic id token_deployer)"
export CID9="$(dfx canister --network ic id world_deployer)"
quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(record { title=\"Register dapp's canisters with SNS.\"; url=\"https://boomdao.xyz/\"; summary=\"This proposal registers dapp's canisters with SNS.\"; action=opt variant {RegisterDappCanisters = record {canister_ids=vec {principal\"$CID1\";principal\"$CID2\";principal\"$CID3\";principal\"$CID4\";principal\"$CID5\";principal\"$CID6\";principal\"$CID7\";principal\"$CID8\";principal\"$CID9\";}}}})" $DEVELOPER_NEURON_ID > register.json
quill send register.json