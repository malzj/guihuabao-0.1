package com.guihuabao

class FrontController {

    def index() {
        print("!")
    }

    def login(){
        def username= params.username
        def password = params.password
        def companyUser = CompanyUser.findByUsernameAndPassword(username,password)
        if(!companyUser){
            flash.message = "您的账号密码输入有误"
           redirect(action: "index",id:1,msg:"您的账号密码输入有误")
            return
        }else {
            def date= new Date()
            def company= Company.get(companyUser.cid)
            if (company.dateUse>date){
                session.user=companyUser
                session.company=company
                redirect(action: "frontIndex")
            }else {
                flash.message ="您的公司账号已过期"
                redirect(action: "index",msg:"您的公司账号已过期")
                return
            }
        }

    }
    def frontIndex(){

    }
}
