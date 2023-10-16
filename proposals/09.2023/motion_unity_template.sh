export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Release and Complete the Unity SDK Roadmap Milestone\";
        url = \"https://boomdao.xyz/\";
        summary = \"
This is a proposal to release the Unity SDK built by the BOOM DAO core team to the public and complete the Unity SDK milestone on the BOOM DAO Roadmap. More information about the Unity SDK can be found below.

## What's the Unity SDK?

A drag-and-drop Unity Package that can be added to any Unity project to kickstart development on ICP with pre-built features for ICP login authentication, canister database, NFT and ICRC token minting, NFT marketplace, and in-game Shop that accepts ICP/ICRC/NFT payments.

## Download The Unity SDK

To use the BOOM Unity SDK for ICP integration, simply download the Unity Package from the link below and drag it into your Unity project:
https://github.com/BoomDAO/unity-template/releases/
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A motion proposal to release and complete the Unity SDK roadmap milestone\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json