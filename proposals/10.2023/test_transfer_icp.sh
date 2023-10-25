export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"Test Transfer 1 ICP token\";
        url = \"https://boomdao.xyz/\";
        summary = \"Transfer 1 ICP token to test the TransferSnsTreasuryFunds type of SNS proposal.\";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 1 : int32;
                to_principal = opt principal \"ulthf-sf5kq-skepd-g2jnv-527pd-g7hcb-fkewc-q2njc-tcgmz-s7sme-aqe\";
                to_subaccount = null;
                memo = null;
                amount_e8s = 100000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json