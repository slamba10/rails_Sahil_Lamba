<<<<<<< HEAD
<<<<<<< HEAD
# A Virtual Machine for Ruby on Rails

## Introduction

This project automates the setup of a development environment for working with Ruby on Rails. Use this virtual machine to work on a pull request with everything ready to hack and run the test suites.

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone https://github.com/rails-decal/rails-dev-box.git
    host $ cd rails-dev-box
    host $ vagrant up

That's it.

After the installation has finished, you can access the virtual machine with

    host $ vagrant ssh
    Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-55-generic x86_64)
    ...
    vagrant@rails-dev-box:~$

Port 3000 in the host computer is forwarded to port 3000 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:3000 in the host computer. Be sure the web server is bound to the IP 0.0.0.0, instead of 127.0.0.1, so it can access all interfaces:

    bin/rails server -b 0.0.0.0

## What's In The Box

* Development tools

* Git

* Ruby 2.2

* Bundler

* SQLite3, MySQL, and Postgres

* Databases and users needed to run the Active Record test suite

* System dependencies for nokogiri, sqlite3, mysql, mysql2, and pg

* Memcached

* Redis

* RabbitMQ

* An ExecJS runtime

## Recommended Workflow

The recommended workflow is

* edit in the host computer and

* test within the virtual machine.

Just clone your Rails fork into the rails-dev-box directory on the host computer:

    host $ ls
    bootstrap.sh MIT-LICENSE README.md Vagrantfile
    host $ git clone git@github.com:<your username>/rails.git

Vagrant mounts that directory as _/vagrant_ within the virtual machine:

    vagrant@rails-dev-box:~$ ls /vagrant
    bootstrap.sh MIT-LICENSE rails README.md Vagrantfile

Install gem dependencies in there:

    vagrant@rails-dev-box:~$ cd /vagrant/rails
    vagrant@rails-dev-box:/vagrant/rails$ bundle

We are ready to go to edit in the host, and test in the virtual machine.

This workflow is convenient because in the host computer you normally have your editor of choice fine-tuned, Git configured, and SSH keys in place.

## Virtual Machine Management

When done just log out with `^D` and suspend the virtual machine

    host $ vagrant suspend

then, resume to hack again

    host $ vagrant resume

Run

    host $ vagrant halt

to shutdown the virtual machine, and

    host $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    host $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://docs.vagrantup.com/v2/) for more information on Vagrant.

## Faster Rails test suites

The default mechanism for sharing folders is convenient and works out the box in
all Vagrant versions, but there are a couple of alternatives that are more
performant.

### rsync

Vagrant 1.5 implements a [sharing mechanism based on rsync](https://www.vagrantup.com/blog/feature-preview-vagrant-1-5-rsync.html)
that dramatically improves read/write because files are actually stored in the
guest. Just throw

    config.vm.synced_folder '.', '/vagrant', type: 'rsync'

to the _Vagrantfile_ and either rsync manually with

    vagrant rsync

or run

    vagrant rsync-auto

for automatic syncs. See the post linked above for details.

### NFS

If you're using Mac OS X or Linux you can increase the speed of Rails test suites with Vagrant's NFS synced folders.

With a NFS server installed (already installed on Mac OS X), add the following to the Vagrantfile:

    config.vm.synced_folder '.', '/vagrant', type: 'nfs'
    config.vm.network 'private_network', ip: '192.168.50.4' # ensure this is available

Then

    host $ vagrant up

Please check the Vagrant documentation on [NFS synced folders](http://docs.vagrantup.com/v2/synced-folders/nfs.html) for more information.

## License

Released under the MIT License, Copyright (c) 2012–<i>ω</i> Ruby on Rails Decal.

## Credits
Based on https://github.com/rails/rails-dev-box
=======
# rails_Sahil_Lamba

This is code for the Rails DeCal Homework Assignments
>>>>>>> 20ac83bfefaee66acf445e6b03d19d18d465b125
=======
# Rails Decal Fall 2015 Homework 1
This homework assignment involves writing scripts in ruby in order to get a feel for the Ruby
programming language.

## Q1
In hw1.rb there is a function called check_squared_sum.  It function takes two integers, a and b,
and calculates the sum of a and b, then returns the square of the sum.

## Q2
The second method you have to fill in is sort_array_plus_one.  This method takes in an array of
integers, sorts it, then increments every element by 1, and returns it.  It does not matter if this
method is destructive or not.

## Q3
The third method takes in two strings, a first_name and last_name.  It will return the first_name
concatenated with the last_name, along with a space in between.

Example:
```ruby
combine_name 'Howard', 'Chen'
 => 'Howard Chen'
```

## Q4
It's blockin' time!

In hw1.rb we defined a function called blockin_time that requires the foobar.rb file, and then calls
a class method 'baz' from the Foobar class.

If you take a look at the foobar.rb, you'll see that we've defined Foobar.
Write a class function in foobar.rb called baz that takes in an array of integers as strings,
changes each string into an integer, adds two to each number, keeps the even numbers only, takes out
any duplicates, rejects the resulting numbers greater than ten, and returns the sum of the resulting
array.


For example:

["1", "2", "3", "4", "5", "10"] returns 10. ((2+2) + (4+2)) = 10.

["1", "2", "2", "2", "3", "4", "5", "10"] also returns 10.

## Challenge
- Q1-Q3 can be written in 1 line and under 40 characters.  Q4 can be written in under 80 characters
in q line if you exclude the def and end statement.  Do this if you want an extra challenge.

- Check out the autograder.rb file and try to figure out how it works!

## Hints
- For Q2 check out these [docs about arrays](http://ruby-doc.org/core-2.2.0/Array.html).  In
web development there is a lot of doc reading to learn new libraries.

- For Q3 you might want to check out
[Ruby's string interpolation] (https://en.wikipedia.org/wiki/String_interpolation#Ruby).

- To open the ruby interpreter to help debug call the 'irb' command in your terminal on the h1.rb
file
```
irb hw1.rb
```

## How to check your Answers
In the base directory of this repo run 'ruby autograder.rb'.

```
ruby autograder.rb
```

If 'All functions work' appears in your terminal it means it passed our autograder.  We do go over
>>>>>>> 89a0a1eb0b3ad974d7ecf0169520bf74bfd316cd
