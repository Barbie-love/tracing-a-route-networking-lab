#!/usr/bin/env bash
# run_lab.sh: runs the ping and traceroute commands from the lab and saves the output.
# Usage:   bash scripts/run_lab.sh [RIR_SITE]
# Example: bash scripts/run_lab.sh www.afrinic.net
# Run it from the repository root, inside the CyberOps VM.

RIR_SITE="${1:-www.afrinic.net}"
OUT_DIR="outputs"
mkdir -p "$OUT_DIR"

stamp() { date "+%Y-%m-%d %H:%M:%S %Z"; }

echo "[*] Part 1: ping www.cisco.com"
{ echo "# Run at: $(stamp)"; ping -c 4 www.cisco.com; } > "$OUT_DIR/01-ping-cisco.txt" 2>&1

echo "[*] Part 2a: traceroute www.cisco.com (may take a minute)"
{ echo "# Run at: $(stamp)"; traceroute www.cisco.com; } > "$OUT_DIR/02-traceroute-cisco.txt" 2>&1

echo "[*] Part 2b: traceroute $RIR_SITE"
{ echo "# Run at: $(stamp)"; traceroute "$RIR_SITE"; } > "$OUT_DIR/03-traceroute-rir.txt" 2>&1

echo "[+] Done. Review the files in $OUT_DIR/ and take your own screenshots."
