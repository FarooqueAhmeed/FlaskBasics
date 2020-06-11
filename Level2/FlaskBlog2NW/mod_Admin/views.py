from . import admin
from flask import session,render_template,request
from mod_users.forms import LoginForm   







@admin.route('/')
def index():
    return 'HELLO from admin Index'



@admin.route('/login/',methods=['GET','POST'])
def login():
    
    form=LoginForm(request.form)
    if request.method=="POST":
        print (f"Form Is Validated? {form.validate_on_submit()}")
    return render_template('admin/login.html',form=form)