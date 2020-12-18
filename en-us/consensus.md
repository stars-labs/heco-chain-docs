# Consensus
`Heco` adopts `HPoS` consensus mechanism with low transaction cost, low transaction latency, high transaction concurrency, and supports up to 21 validators.

HPoS is a combination of PoA and Pos. To become a validator, you need to submit a proposal first and wait for other active validators to vote on it, after more than half of them pass, you will be eligible to become a validator. Any address can stake to an address that qualifies to become a validator, and after the validator's staking volume ranks in the top 21, it will become an active validator in the next epoch.


All active verifiers are ordered according to predefined rules and take turns to pack out blocks. If a validator fails to pack out a block in time in its own round, the active validators who have not involved  in the past n/2 (n is the number of active validators) blocks will randomly perform the block-out. At least n/2+1 active validators work properly to ensure the proper operation of the blockchain.


The difficulty value of a block is 2 when the block is generated normally and 1 when the block is not generated in a predefined order. when a fork of the block chain occurs, the block chain selects the corresponding fork according to the cumulative maximum difficulty.

## Glossary 
- validator. Responsible for packaging out blocks for on-chain transactions.
- active validator. The current set of validators responsible for packing out blocks, with a maximum of 21.
- epoch. Time interval in blocks, currently 1epoch = 200block on `Heco`. At the end of each epoch, the blockchain interacts with the system contracts to update active validators.

## System contract
The management of the current validators are all done by the system contracts.
- Proposal  Responsible for managing access to validators and managing validator proposals and votes.
- Validators Responsible for ranking management of validators, staking and unstaking operations, distribution of block rewards, etc..
- Punish Responsible for punishing operations against active validators who are not working properly.

Blockchain call system contracts：
- At the end of each block, the `Validators` contract is called and the fees for all transactions in the block are distributed to active validators.
- The `Punish` contract is called to punish the validator  when the validator is  not  working properly.
- At the end of each epoch, the `Validators` contract is called to update active validators, based on the ranking.

## Staking
For any account, any number of coins can be staked to the validator, and the minimum staking amount for each validator is `32HT`.
If you want to unstake, you need to do the following:
1. Send an unstaking transaction for a validator to the `Validators` contract;
2. Waiting for `86400` blocks before sending a transaction to `Validators` contract to withdraw all staking coins on this validator;

## Punishment
Whenever a validator is found not to pack block as predefined, the `Punish` contract is automatically called at the end of this block and the validator is counted. When the count reaches 24, all income of the validator is punished. When the count reaches 48, the validator is removed from the list of active validators, and the validator is disqualified.