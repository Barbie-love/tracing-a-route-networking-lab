# Concepts and Glossary

| Term | My explanation |
|------|----------------|
| **ICMP** | Internet Control Message Protocol. It is used for network control and diagnostic messages. Ping uses ICMP echo requests and replies. |
| **Ping** | A network diagnostic command that checks whether a host responds and measures round-trip time. |
| **Round-trip time (RTT)** | The time required for a packet to travel to the destination and for the response to return to the source. |
| **Packet loss** | The percentage of packets that do not receive a response. My ping test showed 0% packet loss. |
| **Traceroute / tracert** | A diagnostic tool that reveals the hops between a source and destination. Linux uses `traceroute`, while Windows commonly uses `tracert`. |
| **Hop** | One step in a routed network path, normally representing a router that processed the packet. |
| **TTL (Time To Live)** | A value in an IP packet that limits how many routing hops the packet can make. Traceroute uses different TTL values to identify successive hops. |
| **Router** | A network device that forwards packets between networks based on routing information. |
| **FQDN** | A fully qualified domain name. In my ping output, `redirect-ns.cisco.com` was shown as the responding hostname. |
| **ISP** | Internet Service Provider. It provides connectivity between a customer's network and other networks on the Internet. |
| **Mirror / CDN** | A mirror or Content Delivery Network can provide copies of content from different servers or locations, which can cause users in different places to reach different IP addresses. |
| **Regional Internet Registry (RIR)** | An organisation responsible for distributing and managing Internet number resources such as IP address space in a particular region. I traced `afrinic.net`, the AFRINIC website. |
| **Bridged vs NAT adapter** | A bridged adapter connects the VM to the network as a device on the same network as the host. I used Bridged Adapter for this lab. |

## What I observed

My ping test showed successful connectivity with 0% packet loss.

The traceroute results showed several private `10.x.x.x` addresses near the beginning of the routes. Some hops did not respond, which appeared as `* * *`.

The AFRINIC trace reached the destination IP at hop 18, while the Cisco trace was manually stopped at hop 17 before reaching its destination.

## Diagram

A simple diagram can be added later to represent the general path:

```text
My VM
  |
  v
Private network hops
  |
  v
Public network / ISP
  |
  v
Internet routers
  |
  +----> Cisco destination
  |
  +----> AFRINIC destination
```