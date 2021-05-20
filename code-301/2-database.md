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

Follow [Microsoft's directions](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#install-mongodb){:target="_blank"} to install MongoDB on WSL. Once you have finished, run `sudo service mongodb status` and you should see the status of `OK`; if not, run `sudo service mongodb start` to start up the database server.

### Pure Linux Users

Run these commands, in order, to install MongoDB. Note that for this installation, we'll be using `apt` instead of `brew`.

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
sudo apt-get install gnupg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
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
mongo
```

You should see something similar to the following:

```bash
MongoDB shell version v4.4
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("854a9ce2-a75d-499c-bb51-5c6c7f57a4fd") }
MongoDB server version: 4.4
Server has startup warnings:
2020-06-12T15:53:07.715-0700 I  STORAGE  [initandlisten]
2020-06-12T15:53:07.715-0700 I  STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
2020-06-12T15:53:07.715-0700 I  STORAGE  [initandlisten] **          See http://dochub.mongodb.org/core/prodnotes-filesystem
2020-06-12T15:53:08.206-0700 I  CONTROL  [initandlisten]
2020-06-12T15:53:08.206-0700 I  CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2020-06-12T15:53:08.206-0700 I  CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2020-06-12T15:53:08.206-0700 I  CONTROL  [initandlisten]
2020-06-12T15:53:08.214-0700 I  CONTROL  [initandlisten]
2020-06-12T15:53:08.214-0700 I  CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/enabled is 'always'.
2020-06-12T15:53:08.214-0700 I  CONTROL  [initandlisten] **        We suggest setting it to 'never'
2020-06-12T15:53:08.214-0700 I  CONTROL  [initandlisten]
---
Enable MongoDB's free cloud-based monitoring service, which will then receive and display
metrics about your deployment (disk utilization, CPU, operation statistics, etc).

The monitoring data will be available on a MongoDB website with a unique URL accessible to you
and anyone you share the URL with. MongoDB may use this information to make product
improvements and to suggest MongoDB products and deployment options to you.

To enable free monitoring, run the following command: db.enableFreeMonitoring()
To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---

>
```

The `>` at the bottom is what you're really looking for. It's a prompt that lets you know you are connected with the **mongo client** to your running **mongo server**

Take a screen shot of your terminal when you type in `mongo`. You will submit this screen shot along with your other computer set-up screen shots for this assignment.

Type `exit` to return to your bash shell. MongoDB is successfully installed.

---

### [⇐ Previous](./1-heroku) | [Home ⇒](./3-code-challenges)
