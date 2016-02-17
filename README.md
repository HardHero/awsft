#AWSFT
#Purpose
While working in Chef, I needed a way to get a new simple server for node bootstrapping. My chef workstation could not handle Test Kitchen. AWS Free Tier offers a completely free machine, but setting up a new instance of one takes time. These are just a set of scripts to make managing a single ubuntu free tier instance in AWS easier.

#System Requirements
  ubuntu 14.04
  
  AWS CLI
  
  JQ
  
  Note: these are untested on other systems

#Getting Set Up
1.Install AWS CLI: http://docs.aws.amazon.com/cli/latest/userguide/installing.html#install-with-pip

2.Install jq: apt-get install jq

3.Clone this repo

4.????

5.Profit

#Current Functionality
Create Ubuntu free tier instance
Tag Instance
Terminate Ubunut Instance

#Future Functionality
Simple Describe-Instance
Create Other free tier instances

