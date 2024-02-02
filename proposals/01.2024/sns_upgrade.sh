export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal "(record {
        title = \"Upgrade SNS to next available version\";
        url = \"https://boomdao.xyz/\";
        summary = \"Proposal to upgrade the BOOM DAO SNS to the next available version on SNS-W.\";
        action = opt variant {
            UpgradeSnsToNextVersion = record {}
        };
    }
)" > message.json

quill send message.json