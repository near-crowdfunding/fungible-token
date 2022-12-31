#!/bin/sh

./build.sh

echo ">> Deploying contract"

near dev-deploy --wasmFile ../target/wasm32-unknown-unknown/release/fungible_token.wasm --initFunction new_default_meta --initArgs '{"owner_id": "trungtin2001.testnet", "total_supply": "100000000000000000000000000000"}'  -f