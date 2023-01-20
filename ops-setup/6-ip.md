# Ops Setup

Keep track of your IP address. 

## Get Your Internet Protocol (IP) Address

1. Review this walkthrough on [how the ip command works](https://itsfoss.com/check-ip-address-ubuntu/){target: "_blank"}
1. Use the `ip a` command in the Terminal to check your IP address.
1. Identify your IPv4 address from the output of the `ip a` command and write it down/take note somewhere.
   - If you wrote down `127.0.0.1` as your IP address, that's not quite right. Re-read the link above and look a little closer.
> If you're really having trouble identifying the IPv4 address from the output of `ip a`, trying running the `hostname -I` command.

## Optional: Establish Remote Connection
At this point you should be able to use RDP to connect from your home computer to your lab computer, if you wish. Or feel free to continue working directly on your lab machine.

If you encounter trouble establishing a connection, just continue to the next step.

---

### [⇐ Previous](./5-system.md) | [Next ⇒](./7-wrapup.md)