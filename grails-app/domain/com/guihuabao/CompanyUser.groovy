package com.guihuabao

class CompanyUser {
    String name
    static belongsTo = [bumen:Bumen]
    static constraints = {
    }
}
