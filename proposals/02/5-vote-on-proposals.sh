export PROPOSAL="1"
export VOTE="${2:-y}"

export PEM_FILE="/Users/jarvis/.config/dfx/identity/$(dfx identity whoami)/identity.pem"
dfx identity use "default"
export DX_PRINCIPAL="$(dfx identity get-principal)"
echo $DX_PRINCIPAL

# export NEURONS="$(dfx canister --network ic call xomae-vyaaa-aaaaq-aabhq-cai list_neurons "(record {of_principal = opt principal\"${DX_PRINCIPAL}\"; limit = 0})")"
# echo $NEURONS

export NEURON_ID=$(quill sns neuron-id --principal-id ${DX_PRINCIPAL} --memo 0)
# export NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
echo ${NEURON_ID}
quill sns --canister-ids-file ./sns_canister_ids.json --pem-file "${PEM_FILE}" register-vote --proposal-id ${PROPOSAL} --vote ${VOTE} ${NEURON_ID} > add_prepare_permission_vote.json
quill send add_prepare_permission_vote.json