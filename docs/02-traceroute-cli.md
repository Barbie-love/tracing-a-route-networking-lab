# Part 2: Tracing a Route Using Traceroute

## Objective

I used the Linux `traceroute` command to examine the path packets took from my VM toward Cisco and an African Regional Internet Registry (RIR) website.

## Commands Used

### Cisco traceroute

```bash
traceroute www.cisco.com
```

I then saved the traceroute output with:

```bash
traceroute www.cisco.com > cisco-traceroute.txt
```

I viewed the saved output with:

```bash
cat cisco-traceroute.txt
```

### AFRINIC traceroute

I selected AFRINIC as the Regional Internet Registry website and used:

```bash
traceroute afrinic.net > afrinic-traceroute.txt
```

I then viewed the saved output with:

```bash
cat afrinic-traceroute.txt
```

| Command | Meaning |
|---------|---------|
| `traceroute` | Shows the hops between the source and destination |
| `>` | Redirects command output into a file |
| `cat` | Displays the contents of a file |

## Results: Cisco

The Cisco traceroute resolved the destination to:

`e2867.dsca.akamaiedge.net (2.18.12.107)`

The trace reached hop 17 but I stopped it manually with `Ctrl+C` before the destination was reached.

### Cisco hops observed

| Hop | Address | Response |
|---:|---|---|
| 1 | `172.20.10.1` | 3.111, 3.041, 2.998 ms |
| 2 | `10.9.53.1` | 57.658, 41.744, 37.484 ms |
| 3 | `10.9.102.125` | 39.807, 37.907, 43.259 ms |
| 4 | `10.226.228.4` | 40.229, 35.272, `*` |
| 5 | `10.226.228.29` | 263.901, 51.878, 39.808 ms |
| 6 | `10.226.224.10` | 52.237, 27.984, 40.424 ms |
| 7 | `10.226.224.14` | 37.992, 40.999, 57.058 ms |
| 8 | `102.89.59.10` | 52.221, 62.306, 60.675 ms |
| 9 | `102.88.156.7` | 61.314, 95.951, 34.818 ms |
| 10 | `184.27.46.5` | 45.794, 55.954, 57.807 ms |
| 11 | `23.3.104.1` | 41.655, 75.419, 44.054 ms |
| 12 | `* * *` | No replies |
| 13 | `* * *` | No replies |
| 14 | `* * *` | No replies |
| 15 | `* * *` | No replies |
| 16 | `* * *` | No replies |
| 17 | `* *` | Trace stopped before completion |

Raw output: [`outputs/02-traceroute-cisco.txt`](../outputs/02-traceroute-cisco.txt)

![Cisco traceroute](../screenshots/part2-traceroute-cli/01-traceroute-cisco.png)

![Saved Cisco traceroute](../screenshots/part2-traceroute-cli/02-cat-cisco-traceroute-txt.png)

## Cisco observations

The first hop was `172.20.10.1`, a private IP address. Several following hops also used private `10.x.x.x` addresses.

Hop 5 showed a large variation in response time because its first response was `263.901 ms`, while the next two were `51.878 ms` and `39.808 ms`.

Hops 12 through 16 did not return responses. These `* * *` results do not by themselves prove that the routers were down because routers can be configured not to respond to traceroute probes.

The destination was not reached because I manually stopped the trace at hop 17.

## Results: AFRINIC

The Regional Internet Registry website I traced was:

`afrinic.net`

The destination resolved to:

`196.216.3.4`

The trace reached the destination at hop 18.

### AFRINIC hops observed

| Hop | Address | Response |
|---:|---|---|
| 1 | `172.20.10.1` | 3.500, 3.306, 3.345 ms |
| 2 | `10.9.53.1` | 53.659, 81.885, 39.777 ms |
| 3 | `10.9.102.121` | 38.152, 39.544, 42.145 ms |
| 4 | `* * *` | No replies |
| 5 | `10.226.228.29` | 61.065, 35.430, 47.974 ms |
| 6 | `10.226.224.11` | 30.548, 39.567, 40.153 ms |
| 7 | `10.226.224.14` | 19.636, 65.190, 37.982 ms |
| 8 | `102.89.59.14` | 43.954, 46.586, 53.706 ms |
| 9 | `41.181.247.208` | 282.995, 307.091, 312.876 ms |
| 10 | `41.181.244.177` | 279.180, 292.620, 343.297 ms |
| 11 | `41.181.244.179` | 1227.916, 328.921, 288.884 ms |
| 12 | `195.66.227.253` | 302.927, 306.336, 307.087 ms |
| 13 | `168.209.90.91` | 614.721, 321.158, 599.357 ms |
| 14 | `168.209.90.36` | 617.783, 610.481, 511.278 ms |
| 15 | `168.209.129.137` | 636.613, 591.702, 614.518 ms |
| 16 | `196.37.155.172` | 614.320, 554.205, 366.831 ms |
| 17 | `196.192.114.48` | 614.234, 361.650, 457.337 ms |
| 18 | `196.216.3.4` | 326.114 `!X`, 872.520 `!X`, 336.248 `!X` |

Raw output: [`outputs/03-traceroute-rir.txt`](../outputs/03-traceroute-rir.txt)

![AFRINIC traceroute](../screenshots/part2-traceroute-cli/03-traceroute-rir.png)

## AFRINIC observations

The AFRINIC trace contained one completely unanswered hop at hop 4.

A significant increase in latency appeared later in the route. Hop 11 had one response of `1227.916 ms`, while the other two responses were `328.921 ms` and `288.884 ms`.

The destination `196.216.3.4` responded at hop 18, but all three responses contained the `!X` marker.

## Interpretation

The traceroute results show that the route contains both private and public IP addresses. The private addresses near the beginning of the traces show part of the internal network path.

Latency did not increase smoothly at every hop. Some hops had large differences between their three probes, and some hops did not respond at all.

I did not use IP addresses alone to claim the physical location of individual routers. The screenshots provide the addresses, but they do not establish the geographic location of every router.