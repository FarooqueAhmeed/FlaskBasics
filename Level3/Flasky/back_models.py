# coding: utf-8
from sqlalchemy import CHAR, Column, DECIMAL, Date, ForeignKey, String, Table
from sqlalchemy.dialects.mysql import CHAR, INTEGER, VARCHAR
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
metadata = Base.metadata


t_allreviews = Table(
    'allreviews', metadata,
    Column('reader_name', String(255)),
    Column('review_date', Date),
    Column('review_content', String(512))
)


class Author(Base):
    __tablename__ = 'author'

    author_id = Column(INTEGER(11), primary_key=True)
    author_name = Column(String(255), nullable=False)
    author_birthday = Column(Date)
    author_nationality = Column(String(255))
    author_email = Column(String(255))


class Book(Base):
    __tablename__ = 'book'

    book_isbn = Column(INTEGER(11), primary_key=True)
    p_id = Column(ForeignKey('publisher.publisher_id'), nullable=False, index=True)
    a_id = Column(ForeignKey('author.author_id', ondelete='CASCADE'), nullable=False, index=True)
    book_price = Column(DECIMAL(10, 2))
    book_name = Column(VARCHAR(255), nullable=False)
    pub_date = Column(Date)
    title_review_id = Column(ForeignKey('review.review_id', ondelete='SET NULL'), index=True)
    e_id = Column(ForeignKey('editor.editor_id'), index=True)

    a = relationship('Author')
    e = relationship('Editor')
    p = relationship('Publisher')
    title_review = relationship('Review', primaryjoin='Book.title_review_id == Review.review_id')


t_bookpubdetails = Table(
    'bookpubdetails', metadata,
    Column('book_name', String(255)),
    Column('p_name', String(255)),
    Column('editor_name', String(32))
)


class Collection(Base):
    __tablename__ = 'collection'

    collection_id = Column(INTEGER(11), primary_key=True)
    book_isbn = Column(ForeignKey('book.book_isbn'), nullable=False, index=True)
    lib_id = Column(ForeignKey('library.lib_id'), nullable=False, index=True)
    amount = Column(INTEGER(11))

    book = relationship('Book')
    lib = relationship('Library')


t_collectionofbook = Table(
    'collectionofbook', metadata,
    Column('book_name', String(255)),
    Column('lib_name', String(255)),
    Column('lib_address', String(255)),
    Column('amount', INTEGER(11))
)


t_detailofbook = Table(
    'detailofbook', metadata,
    Column('book_name', String(255)),
    Column('author_name', String(255)),
    Column('p_name', String(255))
)


class Editor(Base):
    __tablename__ = 'editor'

    editor_id = Column(INTEGER(11), primary_key=True)
    editor_name = Column(String(32), nullable=False)
    editor_title = Column(String(32))
    p_id = Column(ForeignKey('publisher.publisher_id'), nullable=False, index=True)

    p = relationship('Publisher')


class Library(Base):
    __tablename__ = 'library'

    lib_id = Column(INTEGER(11), primary_key=True)
    lib_name = Column(String(255), nullable=False)
    lib_address = Column(String(255), nullable=False)
    lib_email = Column(String(255))


t_librarydetails = Table(
    'librarydetails', metadata,
    Column('lib_name', String(255)),
    Column('lib_address', String(255)),
    Column('staff_name', String(255)),
    Column('staff_title', String(255)),
    Column('staff_phone', CHAR(32))
)


class Publisher(Base):
    __tablename__ = 'publisher'

    publisher_id = Column(INTEGER(11), primary_key=True)
    p_name = Column(String(255), nullable=False)
    p_location = Column(String(255))


class Reader(Base):
    __tablename__ = 'reader'

    reader_id = Column(INTEGER(11), primary_key=True)
    reader_name = Column(VARCHAR(255), nullable=False)
    reader_phone = Column(CHAR(32))
    reader_lib_id = Column(ForeignKey('library.lib_id'), nullable=False, index=True)

    reader_lib = relationship('Library')


class Review(Base):
    __tablename__ = 'review'

    review_id = Column(INTEGER(11), primary_key=True)
    comment_by = Column(ForeignKey('reader.reader_id'), nullable=False, index=True)
    review_date = Column(Date, nullable=False)
    review_content = Column(String(512), nullable=False)
    book_id = Column(ForeignKey('book.book_isbn', ondelete='RESTRICT', onupdate='RESTRICT'), nullable=False, index=True)

    book = relationship('Book', primaryjoin='Review.book_id == Book.book_isbn')
    reader = relationship('Reader')


class Staff(Base):
    __tablename__ = 'staff'

    staff_id = Column(INTEGER(11), primary_key=True)
    staff_name = Column(String(255), nullable=False)
    staff_title = Column(String(255))
    l_id = Column(ForeignKey('library.lib_id'), nullable=False, index=True)
    staff_phone = Column(CHAR(32))

    l = relationship('Library')
