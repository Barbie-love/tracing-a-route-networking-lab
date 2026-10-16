# Troubleshooting Log

## Result

I did not encounter a troubleshooting problem while completing this lab.

The VM had network connectivity, the ping test returned replies, and I was able to run the traceroute commands and save their output to files.

The `* * *` entries in the traceroute results were recorded as observed results rather than treated as troubleshooting failures. Some routers do not respond to traceroute probes.

I also manually stopped the Cisco traceroute at hop 17 because I chose to stop the trace before the destination was reached. This was part of the test result and was not a technical problem.

## Environment

- Host operating system: Windows 10 Pro
- Hypervisor: VirtualBox
- VM network mode: Bridged Adapter
- Date performed: 2026-10-15