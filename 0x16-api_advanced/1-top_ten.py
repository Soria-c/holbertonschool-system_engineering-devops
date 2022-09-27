#!/usr/bin/python3
from requests import get
"""Api test"""


def top_ten(subreddit):
    """Prints the titles of the first 10 hot posts
    listed for a given subreddit."""
    if subreddit is None or type(subreddit) is not str:
        return 0

    r = get("https://reddit.com/r/{}/hot.json".format(subreddit),
            headers={"User-Agent": "aea"})
    if r.status_code == 200:
        for i in r.json().get('data', {}).get('children', 0)[0:10]:
            print(i.get('data').get('title'))
        return
    print(None)
