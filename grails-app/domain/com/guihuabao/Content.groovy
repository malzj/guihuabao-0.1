package com.guihuabao

class Content {

    String title
    String content
    Date dateCreate
    static belongsTo = [chapter: Chapter]
    static constraints = {
        title(nullable: true)
        content(nullable: true)
        dateCreate(nullable: true)
    }
}
