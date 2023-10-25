export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal --proposal "(
    record {
        title = \"BOOM DAO Proposal for Funding\";
        url = \"https://boomdao.xyz/\";
        summary = \"The software development service provider (BOOM Games Software Ltd) seeks funding from the BOOM DAO SNS to advance the growth and development of BOOM DAO's products. This 'Proposal for Funding' aims to allocate 327,187 ICP from the BOOM DAO Treasury to the BOOM developer organization.

## Background
As outlined in the BOOM DAO whitepaper before the SNS, BOOM DAO has put forward this proposal to DAO members to request access to 80% of the SNS treasury, totaling 327,187 ICP. This strategic move is rooted in BOOM DAO's unwavering dedication to growing and scaling the project, in alignment with the vision laid out in the whitepaper.

## Utilization of Funds
The funds being requested will be utilized over the next two years, primarily for development, hiring, marketing, and legal expenses.

## Budget Breakdown
* **Team Salaries**: Compensation for the team members dedicated to building BOOM DAO's mission. This ensures we attract, retain, and motivate top talent critical for the development and growth of BOOM DAO.
* **HR/Administrative**: HR-related costs, including operational expenses and administrative overhead, necessary for the management and contractual employment of the BOOM DAO team.
* **Operational Expenses**: Operational work-related costs, encompassing tools, software, and communication platforms that facilitate both remote and in-person collaboration. This also covers general operational expenses essential to the day-to-day functions of BOOM DAO.
* **Infrastructure Expenses**: Costs related to running and maintaining open internet services and infrastructure on the Internet Computer blockchain. This includes cycle top ups and fees associated with SNS canister management, World canister deployment, NFT canister deployment, ICRC canister deployment, and asset canister hosting costs.
* **Legal, Compliance, & Incorporation Fees**: Comprehensive legal services to ensure BOOM DAO navigates evolving regulatory landscapes. This includes compliance, contractual obligations, employment contracts, and costs for legal incorporation.
* **Third-Party Services**: Expenditures related to third-party tools, technologies, and services integral to BOOM DAO's operations.
* **Marketing & Community Engagement**: A budget allocation for marketing campaigns, advertising, social media management, and other promotional activities that elevate BOOM DAO's visibility.
* **Community Building**: Resources dedicated to community managers, moderators, and other support roles crucial for fostering community engagement and elevating the user experience.

## Roadmap
* **Unity SDK**: Drag-and-drop Unity Package that can be added to any Unity project to kickstart development on ICP with pre-built features for ICP login authentication, canister database, NFT and ICRC token minting, NFT marketplace, and in-game Shop that accepts ICP/ICRC/NFT payments.
* **BOOM Game Makers Alliance V1**: A strategic alliance of ICP game developers committed to supporting and growing the on-chain gaming ecosystem. It will establish processes for providing continuous support to all gaming teams building on BOOM DAO and ICP.
* **BOOM Gaming Guilds (BGG) V1**: First implementation of an on-chain guild system deeply integrated with canisters of fully on-chain ICP games. Providing tools for community building, gamification of guilds, user acquisition, and cross-game collaboration.
* **On-Chain Multiplayer V1**: Initial version of an on-chain multiplayer game framework on ICP, leveraging the World Protocol. Multiplayer server configurations via World canisters, matchmaking features, partitioning of rooms, and canister data transmission synchronized with player groupings in server environments.
* **On-Chain Leaderboard Standard**: A composable gaming leaderboard standard. Designed for scalability, adaptable to any on-chain game, and entirely in canisters of the World Protocol.
* **World Protocol V2**: Major feature improvements to the existing World Protocol, addressing aspects like payments, staking, chat, login, world entities, and position validation.
* **BOOM Gaming Guilds (BGG) V2**: Second iteration of the BGG to improve guild features and tooling based on user feedback and data-driven testing.
* **World Protocol Catalyst Program**: Establish a grant committee and attract game teams to pioneer novel use cases and on-chain games on top of the BOOM World Protocol.
* **Game Launcher Platform Tokenization**: Design and create tokenization and/or DeFi products within the BOOM DAO Game Launcher platform.
* **Global Gaming Hackathon**: Collaborate with gaming academia and startup networks to create a global gaming hackathon that attracts game teams to build innovative games with BOOM DAO's infrastructure.
* **BOOM Grant Program**: Assemble a grant committee and launch a grant application process to incentivize game developers.
* **The $BOOM Game Universe**: Ecosystem of interconnected on-chain games and autonomous worlds powered by the $BOOM token.

## Quarterly Withdrawals vs. Lump Sum
You may wonder why we are opting for a lump sum withdrawal proposal rather than smaller, quarterly withdrawals. Our decision is driven by a strategic consideration of the operational needs of our project. BOOM DAO is currently in an early-stage, high-growth phase, where adaptability and forward planning are crucial for success.

Each quarter, we will engage the community through SNS proposals to activate the roadmap and review the work completed by the core team. This approach ensures continuous community involvement and oversight while allowing us to maintain the necessary speed and efficiency in our operations.

## Long-Term Vision and Sustainability
We acknowledge that the remaining 81,796 ICP in the SNS treasury falls short of the resources required to fulfill BOOM DAO's ambitious vision of bootstrapping and funding an entire on-chain gaming ecosystem. From the outset, we have understood the need for substantially more funding and the development of revenue-generating products and protocols to get there. This is a core focus in our strategy to grow the SNS treasury in a sustainable way.

Our team is actively exploring diverse financial avenues, including specific DeFi tools, with the aim of benefitting not only BOOM DAO but also the entire ICP gaming vertical. While we cannot provide specific details at this early stage, we are dedicated to creating sustainable and impactful contributions to all the ICP gaming projects and look forward to sharing more in Q1.

## Staking for Sustainability
Our decision-making process consistently embraces a long-term perspective. In line with this principle, we pledge to stake a minimum of 100,000 ICP. This commitment is a testament to our dedication to the enduring sustainability of BOOM DAO. Furthermore, we will communicate the various neuron IDs within the next 24 hours, ensuring transparency and community engagement.

## Conclusion
We want to emphasize that our unwavering commitment to BOOM DAO's vision and the broader ICP gaming vertical and ecosystem remains resolute. We extend our heartfelt thanks to the community for its continuous support and for propelling BOOM DAO forward in the spirit of collaboration and innovation.

Our intention is to maintain open lines of communication with the community, ensuring that our actions are aligned with our shared goals. We remain dedicated to creating an inspiring future for BOOM DAO and the entire ICP ecosystem.
\";
        action = opt variant {
            TransferSnsTreasuryFunds = record {
                from_treasury = 1 : int32;
                to_principal = opt principal \"ulthf-sf5kq-skepd-g2jnv-527pd-g7hcb-fkewc-q2njc-tcgmz-s7sme-aqe\";
                to_subaccount = null;
                memo = null;
                amount_e8s = 32718700000000 : nat64;
            }
        };
    }
)" $DEVELOPER_NEURON_ID > message.json

quill send message.json