DEADLINE=1694800800 #Fri Sep 15 2023 20:00:00 GMT+2 (CEST Time)
PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
PROPOSAL_TITLE="Proposal to create an SNS-DAO for BOOM DAO"
DISSOLVE_DELAY=7776000 #90 days

ic-admin   \
   --nns-url "https://ic0.app" \
   --secret-key-pem "${PEM_FILE}" \
   propose-to-open-sns-token-swap  \
   --proposer 3640404658249905115 \
   --min-participants 300  \
   --min-icp-e8s 40000000000000 \
   --max-icp-e8s 80000000000000 \
   --min-participant-icp-e8s 100000000  \
   --max-participant-icp-e8s 7500000000000  \
   --swap-due-timestamp-seconds "${DEADLINE}"  \
   --sns-token-e8s 40000000000000000  \
   --target-swap-canister-id "vuqiy-liaaa-aaaaq-aabiq-cai"  \
   --community-fund-investment-e8s 24000000000000  \
   --neuron-basket-count 5  \
   --neuron-basket-dissolve-delay-interval-seconds ${DISSOLVE_DELAY}  \
   --proposal-title "${PROPOSAL_TITLE}"  \
   --summary "This is the proposal for the NNS to create an SNS DAO to govern the [BOOM DAO](https://boomdao.xyz/).

# Purpose

BOOM DAO is an all-in-one web3 game platform and game server protocol running 100% on-chain on the Internet Computer.

Our three-fold mission is to power the next generation of fully on-chain games, drive mainstream adoption of the Internet Computer blockchain, and provide a collaborative hub for all things ICP gaming.

BOOM DAO’s products include:
* [World Engine Protocol](https://github.com/BoomDAO/world-engine)
* [Game Launcher](https://github.com/BoomDAO/game-launcher)
* [Unity Template](https://github.com/BoomDAO/unity-template)
* [World Template](https://github.com/BoomDAO/world-template)
* [ICP.NET Library (C# agent)](https://github.com/BoomDAO/ICP.NET)

All products are fully open-sourced on [Github](https://github.com/orgs/BoomDAO/repositories).

In-depth technical documentation about the products can be found [here](https://docs.boomdao.xyz/).

The SNS empowers collective governance and resource pooling, fostering a collaborative environment where all stakeholders are incentivized to contribute to infrastructure development and compound network effects. This provides a powerful framework for the long-term governance and development of BOOM DAO's gaming infrastructure and protocol products.

For more information on the BOOM DAO SNS please read the [whitepaper here](https://boomdao.notion.site/BOOM-DAO-WHITEPAPER-59bc2aa3380b4f86b01344da42157a24).

# Proposed Token Distribution

Total token supply: 1 billion BOOM tokens

Initially distributed:

- 27%: Reserved for the SNS treasury & under control of the BOOM DAO
- 40%: To be distributed by the NNS-run decentralization swap which includes the Neuron Fund
- 10%: Allocated to the BOOM DAO founding team, will be vested over a period of 24 months from the SNS genesis in equal proportions every month
- 23%: Allocated to BOOM DAO founding ecosystem partners, that have been helping build BOOM DAO and the ICP gaming ecosystem (see partners list on the BOOM website)

Ledger transaction fee: 0.001 BOOM tokens

For more information on the initial token allocation please read the Tokenomics section of our [whitepaper](https://boomdao.notion.site/BOOM-DAO-WHITEPAPER-59bc2aa3380b4f86b01344da42157a24).

# Governance

- Each decentralization swap participant (including the Neuron Fund) will receive their tokens in a basket of 5 equal value BOOM neurons with dissolve delays of 0, 3, 6, 9 and 12 months respectively
- The founding team will receive their tokens in a basket of 24 neurons, each with a 6 month dissolve delay, but with vesting periods of 0, 1, 2, 3, ... 23, 24 months respectively
- The founding ecosystem partners will receive their tokens in a basket of 4 neurons with dissolve delays of 3, 6, 9 and 12 months respectively

The governance parameters for BOOM DAO are proposed to be initially set as:

- Min stake: 5 BOOM tokens
- Min staking period for voting: 30 days
- Max staking period: 2 years

Voting Rewards: 2.5% of BOOM token supply minted annually

- Max staking bonus (for 2 years): 2x
- Max age for age bonus: 12 months
- Max age bonus: 1.25x

These parameters can be verified by querying the governance canister's get_nervous_system_parameters method at https://dashboard.internetcomputer.org/canister/xomae-vyaaa-aaaaq-aabhq-cai

# Decentralization Swap

40% of the total supply of tokens are proposed to be distributed via an SNS decentralization swap. If the proposal is adopted, the swap will start after the specified delay and is scheduled to conclude the evening of Friday September 15th CET. If the maximum number of ICP configured below is raised before that date, the swap will conclude earlier.

Swap participation parameters:

- Min participation: 1 ICP
- Max participation: 75,000 ICP
- Max to be raised: 800,000 ICP
- Min to be raised: 400,000 ICP
- From Neuron Fund: 240,000 ICP
- Min participants: 300

The swap is open to anyone excluding US, FR, and AE residents or citizens. Participation is either via the launchpad in the NNS front end: https://nns.ic0.app/ or on the command line using [quill](https://wiki.internetcomputer.org/wiki/How-To:_Participate_in_the_SNS_decentralization_sale_via_quill).

# The DApp

The BOOM DAO decentralized app consists of a set of canister smart contracts.

Top-level canisters controlled by the [BOOM DAO SNS root canister](https://dashboard.internetcomputer.org/canister/xjngq-yaaaa-aaaaq-aabha-cai):

- Game Launcher Frontend (awcae-maaaa-aaaam-abmyq-cai)
- Game Deployer (6rvbl-uqaaa-aaaal-ab24a-cai)
- World Deployer  (js5r2-paaaa-aaaap-abf7q-cai)
- NFT Deployer  (j474s-uqaaa-aaaap-abf6q-cai)
- ICRC Deployer (jv4xo-cyaaa-aaaap-abf7a-cai)
- World Hub (j362g-ziaaa-aaaap-abf6a-cai)
- Payment Hub (5hr3g-hqaaa-aaaap-abbxa-cai)
- Staking Hub (jozll-yaaaa-aaaap-abf5q-cai)
- Unity Login Webpage Canister (7p3gx-jaaaa-aaaal-acbda-cai)

Controlled by top-level canisters:

- User Nodes (Under control of World Hub canister)

For more information, please see the Technical Architecture section of the BOOM DAO [whitepaper](https://boomdao.notion.site/BOOM-DAO-WHITEPAPER-59bc2aa3380b4f86b01344da42157a24).

# Verification

All the details above can be verified, by examining the initialized BOOM DAO [SNS canisters](https://dashboard.internetcomputer.org/sns/xjngq-yaaaa-aaaaq-aabha-cai). 

More detailed instructions can be found [here](https://wiki.internetcomputer.org/wiki/How-to:_Verify_SNS_decentralization_swap_proposal)."  \