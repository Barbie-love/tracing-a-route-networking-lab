# Analysis and Reflection

## Question 1

**Review the geographical locations of the responding hops. What did you observe regarding the path?**

The web-based traceroute displayed a route on a map and showed numbered hop markers, including visible markers around the United Kingdom and Sweden.

I did not assume that every router was physically located in the country represented by a map marker or by an IP address. The screenshot does not provide enough information to make a complete geographic claim about every hop.

The command-line traceroute provided IP addresses and response times, but it did not provide reliable geographic information for every router.

## Question 2

**How is the traceroute different when going to www.cisco.com or other websites from the terminal rather than from the online website?**

The command-line traceroute runs from my own VM, so the first hops represent the network path from my VM through my network and onward toward the destination.

The web-based traceroute is performed by the web service. Its starting point is therefore different from mine, so its route can be different from the route I observed with the Linux `traceroute` command.

The command-line result gives me detailed hop addresses and response times from my connection. The web-based tool adds a visual map that can make the route easier to understand geographically when location information is available.

## Reflection

My Cisco traceroute did not reach the destination because I stopped it manually at hop 17. The AFRINIC traceroute reached `196.216.3.4` at hop 18 and returned `!X` markers.

The two traces also showed that some routers did not respond to the traceroute probes. This is visible as `* * *` in the output.

The latency was not constant along either route. For example, the AFRINIC trace included a `1227.916 ms` response at hop 11, while other probes at the same hop had much lower values.

If I repeated the tests at another time, I would not assume that every hop or response time would remain identical. Internet routing and network conditions can change.

Traceroute can help identify where delays or missing responses appear along a path, but it has limitations because some routers filter or ignore traceroute probes.

## Environment

- Host operating system: Windows 10 Pro
- Hypervisor: VirtualBox
- VM network mode: Bridged Adapter
- Date performed: 2026-10-15