export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
export PEM_FILE="/Users/jarvis/.config/dfx/identity/$(dfx identity whoami)/identity.pem"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"Introducing BOOM DAO's Beacon Neuron for Community Consideration (Neuron ID: 91b153596d2484f610bff3d72c42ec0fcb42be319090654959fe2c148eba88d7)\";
        url = \"https://boomdao.xyz/\";
        summary = \"
## Announcing the BOOM Beacon Neuron

Numerous members within the BOOM DAO community have expressed keen interest in following BOOM DAO's beacon neuron. This proposal aims to raise awareness within the entire BOOM DAO community about the beacon neuron and put it forward for a community vote. This beacon neuron will always vote for all BOOM DAO's SNS proposals, making sure that everyone who follows it gets their voting rewards every time. 

<b>This is BOOM DAO’s Beacon Neuron Id:
91b153596d2484f610bff3d72c42ec0fcb42be319090654959fe2c148eba88d7</b>


## How to Follow Beacon Neuron

1) Login to your NNS account at https://nns.ic0.app
2) Select <b>My Neuron Staking</b> and then <b>BOOM DAO Nervous System</b>.
3) Click on the respective Neuron that you want to follow BOOM DAO's Beacon Neuron.
4) Scroll down the Neuron's page to the <b>Follow Neurons</b> button, select it and then select All topics to follow.
5) Copy and paste the BOOM DAO Beacon Neuron Id: <b>91b153596d2484f610bff3d72c42ec0fcb42be319090654959fe2c148eba88d7</b> in the input box and click the Follow Neuron button.\";
        action = opt variant {
            Motion = record {
                motion_text = \"A motion proposal to introduce BOOM DAO's Beacon Neuron for community consideration.\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > extend_voting_period.json
quill send extend_voting_period.json