export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal $DEVELOPER_NEURON_ID --proposal "(

    record {
        title = \"De-register Game Launcher and Unity Login Webpage frontend asset canisters\";
        url = \"https://boomdao.xyz\";
        summary = \"This proposal de-registers control of both asset canisters to the dev team principal. This allows the dev team to configure the correct permissions for the asset canisters so that they are upgradeable via SNS proposals. A subsequent proposal will be made to re-register them to SNS control.
        For more information regarding upgrade Permissions related to asset canisters, read here: https://internetcomputer.org/docs/current/developer-docs/integrations/sns/managing/sns-asset-canister\";
        action = opt variant {
            DeregisterDappCanisters = record {
                canister_ids = vec {principal \"awcae-maaaa-aaaam-abmyq-cai\"; principal \"7p3gx-jaaaa-aaaal-acbda-cai\";};
                new_controllers = vec {principal \"2ot7t-idkzt-murdg-in2md-bmj2w-urej7-ft6wa-i4bd3-zglmv-pf42b-zqe\"; principal \"2ot7t-idkzt-murdg-in2md-bmj2w-urej7-ft6wa-i4bd3-zglmv-pf42b-zqe\";};
            }
        }
    }
)" > message.json

quill send message.json