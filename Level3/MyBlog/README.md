DB
```python
if __name__ == 'main':
    db.init_app(app=app)
    db.create_all(app=app)
    app.run(debug=True)
```
