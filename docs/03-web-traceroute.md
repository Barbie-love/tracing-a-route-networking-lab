# Part 3: Tracing a Route Using a Web-Based Tool

## Objective

I used a web-based traceroute tool to view a route to Cisco and compare the visual result with my command-line traceroute.

## Tool Used

I opened the G Suite.Tools Visual Traceroute page in Firefox:

`https://gsuite.tools/traceroute`

I used the traceroute feature and reviewed the resulting map.

## Observations

The screenshot shows a visual map with numbered hop markers.

The visible map includes markers around the United Kingdom and Sweden. However, the screenshot does not provide enough information for me to reliably identify every hop or claim the physical location of every router.

I therefore do not assign geographic locations to individual IP addresses unless the web traceroute result explicitly provides that information.

![Web traceroute map](../screenshots/part3-web-traceroute/03-hop-locations-map.png)

## Comparison With the Command-Line Traceroute

The command-line traceroute started from my VM and showed the individual IP addresses and response times observed from my network.

The web-based traceroute is different because the trace is performed by the external web service rather than directly from my VM. Therefore, its route and geographic map do not necessarily match the route shown by my local command-line traceroute.

The web tool is useful for visualising a route, while the command-line traceroute provides the detailed hop addresses and timing from my own network connection.

## Geographic Location

I did not infer the physical location of routers from their IP addresses alone. If I need to investigate the geographic ownership or approximate registration location of a particular public IP, I can perform a separate IP lookup and document the lookup source and its limitations.