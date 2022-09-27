#!/usr/bin/python3
from requests import get
"""Api test"""


def recurse(subreddit, hot_list=[]):
    """R1eturns a list containing the titles of all
    hot articles for a given subreddit"""
    if subreddit is None or type(subreddit) is not str:
        return 0
    if not hot_list:
        hot_list.extend([[], ""])

    r = get("https://reddit.com/r/{}/hot.json?after={}"
            .format(subreddit, hot_list[1]),
            headers={"User-Agent": "aea"})
    if r.status_code == 200:
        hot_list[1] = r.json().get('data', {}).get("after", None)
        hot_list[0].extend(r.json().get('data').get('children'))
        if (hot_list[1] is None):
            return hot_list[0]
        result = recurse(subreddit, hot_list)
    else:
        return None
    return result
