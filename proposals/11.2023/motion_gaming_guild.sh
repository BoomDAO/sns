export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"BOOM Gaming Guilds Design Proposal\";
        url = \"https://boomdao.xyz/\";
        summary = \"This proposal aims to provide an overview of the proposed design for the BOOM Gaming Guilds roadmap milestone.

## What is it?

The BOOM Gaming Guild will enable onchain gamers to join an exclusive community of gamers and complete quests. Quests are tasks related to various BOOM DAO games that guild members can complete to receive guild rewards.

At first, there will only be a single BOOM Gaming Guild that will provide a central gaming community and passionate user base to grow ICP games. Any game building on the BOOM DAO World Protocol will be able to leverage the BOOM Gaming Guild to acquire users to their game through customizable in-game quests and rewards. 

In the future, more guilds can be created, and configured with quests and rewards permissionlessly. The inaugural BOOM Gaming Guild will be accessible on the BOOM Game Launcher website.

## The Design

The architecture will leverage the existing composability of the World Protocol to layer the functionality of Gaming Guilds on top of any BOOM DAO games. Guilds will be configured using a World canister, the same type of canister used as a backend for BOOM DAO games. We will refer to this as a Guild canister, even though the code is equivalent to a World canister. 

A Guild canister can have Actions configured that represent the guild’s quests. Quests are tasks that guild members can complete in various BOOM games to claim rewards in the Guild. Since quests are configured on top of the World Protocol, they are extremely customizable and work seamlessly with any game on the World Protocol. 

For example, quests could be: “Reach Level 5 in X Game”, “Play 30 battles in Y Game”, and “Accumulate 1M Gold in Z Game”. Completing these quests would allow you to claim ICRC or ICP tokens in the BOOM Gaming Guild as rewards and earn Guild XP. All ICRC/ICP assets in the Guild treasury would be held in the Guild canister and rewarded on-chain for completion of quests. BOOM DAO games and guilds can create ICRC/NFT collections and use them to reward guild members to grow and retain their community.

## Our Vision

The BOOM DAO team is thrilled to provide an overview of the proposed BOOM Gaming Guilds roadmap milestone. We believe BOOM Gaming Guilds are going to play a major role to attract way more gamers and game developers to the Internet Computer ecosystem. We envision them as a key gaming infrastructure to take the ICP gaming vertical to the next level. They will empower all fully on-chain games and autonomous worlds building on the BOOM DAO World Protocol by offering them a solid tool for their user acquisition and retention strategies. We look forward to building BOOM Gaming Guilds to drive mainstream adoption of all ICP games.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for BOOM Gaming Guilds Design\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json