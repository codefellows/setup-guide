# Code 401 Javascript Setup

## Install The Postgres Database Server

Postgres is an SQL (Relational) Database server that we will be using in some 401 level courses. In this step, we'll be installing Postgres on your system and preparing it for use.

Postgres comes in 2 parts, a **client** and a **server** ... the **server** runs constantly, waiting for **clients** to connect to it so that they can store and retrieve data. The **server** does the actual management of the data. You'll get much deeper into the inner workings of these during your coursework.

## Installation

Open your terminal, and run this command to install the Postgres client and server

```bash
brew install postgresql@14
```

This will take a short time to complete. (If prompted to restart your computer, do that now.) Once installation is finished, you'll need to "start" the postgres server so that we can make sure **clients** can connect. How we do this is slightly different for each operating system.

### Linux and Windows Users

Run this command to start the server

```bash
pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgresql@14 start
```

Note that the postgres server will not automatically re-start after your computer reboots, so you'll need to re-run that command anytime you restart or if your clients are unable to connect. To make that easier, we can create an **alias** so that you can do that with a single command. Run this command to create the alias:

```bash
echo 'alias pgstart="pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgresql@14 start"' >> ~/.zshrc
echo 'alias pgstop="pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgresql@14 stop"' >> ~/.zshrc
```

From this point onward, you can simply run `pgstart` or `pgstop` to start and stop your postgres server

### Mac Users

Postgresql 14 automatically starts in the background after installation, and whenever your computer reboots.

### Linux Users

On Linux, postgres can be setup to automatically start when your system reboots, so you do not have to run `pgstart` every time. To set this up, refer to the [Postgres Server Documentation](https://www.postgresql.org/docs/9.1/server-start.html) and follow the appropriate instructions for your Linux version to have postgres auto-start as a service.

## Create your "user" database

Once the server is up and running, we'll need to create a default database for our user. Run this command:

```bash
createdb `whoami`
```

## Validate that postgres clients can connect

Now, let's make sure we can connect to the postgres server. Run this command:

```bash
psql
```

You should see something similar to the following:

```bash
psql (12.3)
Type "help" for help.
yournamehere=#
```

Type `\q` to exit the postgres client application and return to your bash shell.

---

### [⇐ Previous](./2-aws.md) | [Home ⇒](./)
