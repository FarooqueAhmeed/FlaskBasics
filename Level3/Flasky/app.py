import os
from flask_sqlalchemy import SQLAlchemy
from flask import request, redirect
from flask_admin import Admin, BaseView, expose
import datetime
from database import db
from flask_admin.contrib.sqla import ModelView
from flask_admin.model import BaseModelView
from models import *
from flask_admin import BaseView, expose


class AnalyticsView(BaseView):
    @expose('/')
    def index(self):
        return self.render('start.html', now=datetime.datetime.now())


basedir = os.path.abspath(os.path.dirname(__file__))
from flask import Flask, render_template

app = Flask(__name__)
app.config['SECRET_KEY'] = 'hard to guess string'
admin = Admin(app, name=u'MIS', template_mode='bootstrap3')
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:ABcd1121@localhost:3306/e3_1'
db_session = SQLAlchemy(app)


class LibView(ModelView):
    # create_modal = True
    # edit_modal = True
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('lib_name', 'lib_address')
    column_searchable_list = ['lib_name']
    column_list = ['lib_id', 'lib_name', 'lib_address', 'lib_email']
    column_editable_list = ['lib_name', 'lib_address', 'lib_email']
    form_columns = ['lib_id', 'lib_name', 'lib_address', 'lib_email']


class PublisherView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('p_name', 'p_location')
    column_searchable_list = ['p_name']
    column_editable_list = ['p_name', 'p_location']
    column_list = ['publisher_id', 'p_name', 'p_location']
    form_columns = ['publisher_id', 'p_name', 'p_location']


class EditorView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('editor_name', 'editor_title')
    column_searchable_list = ['editor_name']
    column_editable_list = ['editor_name', 'editor_title']
    column_list = ['editor_id', 'editor_name', 'editor_title', 'p_id']
    form_columns = column_list


class StaffView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('staff_name', 'staff_title')
    column_searchable_list = ['staff_name']
    column_editable_list = ['staff_name', 'staff_title', 'staff_phone']
    column_list = ['staff_id', 'staff_name', 'staff_title', 'l_id', 'staff_phone']
    form_columns = ['staff_id', 'staff_name', 'staff_title', 'l_id', 'staff_phone']


class AuthorView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('author_name', 'author_nationality')
    column_searchable_list = ['author_name']
    column_editable_list = ['author_name', 'author_birthday', 'author_nationality', 'author_email']
    column_list = ['author_id', 'author_name', 'author_birthday', 'author_nationality', 'author_email']
    form_columns = column_list


class ReaderView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('reader_name',)
    column_searchable_list = ['reader_name']
    column_editable_list = ['reader_name', 'reader_phone', 'reader_lib_id']
    column_list = ['reader_id', 'reader_name', 'reader_phone', 'reader_lib_id']
    form_columns = column_list


class BookView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('book_name',)
    column_searchable_list = ['book_name']
    column_editable_list = ['book_price', 'book_name', 'pub_date', 'e_id']
    column_list = ['book_isbn', 'p_id', 'a_id', 'book_price', 'book_name', 'pub_date', 'title_review_id', 'e_id']
    form_columns = column_list


class ReviewView(ModelView):
    can_export = True
    column_display_pk = True
    column_hide_backrefs = False
    column_filters = ('review_id', 'book_id')
    column_searchable_list = ['review_content']
    column_editable_list = ['review_content']
    column_list = ['review_id', 'comment_by', 'review_date', 'review_content', 'book_id']
    form_columns = column_list


class CollectionView(ModelView):
    can_export = True
    column_display_pk = False
    column_hide_backrefs = False
    column_filters = ('book_isbn', 'lib_id')
    column_searchable_list = ['book_isbn']
    column_editable_list = ['amount']
    column_list = ['collection_id', 'book_isbn', 'lib_id', 'amount']
    form_columns = ['book_isbn', 'lib_id', 'amount']


admin.add_view(PublisherView(Publisher, db_session.session, name='Publisher'))
admin.add_view(EditorView(Editor, db_session.session, name='Editor'))
admin.add_view(LibView(Library, db_session.session, name='Library'))
admin.add_view(StaffView(Staff, db_session.session, name='Staff'))
admin.add_view(AuthorView(Author, db_session.session, name='Author'))
admin.add_view(ReaderView(Reader, db_session.session, name='Reader'))
admin.add_view(BookView(Book, db_session.session, name='Book'))
admin.add_view(CollectionView(Collection, db_session.session, name='Collection'))
admin.add_view(ReviewView(Review, db_session.session, name='Review'))
admin.add_view(AnalyticsView(name='前台', endpoint='back'))


# @app.before_first_request


@app.route('/')
def start():
    now = datetime.datetime.now()
    return render_template('start.html', nav='start', now=now)


@app.route('/query-books-by-author', methods=['GET', 'POST'])
def query_books_by_author():
    if request.method == 'POST':
        author_name = request.form.get('author_name')
        sql = "SELECT * FROM detailofbook WHERE detailofbook.author_name = '%s' ;" % author_name
        cursor = db.cursor()
        try:
            cursor.execute(sql)
            db.commit()
            answer = cursor.fetchall()
            if answer:
                return render_template('detailofbooks.html', nav='book-details', details=answer)
            else:
                return render_template('query_books_by_author.html', error='no')
        except:
            db.rollback()
            return render_template('query_books_by_author.html', error='error')

    return render_template('query_books_by_author.html')


