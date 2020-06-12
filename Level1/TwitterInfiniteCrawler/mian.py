import csv
import time

from bs4 import BeautifulSoup
from selenium import webdriver


url = 'https://twitter.com/OfficialDGISPR'
fname = 'output.csv'
path_to_chromedriver = r'D:\Py Projects\Minion\chromedriver83.exe' # Change it with yours


def scroll(url):
    """[summary]
    scroll the web page down infinitely
    Arguments:
        url {[string]} -- [twitter url of the page]
    Returns:
        [string] -- [html of the complete page]
    """
    browser = webdriver.Chrome(executable_path = path_to_chromedriver)
    browser.get(url)
    last = browser.execute_script('return document.body.scrollHeight')
    while True:
        browser.execute_script('window.scrollTo(0, document.body.scrollHeight);')
        time.sleep(5)
        nxt = browser.execute_script('return document.body.scrollHeight')
        if nxt == last:
            break
        else:
            last = nxt
            parse(browser.page_source, fname)

def parse(html, fname):
    """[summary]
    extract time and tweet from raw html. write the time and tweet in to csv file
    Arguments:
        html {[string]} -- [html of web page]
        fname {[string]} -- [output file name]
    """
    soup = BeautifulSoup(html, "html.parser")
    twts = []
    for item in soup.find_all('article'):
        twt = item.get_text()
        twts.append({
            'tweet': twt
        })
    with open(fname, mode='w') as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=['tweet'])
        writer.writeheader()
        writer.writerows(twts)
    return

if __name__ == "__main__":
    html = scroll(url)
