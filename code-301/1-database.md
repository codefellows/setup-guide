# Code 301

## MongoDB Database

MongoDB is a NoSQL Database (Document Store) server that we will be using throughout Code 301. In this step, we'll be installing MongoDB on your system and preparing it for use.

MongoDB comes in 2 parts, a **client** and a **server** ... the **server** runs constantly, waiting for **clients** to connect to it so that they can store and retrieve data. The **server** does the actual management of the data. You'll get much deeper into the inner workings of these during your coursework.

## Installation

The installation steps are slightly different if you're running a Mac or Windows/Linux. Please follow the appropriate directions below.

### Mac Users

Open your terminal, and run the following commands to install the MongoDB client and server.

This will take a short time to complete. Once it does, you'll need to "start" the mongo database server so that we can make sure **clients** can connect.

```bash
brew tap mongodb/brew
brew install mongodb-community
```

After installation completes, run the following command to start the MongoDB Server:

```bash
brew services start mongodb-community
```

### Windows/WSL Users

> Note: Because of ongoing WSL2 changes, local install may not simply work.  If this is the case, your instructor will have an online option they will share in class. If your MongoDB installation does not work after the first attempt, take a screen shot of the terminal to submit in place of the `mongosh` validation (mentioned below), and *move forward without local MongoDB installation.* 

**Complete the following sections of [Microsoft's directions](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#install-mongodb{:target="_blank"}).**

- [Install MongoDB](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#install-mongodb){:target="_blank"}
- [Add the init script to start MongoDB as a service](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#add-the-init-script-to-start-mongodb-as-a-service){:target="_blank"}

Once you have finished, run `sudo service mongodb status` and you should see the status of `[ OK ]` on the left side of the screen; if not, run `sudo service mongodb start` to start up the database server.

### Pure Linux Users

Run these commands, in order, to install MongoDB. Note that for this installation, we'll be using `apt` instead of `brew`.

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
sudo apt-get install gnupg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
```

After installation completes, we'll need to setup MongoDB as a "service" so that it can easily be restarted.  Enter the following commands, in order, to set this up:

```bash
sudo curl -s https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d -o /etc/init.d/mongod
sudo chmod 755 /etc/init.d/mongod
sudo service mongod start
```

**On Ubuntu Linux**, mongo will now automatically restart on every reboot.

## Validate that clients can connect

Now, let's make sure we can connect to the MongoDB server. Run this command:

```bash
mongosh
```

You should see something similar to the following:

```bash
Current Mongosh Log ID: 63604c9f419a468d5c5fd283
Connecting to:  mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.5.4
Using MongoDB:  6.0.0
Using Mongosh:  1.5.4

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

>
```

The `>` at the bottom is what you're really looking for. It's a prompt that lets you know you are connected with the **mongosh client** to your running **MongoDB server**

Take a screen shot of your terminal when you type in `mongosh`. You will submit this screen shot along with your other computer set-up screen shots for this assignment.

Type `exit` to return to your bash shell. MongoDB is successfully installed.

---

### [⇐ Previous](./) | [Next ⇒](./2-code-challenges)
