# Tracing a Route: Ping, Traceroute and Web-Based Traceroute

> Hands-on networking lab completed on the Cisco CyberOps Workstation VM as part of my cybersecurity learning path.

**Author:** Uzoeto Anneth ([@Barbie-love](https://github.com/Barbie-love))
**Lab source:** Cisco Networking Academy, *Lab - Tracing a Route* (CyberOps)
**Status:** 🟡 In progress (update this line to ✅ Completed when done)
**Date performed:** `YYYY-MM-DD`

---

## 1. Overview

This lab shows how a packet travels from my machine to a remote server across the internet. I used three techniques:

1. **Ping** to verify basic reachability and measure round-trip time.
2. **Traceroute** (Linux command line) to list every router ("hop") between me and the destination.
3. **A web-based traceroute tool** to see the same path visually on a map.

## 2. Objectives

- [ ] Part 1: Verify network connectivity using `ping`
- [ ] Part 2: Trace a route to a remote server using `traceroute`
- [ ] Part 3: Trace a route using a web-based traceroute tool
- [ ] Compare the results and answer the analysis and reflection questions

## 3. Environment

| Item | Details |
|------|---------|
| Host OS | `<fill in, e.g. Windows 11>` |
| Hypervisor | `<fill in, e.g. VirtualBox + version>` |
| VM | CyberOps Workstation VM |
| VM network mode | `<Bridged Adapter / NAT, whichever you used>` |
| Internet provider | `<fill in, optional>` |
| Targets traced | `www.cisco.com`, `<the RIR site you chose>` |

## 4. Repository Structure

```
Tracing_a_Route_Lab/
├── README.md                  <- you are here (project summary)
├── WORKFLOW.md                <- step-by-step: do the lab, then publish it
├── docs/                      <- detailed write-ups, one per lab part
├── screenshots/               <- evidence, organised by lab part
├── outputs/                   <- raw terminal output saved as text files
├── scripts/                   <- helper script to run and save the commands
├── templates/                 <- LinkedIn post template
└── .github/workflows/         <- automatic check for unfinished sections
```

## 5. Quick Results Summary

> Fill this in **only from your own real results**.

| Test | Target | Result |
|------|--------|--------|
| Ping (4 packets) | www.cisco.com | Packet loss: `__%` / Avg RTT: `__ ms` |
| Traceroute | www.cisco.com | Hops: `__` |
| Traceroute | `<RIR site>` | Hops: `__` |
| Web traceroute | www.cisco.com | Countries/regions seen: `__` |

## 6. Detailed Documentation

| Part | Write-up | Screenshots | Raw output |
|------|----------|-------------|------------|
| Concepts and glossary | [docs/concepts.md](docs/concepts.md) | n/a | n/a |
| Part 1: Ping | [docs/01-ping-connectivity.md](docs/01-ping-connectivity.md) | [screenshots/part1-ping](screenshots/part1-ping) | [outputs](outputs) |
| Part 2: Traceroute | [docs/02-traceroute-cli.md](docs/02-traceroute-cli.md) | [screenshots/part2-traceroute-cli](screenshots/part2-traceroute-cli) | [outputs](outputs) |
| Part 3: Web traceroute | [docs/03-web-traceroute.md](docs/03-web-traceroute.md) | [screenshots/part3-web-traceroute](screenshots/part3-web-traceroute) | n/a |
| Analysis and reflection | [docs/analysis-and-reflection.md](docs/analysis-and-reflection.md) | n/a | n/a |
| Troubleshooting log | [docs/troubleshooting.md](docs/troubleshooting.md) | [screenshots/troubleshooting](screenshots/troubleshooting) | n/a |

## 7. Key Takeaways

> Write 3 to 5 points in your own words after finishing the lab.

1. `<what a hop is and what traceroute reveals>`
2. `<what you noticed about latency along the path>`
3. `<why some hops did not respond>`
4. `<how CLI and web results differed>`

## 8. Skills Demonstrated

Network troubleshooting basics, ICMP and TTL concepts, Linux command line, virtual machine networking, reading and interpreting network output, technical documentation with Git and GitHub.

## 9. Credits and Disclaimer

The lab was created by Cisco Networking Academy. This repository contains **my own** commands, outputs, screenshots and written analysis. The original lab PDF is not reproduced here.
