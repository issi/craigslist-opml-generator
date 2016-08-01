# Abstract
  The purpose of this program is to generate a list of RSS feeds using shell script.
This generated list is written by opml format. Therefore, the list can be used for RSS reader APPs such as "Reeder, Feedbin".
In addition, one of the benefits is for us to change searching words adding the Query List.
Another benefit is that the list is sorted by each query. So, we will not be bothered by any sorting works.

# Usage

1. `git clone git@github.com:issi/craigslist-opml-generator.git`
1. `cd craigslist-opml-generator`
1. `./opml_generator.sh > craigslist.opml`
1. Raunch Reeder on MacOS X
1. Menu -> Preferences -> Accounts -> Add Account -> RSS (local no syncing) and if other settings more
1. Menu -> Subscriptions -> Import from OPML..
1. Select a file Dialog -> `craigslist.opml`
1. dane
