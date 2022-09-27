#!/usr/bin/python3
from requests import get
"""Api test"""


def number_of_subscribers(subreddit):
    """Returns the subscribers amount for a given subreddit"""

    if subreddit is None or type(subreddit) is not str:
        return 0

    r = get("https://reddit.com/r/{}/about.json".format(subreddit),
            headers={"User-Agent": "aea"})
    if r.status_code == 200:
        return r.json().get('data', {}).get('subscribers', 0)
    return 0
