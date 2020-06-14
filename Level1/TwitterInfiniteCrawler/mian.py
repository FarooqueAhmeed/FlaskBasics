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
    # start Chrome
    options = webdriver.ChromeOptions()
    options.add_argument('--disable-gpu')
    options.add_argument('--no-sandbox')
    options.add_argument('headless')


    browser = webdriver.Chrome(executable_path = path_to_chromedriver, options=options)
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
    print(twts)
    with open(fname, mode='w', encoding="utf-8") as csv_file:
        try:
            writer = csv.DictWriter(csv_file, fieldnames=['tweet'])
            writer.writeheader()
            writer.writerows(twts)
        except UnicodeEncodeError as err:
            print(err)
    return

if __name__ == "__main__":
    html = scroll(url)




## https://stackoverflow.com/questions/50616865/remain-logged-into-account-using-selenium
'''
ogin.live.com is a redirection page and cookies are not associated with it. Use the page of cookies i.e. https://account.microsoft.com

So while re-loading the session, load the page and then load cookies -

import pickle
from selenium import webdriver
browser = webdriver.Chrome("./chromedriver") 
browser.get('https://login.live.com')
pickle.dump(browser.get_cookies() , open("login_live.pkl","wb"))
browser.quit()
browser = webdriver.Chrome("./chromedriver") 
browser.get('https://account.microsoft.com')
for cookie in pickle.load(open("login_live.pkl", "rb")):
    browser.add_cookie(cookie)

'''



# https://stackoverflow.com/questions/48768826/search-facebook-profiles-with-selenium-headless-browser
'''
import os
import sys
import wget
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from pyvirtualdisplay import Display
from selenium.webdriver.support import expected_conditions as EC # available since 2.26.0

display = Display(visible=0, size=(800, 800))
display.start()

options = webdriver.ChromeOptions()
options.add_argument('headless')
options.add_argument('--no-sandbox')
driver = webdriver.Chrome(chrome_options=options)


driver.get("http://facebook.com") # load the web page

email = driver.find_element_by_xpath("//input[@name='email']") 
password = driver.find_element_by_xpath("//input[@name='pass']") 
btn = driver.find_element_by_xpath("//input[@value='Logga in']") 

email.send_keys("email@email.com") 
password.send_keys("password") 
btn.click()

searchbox = driver.find_element_by_xpath("//form[@action='/search/web/direct_search.php']//input") 
searchbox.send_keys("name") 

src = driver.page_source 
print src.encode('utf-8')
driver.close() 




1

I solved it by putting another request after btn.click()

driver.get("https://www.facebook.com/search/top/?q=name")

'''