export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Complete and Release the Leaderboard Standard Roadmap Milestone\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is a proposal to release the On-Chain Leaderboard Standard built by the BOOM DAO core team to the public and complete the Leaderboard Standard milestone on the BOOM DAO Roadmap. More information about the Leaderboard Standard can be found below.

## What's the Leaderboard Standard?

At the moment, no standard exists for storing Leaderboards in on-chain games. This suppresses network effects because Dapps are unable to read Leaderboard data in a universal format. This fragmentation has lead most games to store Leaderboards off-chain or build siloed Leaderboards.

The On-Chain Leaderboard Standard solves this problem and unites game developers with tooling for storing Leaderboard data in canisters under an interoperable data format.

## How do I use the Leaderboard Standard?

If this proposal is approved, the following week there will be a set of canister upgrade proposals to upgrade the World Protocol canisters with the new Leaderboard Standard features. To learn how to use the Leaderboard Standard, please refer to the [BOOM DAO documentaion](https://docs.boomdao.xyz/leaderboards).\";
        action = opt variant {
            Motion = record {
                motion_text = \"A motion proposal for Leaderboard Standard Roadmap Milestone\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json