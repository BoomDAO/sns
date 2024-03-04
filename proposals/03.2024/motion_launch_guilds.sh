export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Complete and Launch the BOOM Gaming Guild Roadmap Milestone\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is a proposal to launch the BOOM Gaming Guild to the public and complete the milestone on the BOOM DAO Roadmap. More information about the BOOM 
Gaming Guild can be found below.

## What is the BOOM Gaming Guild?

The BOOM Gaming Guild (BGG) is a platform where any game on ICP can easily reward gaming communities for their participation in completing quests in ICP-powered games. Gamers on ICP will have an incredible gaming hub to discover, play, and receive rewards across the most exciting ICP games. Any Unity game can integrate with the BOOM Gaming Guild by following a simple tutorial process and immediately have quests available in the guild platform to reward gamers. The BGG will enable game projects to leverage a powerful user acquisition strategy to attract new players to their game and control community engagement with specific and customized quests. The incredible composability of the BOOM World Protocol enables the BOOM Gaming Guild to invent novel experiences never seen before, such as on-chain rewards, on-chain game reputation, and cross-game quests. The explosion of network effects from the BOOM Gaming Guild will foster synergies across ICP games and empower the ICP gaming vertical for everyone.

If this proposal is passed, the BOOM Gaming Guild will launch on Tuesday, March 5th.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for completing and launching the BOOM Gaming Guild Roadmap Milestone.\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json