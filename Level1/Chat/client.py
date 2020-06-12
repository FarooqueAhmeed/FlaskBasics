import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Make sure server.py has same port as this
_port = 1113


s.connect((socket.gethostname(), _port))
msg = s.recv(1024) 
print(msg.decode("utf-8"))
print("\n"+ "Welcome to chatBot\n")
while True :
    data=input("How can i help you ??\n")
    s.sendall(data.encode())
    msg1 = s.recv(1024) 
    if msg1.decode("utf-8") == '--> Thank you.Bye' :
        print(msg1.decode("utf-8"))
        break
    else : 
        print(msg1.decode("utf-8"))

