export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Add liquidity to ICP/BOOM pool on ICPSwap\";
        url = \"https://boomdao.xyz/\";
        summary = \"The BOOM DAO core team proposes to add liquidity to the ICP/BOOM pool on ICPSwap (https://info.icpswap.com/swap/pool/details/fdno6-ayaaa-aaaag-qckuq-cai)

Following this motion proposal, we will submit 2 additional proposals to apply for the transfer of 5,000 ICP and 3,850,400 BOOM, respectively, from the BOOM DAO SNS treasury to the ICP/BOOM Swap canister owned by ICPSwap (fdno6-ayaaa-aaaag-qckuq-cai). The destination account for both transfer proposals will be the same but on 2 different ledgers of BOOM and ICP respectively and is as follows:

Principal: **fdno6-ayaaa-aaaag-qckuq-cai**

Subaccount: **[10, 0, 0, 0, 0, 2, 0, 0, 79, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]** (this is the Subaccount generated from the BOOM DAO governance canister ID, xomae-vyaaa-aaaaq-aabhq-cai)

The liquidity funds will be located in the Subaccount generated by the BOOM DAO governance canister. 

Simultaneously, @ICPSwap will tweet to verify that these proposals are correct and that they were initiated by the BOOM DAO core team.

If these proposals are approved, ICPSwap will add the funds to the liquidity pool. Half of the transferred funds will provide liquidity in the range of 0.00043 ICP to 0.0039 ICP per BOOM, and the other half will provide liquidity in the full range for the ICP/BOOM pool.

Please note: There may be price fluctuations for BOOM between proposal initiation and successful transfer. When adding liquidity, the price range will be dynamically adjusted based on the current price of BOOM, but it will not deviate significantly from the set price range.

Subsequent proposals can be made to add more liquidity or adjust the ranges if the price of BOOM experiences significant changes.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for adding liquidity to ICP/BOOM pool on ICPSwap\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json