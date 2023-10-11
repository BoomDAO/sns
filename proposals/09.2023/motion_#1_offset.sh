export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Motion Proposal #2 to offset voting rewards from before BOOM DAO's beacon neuron upgrade\";
        url = \"https://boomdao.xyz/\";
        summary = \"This motion proposal is the second of two proposals created to offset lost voting rewards due to the BOOM DAO Beacon Neuron failing to vote on a previous canister upgrade proposal due to unforeseen emergency circumstances involving one of the voting members. 
        More information regarding the enhancements to the Beacon Neuron structure to mitigate this in the future can be found in the original proposal: https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/16\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal #2 to offset voting rewards from before BOOM DAO's beacon neuron upgrade\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json