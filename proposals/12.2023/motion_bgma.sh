export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"BOOM Game Makers Alliance Proposal\";
        url = \"https://boomdao.xyz/\";
        summary = \"This proposal aims to provide a comprehensive overview of the BOOM Game Makers Alliance roadmap milestone.

## What is the BOOM Game Makers Alliance?

The BOOM Game Makers Alliance (BGMA) is a collective of innovative developers dedicated to creating fully on-chain games or autonomous worlds on BOOM DAO's World Protocol. The primary mission of this alliance is to foster network effects within the BOOM DAO gaming ecosystem, and consequently, within the broader ICP gaming vertical. This is achieved through streamlining the development process for participating gaming teams by offering extensive technical and growth support.

## BGMA is built on two fundamental pillars:

1. Synergy and Collaboration: BGMA fosters collaboration among all creators of fully on-chain games or autonomous virtual worlds utilizing BOOM DAO's World Protocol, leveraging the power of network effects for mutual benefits and collective advancement. 

2. Technical and Growth Support: BOOM DAO's core team is committed to providing ongoing technical and growth support to onboard games, integrate them with BOOM DAO's World Protocol, and expand their user bases through exclusive tools like BOOM Gaming Guilds or cross-game on-chain collaborations.

In essence, BGMA represents a pragmatic initiative to cultivate collaboration and offer technical and growth support within the BOOM DAO ecosystem, ultimately augmenting the potential and reach of fully on-chain games and autonomous worlds in the ICP ecosystem and beyond.


## How does the BOOM Game Maker Alliance work?

At its core, BGMA is a process geared towards building a thriving BOOM DAO gaming ecosystem. The quality of this process is the main determining factor to coordinate collectively in the most efficient way possible to deliver the highest impact for the ICP gaming vertical. The process described in this proposal should be considered as a first iteration to move fast before iterating based on community’s feedback. 

This first iteration is the result of weeks of interactions with gaming teams actively building with BOOM DAO. The focus for BGMA is intentionally on the World Protocol as this has been identified as the gaming protocol with the best potential to create major network effects among BOOM DAO, and by extension the ICP gaming vertical and ICP ecosystem as a whole.

## Onboarding 

The first step in joining BGMA will be quick and easy. A simple form will be publicly available for any team interested in building their fully on-chain game or autonomous world on top of BOOM DAO’s protocol. Filling out this form will lead to a call with BOOM DAO’s core team to get to know each other and figure out if joining BGMA would be a good fit.

## World Protocol Integration

This phase will be about helping the teams integrate the World Protocol to have their game running fully on-chain and be connected to other games that are part of it. The BOOM DAO core team will be providing ongoing technical support throughout this critical phase and will make this transition as smooth as possible for BGMA participants.

## BOOM Gaming Guild Integration

This phase will be about configuring on-chain quests in the games to benefit from BOOM Gaming Guilds as a user acquisition strategy and community-building tool. The gamers will be able to complete various quests and get token rewards. This is a critical integration for BGMA teams to grow and retain their user base. Similar to the World Protocol integration, BOOM DAO core team will carefully assist to find the set of quests that drive the best result for each game.

## Milestone-Based Incentives

The BGMA team will be incentivised to receive between $3000 and $10000 for simply joining BGMA and actively developing on top of the World Protocol. This incentive will be milestone-based, with half of it delivered once the World Protocol integration is completed and the game is running fully on-chain on BOOM DAO’s gaming infrastructure. The other half will be tied to usage metrics post-integration and after Gaming Guilds are leveraged by the game.

## Weekly Office Hours

In order to hold everyone accountable to deliver the best results for the community, the BOOM DAO core team will hold weekly office hours with each BGMA participant. These weekly office hours will be tailor-made to review the progress of each project on a weekly basis. And to assess their challenges, their needs, and help them execute on their most important next steps.

## Monthly Cross-Game Workshop

Each month at least one Cross-Game Workshop for on-chain games will be organised where all BGMA games will participate. The main goal of this workshop is to connect all games together to create synergies through on-chain cross-game collaborations. This will lead to active collaborations and grow network effects among the projects building on the World Protocol.

## Cross-Game Commitment

Collaboration is a key requirement for joining BGMA and achieving our collective mission. The games joining BGMA must commit to building cross-game on-chain collaborations through the BOOM Gaming Guilds and other initiatives. This commitment comes from the critical understanding that growing network effects collectively will ultimately benefit each game individually. This is why this commitment is considered as a key driver to BOOM DAO’s ecosystem growth.


## What are the main benefits for joining the BOOM Game Makers Alliance?

By joining BGMA, game teams will enjoy many different benefits that play a pivotal role in their success:

* They position their game in one of the hottest trends in web3: fully on-chain games and autonomous worlds. And building in one of the most innovative blockchains since Bitcoin and Ethereum: the Internet Computer.

* They receive ongoing technical support from an experienced collective of builders to create their fully on-chain game or autonomous world.

* They enjoy milestone-based compensation to support them with funding in their development.

* They leverage Gaming Guilds and cross-game partnerships as user acquisition tools to grow their userbase.

* They are part of a collective that finds joy in seeing other game teams succeed, and are aware that everyone’s work directly affects their peers in the most mutual and positive way.


## Conclusion

We firmly believe that the BOOM Game Makers Alliance has the potential to serve as a catalyst, igniting network effects within BOOM DAO's gaming ecosystem. These effects are poised to extend influence to the ICP gaming vertical and the broader ICP ecosystem. It is essential to bear in mind that this proposal represents the initial iteration of BGMA's core process, with a commitment to continuous improvement guided by the invaluable feedback from our community.

At its core, BGMA embodies a well-defined process, accompanied by both requirements and benefits for the gaming teams. It's an unparalleled opportunity for the creation of fully on-chain games and autonomous worlds, fortified by comprehensive ongoing support. As BGMA evolves, so does the potential for pioneering advancements within the blockchain gaming landscape. We are excited about the journey ahead, and the transformative impact BGMA can have on the gaming ecosystem.
\";
        action = opt variant {
            Motion = record {
                motion_text = \"A Motion Proposal for BOOM Game Makers Alliance.\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json