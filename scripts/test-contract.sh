#!/usr/bin/env bash
# test-contract.sh
#
# Runs the Soroban contract test suite with output.
# Usage: bash scripts/test-contract.sh

set -euo pipefail

echo ""
echo "🧪 Running Soroban Contract Tests"
echo "=================================="
echo ""

cd contracts/escrow_contract

# Format check
echo "📐 Checking format…"
cargo fmt -- --check
echo "   ✅ Format OK"
echo ""

# Clippy
echo "🔍 Running Clippy…"
cargo clippy -- -D warnings
echo "   ✅ Clippy OK"
echo ""

# Tests
echo "🧪 Running tests…"
cargo test -- --nocapture 2>&1
echo ""
echo "=================================="
echo "✅ All contract checks passed!"
