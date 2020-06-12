import socket
import threading
from datetime import datetime

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
 
 # Make sure client.py has same port as this
_port = 1113


s.bind((socket.gethostname(),_port))
s.listen(5) 
def t(clientsocket) :
    print("Connection from "+str(address)+ " has been established!")
    clientsocket.send(bytes("Welcome to the server", "utf-8"))
    while True :
        data = clientsocket.recv(1024).decode("utf-8")
        data=data.lower()
        data=data.replace("?", "")
        data=data.strip()
        if data=='hi' or data == 'hello' :
            clientsocket.send(bytes('--> Hello', "utf-8"))
        elif data=='are you real' :
            clientsocket.send(bytes('--> No,I am a bot !', "utf-8"))
        elif data=='what is your name' :
            clientsocket.send(bytes('--> Hi,My name is Sahil', "utf-8"))
        elif data=='how old are you' :
            clientsocket.send(bytes('--> I am 24 hours old', "utf-8"))
        elif data=='where do you live' :
            clientsocket.send(bytes('--> I live in a Git repo', "utf-8"))
        elif data=='how can you help me' :
            clientsocket.send(bytes('--> I can answer your questions', "utf-8"))
        elif data=='which languages do you speak' :
            clientsocket.send(bytes('--> I speak C,Python,java,Dart,HTML,CSS and many more', "utf-8"))
        elif data=='how are you' :
            clientsocket.send(bytes('--> I am fine. How are you ?', "utf-8"))
        elif data=='what time is it' :
            now = datetime.now()
            current_time = now.strftime("%H:%M:%S")
            clientsocket.send(bytes("--> It's " + current_time + " ", "utf-8"))
        elif data=='what are your hobbies' :
            clientsocket.send(bytes('--> Answering your questions', "utf-8"))
        elif data=='what do you look like' :
            clientsocket.send(bytes('--> I look like an interesting Python3 code', "utf-8"))
        elif data=='bye' :
            clientsocket.send(bytes('--> Thank you.Bye', "utf-8"))
            break
        else :
            print("--> Hello ChatBot runner..Its your time to answer this Query !!\n")
            print("--> Query is : " + data + "\n")
            output=""
            output=input("--> What would you like to reply on this ??\n")
            clientsocket.send(bytes(output, "utf-8"))



while True :
    clientsocket, address = s.accept() 
    th=threading.Thread(target=t,args=(clientsocket,))
    th.start()
