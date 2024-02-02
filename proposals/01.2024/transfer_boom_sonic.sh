export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

TO_SUBACCOUNT="opt record { subaccount=vec {89: nat8; 242: nat8; 163: nat8; 11: nat8; 125: nat8; 165: nat8; 198: nat8; 110: nat8; 211: nat8; 108: nat8; 160: nat8; 247: nat8; 46: nat8; 233: nat8; 81: nat8; 26: nat8; 241: nat8; 225: nat8; 88: nat8; 67: nat8; 143: nat8; 224: nat8; 87: nat8; 231: nat8; 9: nat8; 249: nat8; 215: nat8; 83: nat8; 23: nat8; 7: nat8; 249: nat8; 156: nat8}}"


quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"Transfer 5,000,000 BOOM to ICP/BOOM Pool on SONIC DEX\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is the #2 of 2 proposals which will add liquidity to the [ICP/BOOM pool](https://data.sonic.ooo/pools/ryjl3-tyaaa-aaaaa-aaaba-cai:vtrom-gqaaa-aaaaq-aabia-cai) on SONIC DEX.

See our [motion proposal](https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/71) for LP creation.
\";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 2 : int32;
                to_principal = opt principal \"3xwpq-ziaaa-aaaah-qcn4a-cai\";
                to_subaccount = $TO_SUBACCOUNT;
                memo = null;
                amount_e8s = 500000000000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json