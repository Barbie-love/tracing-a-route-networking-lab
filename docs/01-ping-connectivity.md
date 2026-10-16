# Part 1: Verifying Network Connectivity Using Ping

## Objective
I used `ping` to verify connectivity to Cisco and measure the round-trip time between my VM and the destination.

## Command
```bash
ping -c 4 www.cisco.com
```

| Part | Meaning |
|------|---------|
| `ping` | Sends ICMP echo requests to a host |
| `-c 4` | Stop after sending 4 packets |
| `www.cisco.com` | The destination (a name that DNS turns into an IP address) |

## Expected result
Four replies with `time=` values, followed by a statistics summary (packets sent/received, % loss, min/avg/max RTT).

## My result
- Date and time: `2026-10-15`
- FQDN returned: `redirect-ns.cisco.com`
- IP address returned: `72.163.4.185`
- Packets transmitted / received: `20 / 20`
- Packet loss: `0%`
- RTT min / avg / max: `283.286 ms/355.348 ms/539.644 ms`

Raw output: [`outputs/01-ping-cisco.txt`](../outputs/01-ping-cisco.txt)

![Ping output](../screenshots/part1-ping/01-ping-cisco-output.png)

## Interpretation
The ping test was successful because all 20 packets received replies and there was 0% packet loss. The average round-trip time was 355.348 ms, which means a packet and its reply took about 355 ms on average.
The individual reply times varied, so the network delay was not exactly the same for every packet. The IP address returned for the hostname was 72.163.4.185, and the replies identified the host as redirect-ns.cisco.com.
I stopped the ping manually with Ctrl+C after the twentieth reply. The 40496 ms value shown in the summary is the total duration of the ping run, not the delay of one packet.

## Note to check
The `time` shown on the final `ping` summary line (for example `time 3005ms`) is the **total duration of the whole run**, not the delay of a single packet. The per-packet delay is the `time=` value on each reply line. Make sure your write-up uses the right one.
