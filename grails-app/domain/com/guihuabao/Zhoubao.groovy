package com.guihuabao

class Zhoubao {
    String uid
    String username
    String cid
    String year
    String month
    String week
    String performance
    String xinde
    String plan
    String cooperate
    Date dateCreate
    static constraints = {
        uid(nullable: true)
        username(nullable: true)
        cid(nullable: true)
        year(nullable: true)
        month(nullable: true)
        week(nullable: true)
        performance(nullable: true)
        xinde(nullable: true)
        plan(nullable: true)
        cooperate(nullable: true)
        dateCreate(nullable: true)
    }

}