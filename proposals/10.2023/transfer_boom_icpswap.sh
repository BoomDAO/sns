export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"Transfer 1,000,000 BOOM to ICP/BOOM Pool on ICPSwap\";
        url = \"https://boomdao.xyz/\";
        summary = \"This is the #2 of 2 proposals which will transfer 1,000,000 BOOM to the ICP/BOOM pool on ICPSwap. 
        
Check this [motion proposal](https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai/proposal/21) for more information.\";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 2 : int32;
                to_principal = opt principal \"fdno6-ayaaa-aaaag-qckuq-cai\";
                to_subaccount = \"opt record { subaccount=vec { 10: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 2: nat8; 0: nat8; 0: nat8; 79: nat8; 1: nat8; 1: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8; 0: nat8 }}\";
                memo = null;
                amount_e8s = 100000000000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json