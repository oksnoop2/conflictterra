# Installing Conflict Terra on Linux #

Because Conflict Terra is still heavily in development, updates are often and numerous.  Because of this, we're using an easy-to-use updating tool to distribute the game.  To install Conflict Terra on Linux, you'll need the "rapid" tool.
Instructions on getting this tool can be found [here](http://pypi.python.org/pypi/rapid-spring).

However, you may not need to go through those steps to get rapid. Many linux
distros include rapid in their package managers. For example, users of most debian-
based distros (like Ubuntu) need only install the package "rapid-spring", like so:

```
sudo apt-get install rapid-spring
```

Once you have "rapid" installed you can instruct it to install Conflict Terra with the command:

```
rapid pin ct:test
```

You can update all of your rapid packages with the command:

```
rapid upgrade
```


---


For Linux Distributions with apt-get (like Ubuntu, Debian, and Mint) you can just do this:

  * Open Command Line
  * Copy and Paste the lines below into the terminal.

```
sudo apt-get install python-dev python-setuptools python-pip

sudo easy_install rapid-spring

rapid pin ct:test
```

  * Enter your password, and Congratulations! You've successfully installed Conflict Terra!