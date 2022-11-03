# APT

For some things on your system, we will be using Advanced Package Tool, referred to as `apt`, to install applications. The first thing we'll want to do is get that up to date with all of the latest versions and information.

---

## Installing and Updating the Linux App Manager (APT)

1. Run the command:
   - `sudo apt-get update`
      - Provide your password, when prompted (**_Note:_** _You will not have any visual feedback on your screen as you type. It is protecting your password by not displaying ANYTHING at all to the screen, but it is registering your key strokes._)
1. Once that is complete, run:
   - `sudo apt-get upgrade`
      - Press `y` when prompted.
1. Once that is complete, run:
   - `sudo apt autoremove`
      - This will remove any packages that are no longer needed.
1. Install the "Build Essentials" kit with this command:
   - `sudo apt-get install build-essential`

---

### [⇐ Previous](./1-environment.md) | [Next ⇒](./3-homebrew.md)
