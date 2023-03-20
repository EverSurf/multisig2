#!/bin/sh
sed '/pragma ton-solidity/a pragma upgrade oldsol;' SetcodeMultisig.sol > UpdateMultisig.sol
