export PEM_FILE="/Users/jarvis/.config/dfx/identity/default/identity.pem"
export DEVELOPER_NEURON_ID="fa98d03dc1ef9eb4db04f8ce1ced50b7fdd70143e575a507f89775f69f66beac"

quill sns --canister-ids-file ./sns_canister_ids.json --pem-file $PEM_FILE make-proposal  --proposal "(record {
        title = \"On-Chain Multiplayer Technical Design Proposal\";
        url = \"https://boomdao.xyz/\";
        summary = \"This proposal aims to provide an overview of the proposed technical design for the On-Chain Multiplayer roadmap milestone. 

## Why On-Chain Multiplayer?
BOOM DAO has met with numerous game projects building multiplayer games on ICP, and we've gathered feedback regarding game design, technical requirements, and multiplayer features. A unique design space has emerged where one player can interact with another player entirely through smart contract update calls. This opens the door to new game genres and use cases that will harness the network effects and composability of multiplayer smart contracts. Due to the high-latency of update calls on ICP, building a fully on-chain multiplayer game requires thinking from first principles. We've concluded that there's massive potential in exploring slow-paced game genres that are best suited for high-latency on-chain multiplayer, such as turn-based and time-based game genres. We've designed a multiplayer framework to make it seamless for any developer to configure a multiplayer game in a canister smart contract.

## The Requirements
When one player interacts with another player through a canister, the canister must be the authority that ensures the rules of the game are being followed. The canister replaces the role of a game server in traditional game architecture. All game logic must reside inside of the canister.

Considering this, the BOOM DAO team set out to design an on-chain multiplayer framework adhering to the following requirements:
 1. The multiplayer framework must be 100% on-chain in ICP canister smart contracts.
 2. The multiplayer framework must be deeply integrated with the World Protocol.
 3. The multiplayer framework must be generic enough to support a diverse array of game genres.
 4. Developers must be able to deploy and configure the multiplayer framework without having to write any canister code.
 5. Developers must be able to define the **rules** of each multiplayer action in their World canister.
 6. No player can break these rules, otherwise the World canister invalidates the action.

## The Design
With these requirements in mind, the BOOM DAO team crafted a technical design of the multiplayer framework in the World Protocol:
 1. Actions must be refactored to contain two SubActions that can be optionally configured.
 2. Each SubAction represents each player on either side of a multiplayer Action. One SubAction for the user who initiated the Action. One SubAction for the user who is being targeted.
 3. The World canister validates both players data against the SubActions to ensure the players aren't cheating, generates the outcomes for both SubActions, and then stores the outcomes in the players respective UserNode canisters.
 4. Action outcomes must support formulas that can run complex equations involving the data of both users and output a numeric outcome. Eg. ( userA.health - ( userB.attack * ( userB.swordDamage * userB.attackBuff * 0.25 ) ) )
 5. NFT/ICP/ICRC payments, transfers, minting, and burning would be handled by ActionConstraints instead of ActionPlugins. ActionPlugins will be deprecated. This will drastically improve developer experience and reduce code complexity.
 6. Transaction ledger history functionality must be added to the BOOM EXT V2 standard in order to validate NFT transfers for ActionConstraints that require an NFT transfer. The BOOM DAO team looks forward to the ICRC-7 NFT standard being finalized and released.
 7. With these new changes, the game client will only ever need to call one function in the World canister: the processAction() function.
 8. The processAction() function will only have two arguments, the targetPrincipalId and the actionId.
 9. The targetPrincipalId will be the player principal ID that the client is targeting for the multiplayer action. The actionId is the ID of the Action in the World canister that the client wants to call.
     
Furthermore, a matchmaking system and room partitioning system will be built to ensure canister data transmission is synchronized with player groupings in the World canister. The BOOM DAO team has decided to implement two different designs for the matchmaking/room system to give game developers flexibility to choose the design that fits their needs.

The first design will use a matchmaking and room system built directly into the World canister and use polling to query the UserNode canisters every two seconds to fetch the latest state changes of users in a room. This design is 100% on-chain as the clients are polling the World canister directly.

The second design will leverage the Websocket framework built by the Omnia team to implement room partitioning and canister data synchronization. The Websocket framework relies on a **websocket gateway** hosted off-chain that polls canisters and relays any updates to the connected clients. There aren't any security vulnerabilities in the Websocket framework, since the websocket gateway cannot tamper, reorder or block messages being passed through. However, the main concern is ensuring 100% up-time for websocket gateways in case they fail or stop working. There also needs to be a way to ensure websocket gateway providers are compensated and incentivized to host many gateways in many geo-locations around the world. The benefit of using the Websocket framework is that clients can front-run sending messages to each other while waiting for the World canister to validate a multiplayer action. This could be useful for front-running visual changes where a game client could make a visual change for the user before the multiplayer action in the World canister has finished processing. It could also be useful for multiplayer simulation, in order for a player to see other players running around in their environment.

Both designs connect to the same canister smart contracts, it's simply the game client code that differs between the designs. Game developers will be able to make their decision on which implementation they prefer to use.

The BOOM DAO team is thrilled to give an overview of the technical designs for the On-Chain Multiplayer roadmap milestone. We look forward to continuing our work of building the multiplayer framework and integrating it with innovative games building on ICP.

\";
        action = opt variant {
            Motion = record {
                motion_text = \"A motion proposal for On-Chain Multiplayer Technical Design\";
            }
        };
    }
)" $DEVELOPER_NEURON_ID > motion_follow_beacon_neuron.json
quill send motion_follow_beacon_neuron.json