@app.route('/own-all')
def own_all():
    cursor = db.cursor()
    sql = '''SELECT
	library.lib_name,lib_address
    FROM
	library 
    WHERE
	NOT EXISTS ( 
	SELECT * FROM book 
	WHERE NOT EXISTS 
	(SELECT * FROM collection 
	WHERE collection.book_isbn = book.book_isbn 
	AND collection.lib_id=library.lib_id));'''
    try:
        cursor.execute(sql)
        db.commit()
        answers = cursor.fetchall()
        if answers:
            return render_template('own_all.html', answers=answers)
        else:
            return render_template('own_all.html', error='no')
    except:
        db.rollback()
        return render_template('own_all.html', error='error')


@app.route('/reader-info')
def reader_info():
    cursor = db.cursor()
    sql = "SELECT * FROM reader;"
    cursor.execute(sql)
    readers = cursor.fetchall()
    db.commit()
    return render_template('reader.html', nav='reader', readers=readers)


@app.route('/reader-reviews')
def reader_reviews():
    reader_old_id = request.args.get('reader_id')

    sql = '''SELECT
	reader.reader_name,
	review.review_date,
	review_content,
	book.book_name 
    FROM
	reader,
	review,
	book 
    WHERE
	reader.reader_id = '%s' 
	AND review.comment_by = reader.reader_id 
	AND review.book_id = book.book_isbn;''' % (reader_old_id)
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    answers = cursor.fetchall()
    if answers:
        return render_template('show_reviews.html', answers=answers)
    else:
        return render_template('show_reviews.html', error='no')


@app.route('/more-reviews', methods=['GET', 'POST'])
def more_reviews():
    if request.method == 'POST':
        views_amount = request.form.get('views_amount')
        print(views_amount)
        sql = '''SELECT reader.reader_name, reader.reader_id
        FROM reader
        WHERE reader_id IN 
        (SELECT comment_by FROM review 
        GROUP BY comment_by 
        HAVING COUNT(comment_by) > '%s');''' % views_amount
        cursor = db.cursor()
        try:
            cursor.execute(sql)
            db.commit()
            answers = cursor.fetchall()
            print(answers)
            if answers:
                return render_template('show_readers_views.html', answers=answers, nav='reader', amount=views_amount)
            else:
                return render_template('more_views.html', error='no')
        except:
            db.rollback()
            return render_template('more_views.html', error='error')

    return render_template('more_views.html')


@app.route('/library-details')
def library_details():
    sql = '''SELECT * FROM librarydetails'''
    cursor = db.cursor()
    try:
        cursor.execute(sql)
        db.commit()
        answers = cursor.fetchall()
        if answers:
            return render_template('library_details.html', answers=answers, nav='library-details')
        else:
            return render_template('more_views.html', error='no')
    except:
        db.rollback()
        return render_template('more_views.html', error='error')


@app.route('/find-staffs', methods=['GET', 'POST'])
def find_staffs():
    if request.method == 'POST':
        staff_name = request.form.get('staff_name')
        sql = "SELECT * FROM librarydetails WHERE librarydetails.staff_name = '%s' ;" % staff_name
        cursor = db.cursor()
        try:
            cursor.execute(sql)
            db.commit()
            answer = cursor.fetchall()
            if answer:
                return render_template('show_staff.html', nav='library-details', details=answer)
            else:
                return render_template('find_staff.html', error='no')
        except:
            db.rollback()
            return render_template('find_staff.html', error='error')

    return render_template('find_staff.html')


@app.route('/publish-details')
def publish_details():
    sql = "SELECT * FROM bookpubdetails"
    cursor = db.cursor()
    try:
        cursor.execute(sql)
        db.commit()
        answer = cursor.fetchall()
        if answer:
            return render_template('bookpubdetails.html', details=answer)
        else:
            return render_template('bookpubdetails.html', error='no')
    except:
        db.rollback()
        return render_template('bookpubdetails.html', error='error')


@app.route('/detail-of-books')
def detail_of_books_list():
    cursor = db.cursor()
    sql = "SELECT * FROM detailofbook;"
    cursor.execute(sql)
    db.commit()
    details = cursor.fetchall()
    return render_template('detailofbooks.html', nav='book-details', details=details)


@app.route('/collection-of-books')
def collction_of_books_list():
    cursor = db.cursor()
    sql = "SELECT * FROM collectionofbook;"
    cursor.execute(sql)
    db.commit()
    answer = cursor.fetchall()
    return render_template('collectionofbooks.html', nav='book-collections', collections=answer)












@app.route('/reader')
def reader_list():
    cursor = db.cursor()
    sql = "SELECT * FROM reader;"
    cursor.execute(sql)
    readers = cursor.fetchall()
    db.commit()
    return render_template('reader.html', nav='reader', readers=readers)


def mealformat(value):
    if value.hour in [4, 5, 6, 7, 8, 9]:
        return 'breakfast'
    elif value.hour in [10, 11, 12, 13, 14, 15]:
        return 'lunch'
    elif value.hour in [16, 17, 18, 19, 20, 21]:
        return 'dinner'
    else:
        return 'supper'


def datetimeformat(value):
    return value.strftime('%H:%M')


app.jinja_env.filters['meal'] = mealformat
app.jinja_env.filters['datetime'] = datetimeformat
if __name__ == '__main__':
    app.jinja_env.auto_reload = True
    app.run(debug=True)
