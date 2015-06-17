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
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "userShow", id: userInstance.id)
    }
    def userShow(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
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
}
