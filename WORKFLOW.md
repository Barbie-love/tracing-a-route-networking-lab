# Workflow: From Lab to GitHub Portfolio

Work in this order and tick each box as you go.

## Phase A: Prepare
- [ ] Start the CyberOps Workstation VM and log in with the credentials given in your lab sheet.
- [ ] In VirtualBox: **Machine > Settings > Network > Adapter 1 > Attached to: Bridged Adapter** (needed if traceroute returns nothing).
- [ ] Take a screenshot of the network setting -> `screenshots/setup/`.
- [ ] Fill in the **Environment** table in `README.md`.

## Phase B: Do the lab and capture evidence
- [ ] **Part 1:** run `ping -c 4 www.cisco.com`. Screenshot, then save the output. See `docs/01-ping-connectivity.md`.
- [ ] **Part 2:** run `traceroute www.cisco.com`, save it with `>`, view it with `cat`. Repeat for one RIR site. See `docs/02-traceroute-cli.md`.
- [ ] **Part 3:** use the web traceroute tool listed in your lab sheet. Screenshot the input and the map. See `docs/03-web-traceroute.md`.
- [ ] Optional shortcut: `scripts/run_lab.sh` runs and saves Parts 1 and 2 for you (still take your own screenshots).

## Phase C: Document
- [ ] Copy real terminal output into the files in `outputs/`.
- [ ] Add screenshots using the filenames suggested in each `screenshots/*/README.md`.
- [ ] Complete each file in `docs/` in your own words.
- [ ] Answer the two questions in `docs/analysis-and-reflection.md`.
- [ ] Update the Quick Results Summary, Key Takeaways and Status in `README.md`.

## Phase D: Publish
Create an empty repository named `Tracing_a_Route_Lab` on GitHub (no README, since we already have one), then in the project folder:

```bash
git init
git add .
git commit -m "Add Tracing a Route lab documentation"
git branch -M main
git remote add origin https://github.com/Barbie-love/Tracing_a_Route_Lab.git
git push -u origin main
```

Afterwards, on GitHub: add a repo description, add topics (`networking`, `traceroute`, `cybersecurity`, `cisco-netacad`, `cyberops`, `lab`), and pin the repository to your profile.

## Phase E: Share
- [ ] Use `templates/linkedin-post-template.md` to write your post.
- [ ] Link the repository in the post.

## Commit habit (suggested)
Commit after each phase with a clear message, for example:
`Add Part 1 ping output and screenshots`, `Complete Part 2 traceroute analysis`.
