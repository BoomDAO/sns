export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Add liquidity to ICP/BOOM pool on SONIC\";
        url = \"https://boomdao.xyz/\";
        summary = \"
The BOOM DAO core team proposes to add liquidity to the ICP/BOOM pool on Sonic Dex (https://data.sonic.ooo/pools/ryjl3-tyaaa-aaaaa-aaaba-cai:vtrom-gqaaa-aaaaq-aabia-cai)

Following this motion proposal, we will submit 2 additional proposals to apply for the transfer of 1500 ICP and 600,000 BOOM, respectively, from the BOOM DAO SNS treasury to the ICP/BOOM Swap canister owned by Sonic Dex (https://app.sonic.ooo/)

The destination account for both transfers will be the same but on 2 different ledgers and is as follows:

Principal: **3xwpq-ziaaa-aaaah-qcn4a-cai**

Subaccount: **[240, 240, 44, 241, 69, 116, 107, 244, 179, 136, 6, 231, 238, 28, 209, 108, 241, 126, 101, 27, 229, 86, 56, 189, 225, 158, 37, 218, 76, 35, 156, 225]** (this is the Subaccount generated from the SONIC swap canister)

Simultaneously, @sonic_ooo will tweet to verify that these proposals are correct and that they were initiated by the BOOM DAO core team.

If these proposals are approved, Sonic Dex will add the funds to the liquidity pool.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for adding liquidity to ICP/BOOM pool on SONIC\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json