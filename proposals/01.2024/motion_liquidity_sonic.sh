export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Add liquidity to ICP/BOOM pool on SONIC DEX\";
        url = \"https://boomdao.xyz/\";
        summary = \"BOOM DAO proposes to add liquidity to the [ICP/BOOM pool](https://data.sonic.ooo/pools/ryjl3-tyaaa-aaaaa-aaaba-cai:vtrom-gqaaa-aaaaq-aabia-cai) on Sonic Dex. 

Following this motion proposal, 2 additional proposals will be submitted to apply for the transfer of 5000 ICP and 5,000,000 BOOM, respectively, from the BOOM DAO SNS treasury to the ICP/BOOM Swap canister owned by [Sonic Dex](https://app.sonic.ooo/)

The destination account for both transfers will be the same but on 2 different ledgers and is as follows:

Principal: **3xwpq-ziaaa-aaaah-qcn4a-cai**

Subaccount: **[89, 242, 163, 11, 125, 165, 198, 110, 211, 108, 160, 247, 46, 233, 81, 26, 241, 225, 88, 67, 143, 224, 87, 231, 9, 249, 215, 83, 23, 7, 249, 156]** (this is the Subaccount generated from the SONIC swap canister)

If these proposals are approved, Sonic Dex will add the funds to the liquidity pool.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for adding liquidity to ICP/BOOM pool on SONIC DEX\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json