export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
dfx identity use "default"
export DX_PRINCIPAL="$(dfx identity get-principal)"
echo $DX_PRINCIPAL

# export NEURONS="$(dfx canister --network ic call xomae-vyaaa-aaaaq-aabhq-cai list_neurons "(record {of_principal = opt principal\"${DX_PRINCIPAL}\"; limit = 0})")"
# echo $NEURONS

# export NEURON_ID=$(quill sns neuron-id --principal-id ${DX_PRINCIPAL} --memo 0)
export NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"
echo ${NEURON_ID}

quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions merge-maturity
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions configure-dissolve-state
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions manage-principals
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions submit-proposal
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions vote
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions disburse
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions split
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions disburse-maturity
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions stake-maturity
quill sns --canister-ids-file ./sns_canister_ids.json neuron-permission add ${NEURON_ID} --principal ${DX_PRINCIPAL} --permissions manage-voting-permission


