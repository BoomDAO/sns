export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Motion Proposal for Offsetting Lost Rewards and Enhancing Beacon Neuron Structure\";
        url = \"https://boomdao.xyz/\";
        summary = \"
## Background 
On **October 7, 2023, at 16:54:35 UTC**, the voting period for an [SNS proposal](https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/15) concluded without the participation of BOOM DAO's beacon neuron. This occurred due to unforeseen emergency circumstances involving one of the voting members. This incident revealed vulnerabilities in the current beacon neuron structure of BOOM DAO, indicating that it lacks the necessary robustness and decentralization to fulfill its primary objective, which is to consistently vote on behalf of the community, ensuring that all community members receive their voting rewards as intended. We extend our apologies to the community for this oversight and are taking immediate action through this motion proposal to rectify the situation in the best interests of the BOOM DAO community.

## Proposed Solution
We propose a two-fold solution to rectify the beacon neuron issue, one that is in the best interest of the community's future and guarantees the prevention of this mistake, regardless of external circumstances. This solution encompasses both the compensation for lost rewards resulting from beacon neuron non-voting and the enhancement of the beacon neuron structure to bolster its robustness and decentralization.

## Offsetting Lost Rewards
The adoption of this motion proposal will initiate the creation of two additional motion proposals this week. The primary objective of these two proposals will be to test a new beacon neuron voting process while generating rewards for BOOM DAO's voting members. By including the current motion proposal, this would bring the total number of motion proposals to three. This multi-pronged approach will significantly mitigate the impact of lost rewards due to beacon neuron non-voting.

## Beacon Neuron Structure Enhancement 
The current beacon neuron structure involves the two co-founders of BOOM DAO, meaning that for the beacon neuron to vote, it requires both co-founders to vote **YES** or one to vote **NO**. As the vast majority of BOOM DAO SNS proposals entail technical upgrades and necessitate a **YES** vote, it almost invariably mandates the manual participation of both co-founders. This configuration has recently revealed itself as a single point of failure, as evidenced when one co-founder was unable to participate, resulting in the failure of a **YES** vote proposal.

To address this vulnerability, we propose the inclusion of a third voting member from the BOOM DAO core team in the beacon neuron. With this adjustment, only two out of the three voting members will need to reach a consensus—either by voting **YES** or **NO**—for the beacon neuron to cast its vote. This structural enhancement will significantly enhance decentralization and robustness within the beacon neuron. We are confident that this change will ensure uninterrupted beacon neuron voting in the future, effectively safeguarding the community's best interests.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for Offsetting Lost Rewards and Enhancing Beacon Neuron Structure\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json