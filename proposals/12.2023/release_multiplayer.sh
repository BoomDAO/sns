export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Complete and Release the On-Chain Multiplayer Roadmap Milestone\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is a proposal to release the On-Chain Multiplayer framework built by the BOOM DAO core team to the public and complete the On-Chain Multiplayer milestone on the BOOM DAO Roadmap. More information about the On-Chain Multiplayer framework can be found below.

## What's the On-Chain Multiplayer framework?
BOOM DAO has met with numerous game projects building multiplayer games on ICP, and we've gathered feedback regarding game design, technical requirements, and multiplayer features. A unique design space has emerged where one player can interact with another player entirely through smart contract update calls. This opens the door to new game genres and use cases that will harness the network effects and composability of multiplayer smart contracts. Due to the high-latency of update calls on ICP, building a fully on-chain multiplayer game requires thinking from first principles. We've concluded that there's massive potential in exploring slow-paced game genres that are best suited for high-latency on-chain multiplayer, such as turn-based and time-based game genres. We've built a multiplayer framework to make it seamless for any developer to configure a multiplayer game in a canister smart contract.

For more information about the On-Chain Multiplayer design, refer to this proposal: https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/33

## How do I use the On-Chain Multiplayer framework?
To learn how to use the On-Chain Multiplayer framework, please join the BOOM DAO Discord and reach out to the core team for guidance. We would love to connect with any game teams wanting to build on the BOOM DAO World Protocol. All code is open-source on our Github.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for completing and releasing On-Chain Multiplayer Roadmap Milestone\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json