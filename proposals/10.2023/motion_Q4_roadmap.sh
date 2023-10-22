export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Activate the BOOM DAO Q4 Roadmap\";
        url = \"https://boomdao.xyz/\";
        summary = \"This proposal aims to activate the **BOOM DAO** roadmap development milestones for Q4 2023. Each feature has been carefully reviewed and identified by the BOOM core team and game developers as critical infrastructure and tools needed in the ICP ecosystem. 
## Unity SDK
A drag-and-drop Unity Package that can be added to any Unity project to kickstart development on ICP with pre-built features for ICP login authentication, canister database, NFT and ICRC token minting, NFT marketplace, and in-game Shop that accepts ICP/ICRC/NFT payments.

## BOOM Game Makers Alliance V1
A strategic alliance of ICP game developers committed to supporting and growing the on-chain gaming ecosystem. Through collective coordination and collaboration, the BOOM Gamer Makers Alliance will establish processes for providing continuous support to all gaming teams building on BOOM DAO and ICP.

## BOOM Gaming Guilds (BGG) V1
First implementation of an on-chain guild system deeply integrated with the canister smart contracts of fully on-chain ICP games. Providing tools for community building, gamification of guilds, user acquisition, incentive alignment, and cross-game collaboration.

## On-Chain Multiplayer V1
Initial version of an on-chain multiplayer game framework on ICP, leveraging the World Protocol. This integration facilitates development of multiplayer server configurations via World canisters. Incorporating matchmaking features and the partitioning of rooms, the multiplayer framework ensures canister data transmission is synchronized with player groupings in these server environments.

## On-Chain Leaderboard Standard
A composable gaming leaderboard standard. Designed for scalability, adaptable to any on-chain game, and resides entirely within canister smart contracts of the World Protocol.

## World Protocol V2
Following in-depth feedback from game developers utilizing the World Protocol for comprehensive on-chain games, we will introduce major feature improvements, addressing aspects like payments, staking, chat, login, and world entities. Additionally, there will be development on an on-chain validation mechanism for smart-contract-authoritative movement and position tracking.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal to activate the BOOM DAO Q4 Roadmap\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json