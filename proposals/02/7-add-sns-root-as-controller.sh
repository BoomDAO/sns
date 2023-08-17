dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) token_deployer
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) world_deployer
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) nfts_deployer 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) login-webpage 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) game_deployer 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) game-launcher 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) WorldHub 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) StakingHub 
dfx canister --network ic update-settings --add-controller $(dfx canister --network ic id sns_root) PaymentHub 

# dfx canister --network ic info token_deployer
# dfx canister --network ic info world_deployer
# dfx canister --network ic info nfts_deployer 
# dfx canister --network ic info login-webpage 
# dfx canister --network ic info game_deployer 
# dfx canister --network ic info game-launcher 
# dfx canister --network ic info WorldHub 
# dfx canister --network ic info StakingHub 
# dfx canister --network ic info PaymentHub 
