package com.guihuabao

import org.springframework.dao.DataIntegrityViolationException

class LoginController {
    def login(){
        def username = params.username
        def password = params.password
        def userInstance = User.findByUsernameAndPassword(username,password)
        if (!userInstance){
            redirect(action:'relogin')
            return
        }
        redirect(action:'userList')
    }
    def index() {}
    def userList(Integer max){
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }
    def relogin(){

    }
    def userCreate() {
        [userInstance: new User(params)]
    }
    def userSave() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "userCreate", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "userShow", id: userInstance.id)
    }
    def userShow(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "userList")
            return
        }

        [userInstance: userInstance]
    }
    def userEdit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "userList")
            return
        }

        [userInstance: userInstance]
    }
    def userUpdate(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }
    def userDelete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "userList")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "userList")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "userShow", id: id)
        }
    }

    def companyList(Integer max){
        params.max = Math.min(max ?: 10, 100)
        [companyInstanceList:Company.list(params), companyInstanceTotal: Company.count()]
    }
    def companyCreate(){
        [companyInstance: new Company(params)]
    }
    def companySave(){
        def companyInstance = new Company(params)
        if(!companyInstance.save(flush: true)){
            render(view: "companyCreate",model: [companyInstance: companyInstance])
        }

        flash.message =message(code: 'default.created.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
        redirect(action: "companyShow", id:companyInstance.id)
    }
    def companyShow(Long id){
        def companyInstance = Company.get(id)
        if(!companyInstance){
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), id])
            redirect(action: "companyList")
            return
        }
        [companyInstance: companyInstance]
    }
    def companyEdit(Long id){
        def companyInstance = Company.get(id)
        if(!companyInstance){
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), id])
            redirect(action: "companyList")
            return
        }
        [companyInstance: companyInstance]
    }
    def companyUpdate(Long id, Long version) {
        def companyInstance = Company.get(id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (companyInstance.version > version) {
                companyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'company.label', default: 'Company')] as Object[],
                        "Another user has updated this Company while you were editing")
                render(view: "edit", model: [companyInstance: companyInstance])
                return
            }
        }

        companyInstance.properties = params

        if (!companyInstance.save(flush: true)) {
            render(view: "edit", model: [companyInstance: companyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
        redirect(action: "show", id: companyInstance.id)
    }
    def companyDelete(Long id){
        def companyInstance = Company.get(id)
        if(!companyInstance){
            flash.message = message(code: 'default.not.found.message', args: [message(code:  'user.label', default: 'User'), id])
            redirect(action: "companyList")
            return
        }

        try{
            companyInstance.delete(flush: true)
            redirect(action: "companyList")
        }
        catch(DataIntegrityViolationException e) {
            redirect(action: "companyShow", id: id)
        }
    }
}
