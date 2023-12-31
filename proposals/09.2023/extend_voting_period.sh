quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
  title=\"Extend Voting Period\";
  url=\"https://boomdao.xyz/\";
  summary=\"This proposal extends the 24 hour voting period for proposals to be 3 days.\";
  action = opt variant {
    ManageNervousSystemParameters = record {
      default_followees = null;
      max_dissolve_delay_seconds = null;
      max_dissolve_delay_bonus_percentage = null;
      max_followees_per_function = null;
      neuron_claimer_permissions = null;
      neuron_minimum_stake_e8s = null;
      max_neuron_age_for_age_bonus = null;
      initial_voting_period_seconds = opt (259_200 : nat64);
      neuron_minimum_dissolve_delay_to_vote_seconds = null;
      reject_cost_e8s = null;
      max_proposals_to_keep_per_action = null;
      wait_for_quiet_deadline_increase_seconds = opt (86_400 : nat64);
      max_number_of_neurons = null;
      transaction_fee_e8s = null;
      max_number_of_proposals_with_ballots = null;
      max_age_bonus_percentage = null;
      neuron_grantable_permissions = null;
      voting_rewards_parameters = null;
      max_number_of_principals_per_neuron = null;
    }
  };
})" $DEVELOPER_NEURON_ID > extend_voting_period.json

quill send extend_voting_period.json