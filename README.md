<meta name="title" content="multisig2">
<meta name="description" content="Multisig v2 wallet">
<meta name='keywords' content='Surf, multisig, smart-contracts, blockchain, solidity, everscale, everos, venom-blockchain, venom-developer-program'>

# Multisignature Wallet 2.0

[![GitHub](https://img.shields.io/github/license/EverSurf/multisig2?style=for-the-badge)](./LICENSE)

**Status**: Released

## Developer program

<a href="https://github.com/venom-blockchain/developer-program">
 <img src="https://raw.githubusercontent.com/venom-blockchain/developer-program/main/vf-dev-program.png" alt="Logo" width="366.8" height="146.4">
</a>

There are 3 versions of multisig wallet:

- [SafeMultisig](./build/SafeMultisig.tvc) - multisignature wallet without upgrade feature;

    code hash: `7377910a1b5d0c8073ba02523e139c7f42f9772fe0076a4d0b211ccec071eb7a`

- [SetcodeMultisig](./build/SetcodeMultisig.tvc) - multisignature wallet with upgrade feature.

    code hash: `d66d198766abdbe1253f3415826c946c371f5112552408625aeb0b31e0ef2df3`

    **IMPORTANT**: don't use SetcodeMultisig to update old mulsitig wallet.

- [UpdateMultisig](./build/UpdateMultisig.tvc) - copy of setcode multisignature wallet but with ability to update old [setcode](https://github.com/tonlabs/ton-labs-contracts/tree/master/solidity/setcodemultisig)/[surf](https://github.com/EverSurf/contracts/tree/main/surfmultisig) multisig.

    code hash: `ea5f076ec0a49db435eb74fbef888a2fe7d470787c14210d923f487394f53245`

    NOTE: run `create_updmsig.sh` to generate UpdateMultisig.sol from SetcodeMultisig.sol.

## How to build SafeMultisig and SetcodeMultisig

### Build [sold 0.66.0](https://github.com/tonlabs/TON-Solidity-Compiler/tree/0.66.0/sold)

`sold` is an utility with solidity compiler and linker in one binary. 

sold v0.66.0 includes

- [TON-Solidity Compiler 0.66.0](https://github.com/tonlabs/TON-Solidity-Compiler/tree/0.66.0)

- [tvm_linker 0.18.4](https://github.com/tonlabs/TVM-linker/releases/tag/0.18.4)

### Build smart contract

```bash
    sold SafeMultisig.sol
    sold SetcodeMultisig.sol
```

NOTE: you can compile and link multisig wallet manually using required compiler & linker versions.

## How to build UpdateMultisig 

#### Run bash script

```bash
    ./create_updmsig.sh
```

#### Build [sold 0.66.0](https://github.com/tonlabs/TON-Solidity-Compiler/tree/0.66.0/sold)

#### Compile with sold

```bash
    sold UpdateMultisig.sol
```