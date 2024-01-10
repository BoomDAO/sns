export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Activate the BOOM DAO Q1 2024 Roadmap\";
        url = \"https://boomdao.xyz/\";
        summary = \"This proposal marks a pivotal moment in our journey as we set out to activate the BOOM DAO roadmap development milestones for Q1 2024. With meticulous evaluation conducted by the BOOM DAO core team and game developers, each milestone has been thoughtfully identified as crucial for fostering network effects to build a thriving ICP gaming ecosystem.

## Airdrop
We are pleased to announce the BOOM DAO Airdrop for our early supporters who registered for the airdrop at launch. This will be an ongoing event featuring a series of gaming quests across the BOOM DAO ecosystem, providing rewards and boosting engagement while growing the BOOM Gaming Guild. Stay tuned for more details on participating and claiming your rewards.

## Launch of BOOM Gaming Guilds
The launch of BOOM Gaming Guilds aims to establish a robust and growing user base of gamers for implementation across all BOOM DAO games built upon the World Protocol. This will kickstart network effects within the ICP gaming vertical and foster synergies among gaming projects, all while rewarding engaged gaming communities for their participation in completing quests. The $BOOM airdrop will be distributed through the BOOM Gaming Guilds.

## BOOM Analytics Dashboard V1
This first version of the Analytics Dashboard will empower the community to track on-chain transactions happening in the BOOM DAO ecosystem, thus bringing transparency to BOOM DAO's usage metrics.

## Launchpad R&D
The Launchpad R&D milestone involves research into the launch of tokens for BOOM games, serving as a dual-purpose tool for fundraising and community building. Leveraging the comprehensive BOOM DAO gaming infrastructure, including gaming guilds for promotion, this initiative is poised to rapidly expand the BOOM gaming user base and utility. This milestone is about initial research and development of a basic MVP.

## World Protocol V3
Guided by feedback from game developers and the community, World Protocol V3 comprises upgrades and iterations following the onboarding phase of the initial games in the BOOM DAO ecosystem.

## BOOM DAO's Game Onboarding Kickoff
This milestone represents a crucial turning point in the evolution of BOOM DAO's ecosystem. We are thrilled to announce the integration of four exciting games into BOOM DAO's World Protocol, marking the inception of their transformation into fully on-chain games on ICP.

These games, **ToyoWorld**, **Paws Arena**, **Elementum**, and **Plethora**, will undergo the integration process throughout Q1 2024 and actively participate in making it better for future games. As they embark on this journey, they will become intricately interconnected, ready to harness the collective strength of BOOM Gaming Guilds. Stay tuned for the exciting developments as these games become an integral part of the BOOM DAO ecosystem.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal to activate the BOOM DAO Q1 2024 Roadmap\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json