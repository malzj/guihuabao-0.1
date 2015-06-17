package com.guihuabao

class Company {
    String companyname
    String remark
    Date dateUse
    Date dateCreat
    String address
    String phone

    static constraints = {
        companyname(nullable: true)
        remark(nullable: true)
        address(nullable: true)
        phone(nullable: true)
    }
}
