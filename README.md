# Harmony Plus
[![Code Climate](https://codeclimate.com/github/xyixyi/harmony-plus/badges/gpa.svg)](https://codeclimate.com/github/xyixyi/harmony-plus)
[![Test Coverage](https://codeclimate.com/github/xyixyi/harmony-plus/badges/coverage.svg)](https://codeclimate.com/github/xyixyi/harmony-plus/coverage)
[![Issue Count](https://codeclimate.com/github/xyixyi/harmony-plus/badges/issue_count.svg)](https://codeclimate.com/github/xyixyi/harmony-plus)
[![Build Status](https://travis-ci.org/xyixyi/harmony-plus.svg?branch=master)](https://travis-ci.org/xyixyi/harmony-plus)

[![Coverage Status](https://coveralls.io/repos/github/xyixyi/harmony-plus/badge.svg?branch=master)](https://coveralls.io/github/xyixyi/harmony-plus?branch=master)

:rocket: [Pivotal Tracker:](https://www.pivotaltracker.com/n/projects/1544921)

:rocket: [Heroku](http://harmony-plus.herokuapp.com/)


:rocket: Team #37: Henry Gan, Yiran Rao, Hangpeng Zhao, Qianmei Luo, Xiaoyi Cheng, Shrayus Gupta

----------
We use Searchkick gem to enable the search function on /manager page to filter/search student applications.
If you use icloud9 or other web IDE, please make sure elastic search is running.

If you see "Connection refused = connect(2) for "localhost" port 9200 (Faraday::ConnectionFailed)",
you definitely want to see the instructions below:

Here is the code to install and start elastic search. [[reference](http://stackoverflow.com/questions/31477463/how-do-i-setup-searchkick-elasticsearch-on-the-new-nitrous-io-ide/31588991#31588991)]

```sh
# Firstly, uninstall:
sudo apt-get --purge autoremove elasticsearch

# then made a fresh install.
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.7.0.deb
sudo dpkg -i elasticsearch-1.7.0.deb

# enable on bootup
sudo update-rc.d elasticsearch defaults 95 10
```

Start the service:
```sh
# Start ElasticSearch 
sudo /etc/init.d/elasticsearch start

# Make sure service is running
curl http://localhost:9200

# Should return something like this:
# {
#  "status" : 200,
#  "name" : "Storm",
#  "version" : {
#    "number" : "1.3.1",
#    "build_hash" : "2de6dc5268c32fb49b205233c138d93aaf772015",
#    "build_timestamp" : "2014-07-28T14:45:15Z",
#    "build_snapshot" : false,
#    "lucene_version" : "4.9"
#  },
#  "tagline" : "You Know, for Search"
#}
```
Then 
```sh
rake searchkick:reindex:CLASS=Student
```
The search feature should be functonal now~