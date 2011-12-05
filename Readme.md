# EES - Easy Erlang Scaffold

EES is a neat little ruby gem that will generate scaffolds for erlang
projects / applications.

Its quite annoying to set everything up before the first line of actual code is
written. This little helper will make it easy and fast to spawn new projects,
apps and behaviours so you can focus on the coding part.

Right now it will also create a Guardfile so you can run your eunit tests automatically
whenever you save a file. Later on this will be optional.

## Installation

Until its released as a gem clone the project and run

```
cd ees && gem build ees.gemspec && gem install ees-x.x.x.gem
```

## Usage

```
# generate a new project scaffold
ees generate project my_neat_little_project

# generate a new application
ees generate application my_awesome_app

# generate a gen_server
ees generate gen_server my_module_name status:0 report:1 say_hello:2

```
