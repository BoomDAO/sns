export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"Test Transfer 1 BOOM token from SNS treasury\";
        url = \"https://boomdao.xyz/\";
        summary = \"
        Transfer 1 BOOM token to a principal owned by BOOM DAO’s core team, to test **TransferSnsTreasuryFunds** type of SNS proposal.
        \";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 2 : int32;
                to_principal = opt principal \"3u7l3-qccps-r35rd-rw6qi-4bkw6-6w3m4-7nzgx-spnqp-vcj63-hmuoz-nae\";
                to_subaccount = null;
                memo = null;
                amount_e8s = 100000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json