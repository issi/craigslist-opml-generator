# Abstract
  The purpose of this program is to generate a list of RSS feeds using shell script.
This generated list is written by opml format. Therefore, the list can be used for RSS reader APPs such as "Reeder, Feedbin".
In addition, one of the benefits is for us to change searching words adding the Query List.
Another benefit is that the list is sorted by each query. So, we will not be bothered by any sorting works.

# Usage

1. Open the terminal.app
1. `curl -OL https://gist.github.com/kotashiratsuka/0d4393b36f6964be993e0ca558d979d1/raw/2213e5e71d7f39bd4f63913337cc5f77503ae846/opml_generator.sh`
1. `./opml_generator.sh > export.opml`
1. import `export.opml` your rss feed services
