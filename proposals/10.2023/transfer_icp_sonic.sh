export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"Transfer 1500 ICP to ICP/BOOM Pool on SONIC Dex\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is the first of 2 proposals which add liquidity to the ICP/BOOM pool on SONIC DEX (https://data.sonic.ooo/pools/ryjl3-tyaaa-aaaaa-aaaba-cai:vtrom-gqaaa-aaaaq-aabia-cai)

See our motion proposal for LP creation: (https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/22)

Simultaneously, @sonic_ooo will tweet to verify these proposals. If these proposals are approved, Sonic Dex will add the funds to the liquidity pool.\";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 1 : int32;
                to_principal = opt principal \"3xwpq-ziaaa-aaaah-qcn4a-cai\";
                to_subaccount = \"opt record { subaccount=vec { 240: nat8; 240: nat8; 44: nat8; 241: nat8; 69: nat8; 116: nat8; 107: nat8; 244: nat8; 179: nat8; 136: nat8; 6: nat8; 231: nat8; 238: nat8; 28: nat8; 209: nat8; 108: nat8; 241: nat8; 126: nat8; 101: nat8; 27: nat8; 229: nat8; 86: nat8; 56: nat8; 189: nat8; 225: nat8; 158: nat8; 37: nat8; 218: nat8; 76: nat8; 35: nat8; 156: nat8; 225: nat8; }}\";
                memo = null;
                amount_e8s = 150000000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json