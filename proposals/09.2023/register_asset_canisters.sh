export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal "(

    record {
        title = \"Register Game Launcher and Unity Login Webpage frontend asset canisters\";
        url = \"https://boomdao.xyz\";
        summary = \"This proposal registers control of both asset canisters to SNS. After this proposal, the Game Launcher and Unity Login Webpage frontend asset canisters will only be upgradable via SNS proposals.
        For more information regarding SNS asset canisters and their management, read here: https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister\";
        action = opt variant {
            RegisterDappCanisters = record {
                canister_ids = vec {principal \"awcae-maaaa-aaaam-abmyq-cai\"; principal \"7p3gx-jaaaa-aaaal-acbda-cai\";};
            }
        }
    }
)" > message.json

quill send message.json