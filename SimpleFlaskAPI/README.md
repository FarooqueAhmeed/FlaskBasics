# Flask Rest API
Flask Rest API Sample using Flask-RESTful


#To run the App
1. Install dependencies
2. Run main.py
3. This is REST application so you can call it but it does not have any interface. This is a service (like weather service we use to call in JS)
4. You can call it in JS or you can use API testing tool like postman (https://www.postman.com/downloads/) to test it (Try to download portable version). A very good tutorial for postman (https://www.guru99.com/postman-tutorial.html)
5. Fire up Postman
![Postman Fire up](./images/postman fire up.png)
6. As you can see our API have 4 endpoints as on line 123 in _main.py_

```python
api.add_resource(Add, '/add')
api.add_resource(Subtract, '/subtract')
api.add_resource(Multiply, '/multiply')
api.add_resource(Divide, '/divide')
```
and can be accessed as 
* http://127.0.0.1:5000/add
* http://127.0.0.1:5000/substract
* http://127.0.0.1:5000/multiply
* http://127.0.0.1:5000/divide

and they are all Post requests not GET. You might ask how would I know that?
```python
class Divide(Resource):
    def post(self): ##POST Request
```


```python
class Multiply(Resource):
    def post(self): ##POST Request
```

Same goes for add and subtract.
7. Choose POST form drop down add write Endpoint in textbox
![Choose POST](./images/choose method.png)

8. Click on body, to assign payload
![Body](./images/body.png)

9. Choose Raw and JSON format in dropdown
![Body](./images/raw.png)

9. Write following payload in textbox and click on send (make sure flask app is running before hitting send button)

```json
{
    "x": 30,
    "y": 80
}
```

![payload](./images/payload.png)

x and y are parameters, How would I know that?
```python
class Add(Resource):
    def post(self):
        posteddata = request.get_json()
        status_code = checkposteddata(posteddata, 'add')
        if status_code != 200:
            retjson = {
                'Message': 'An error occured',
                'status Code': status_code
            }
            return jsonify(retjson)
        else:
            x = posteddata["x"]# Getting X from dict
            y = posteddata["y"]# Getting Y from dict
            x = int(x)
            y = int(y)
            z = x + y #Add them
            retmap = {
                'Message': z,
                'Status Code': 200,
            }
            return jsonify(retmap)
 
 ```
            
```python
status_code = checkposteddata(posteddata, 'multiply')
        if status_code != 200:
            retjson = {
                'Message': 'An error occured',
                'status Code': status_code
            }
            return jsonify(retjson)
        else:
            x = posteddata["x"] # Getting X from dict
            y = posteddata["y"] # Getting Y from dict
            x = int(x)
            y = int(y)
            z = x * y # Multiplying them
            retmap = {
                'Message': z,
                'Status Code': 200,
            }
return jsonify(retmap) # Send results back
```

func is name of function / operation

10. Here is the result
![Body](./images/result.png)


##### You can call this in HTML in JS also by running _CallWithJS.html_ file 
#Did you remember CORS error we fought with while writing weather application???

At that time server was not written by us, we were just consuming API but now we have our _main.py_ as our server.
So to tackle CORS while calling from JS we have added these lines in main.py:
```python
@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Origin', '*') #Allow requests from every IP
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE') # All these HTTP verbs
    return response
``` 
##### pip install flask-cors does the same but we used native flask decorator after_request which executes after each request

## How Do I call it in JS
Run _CallWithJS.html_, _CallWithFormData.html_ and _CallWithFormData2.html_

These operations are performed on Flask Server and simulate operations. These operations can be as simple as adding 2 numbers or processing DB records or running heavy ML models or SnapChat Filters on your mobile phone.
#### Do discuss if you are stuck somewhere. Dont just remain stumbled all the time
##Good Luck
 
    
