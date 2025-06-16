## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

```shell
$ forge create src/SimpleStorage.sol:SimpleStorage --rpc-url http://0.0.0.0:8011 --private-key <your_private_key> --legacy --zksync
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

```bash
forge create SimpleStorage --interactive --rpc-url http://127.0.0.1:8545 --broadcast
```

```bash
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545
```

```bash
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key <private_KEY>
```

``` bash
cast send 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "store(uint256)" 123 --rpc-url $RPC_URL --private-key $PRIVATE_KEY
```

```bash
cast call 0xB7f8BC63BbcaD18155201308C8f3540b07f84F5e "retrieve()"
```