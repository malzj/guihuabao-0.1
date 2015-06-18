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

        [userInstance: new User(params),companyList: Company.list()]
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
            redirect(action: "userList")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "userEdit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "userEdit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "userShow", id: userInstance.id)
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
            redirect(action: "companyList")
            return
        }

        if (version != null) {
            if (companyInstance.version > version) {
                companyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'company.label', default: 'Company')] as Object[],
                        "Another user has updated this Company while you were editing")
                render(view: "companyEdit", model: [companyInstance: companyInstance])
                return
            }
        }

        companyInstance.properties = params

        if (!companyInstance.save(flush: true)) {
            render(view: "companyEdit", model: [companyInstance: companyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
        redirect(action: "companyShow", id: companyInstance.id)
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

    def roleList(Integer max){
        params.max = Math.min(max ?: 10, 100)
        [roleInstanceList:Role.list(params), roleInstanceTotal: role.count()]
    }
    def roleSave(){
        def roleInstance = new Role(params)
        if (!roleInstance.save(flush: true)) {
            render(view: "roleCreate", model: [roleInstance: roleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'role.label', default: 'Role'), roleInstance.id])
        redirect(action: "roleShow", id: roleInstance.id)
    }
    def roleShow(Long id) {
        def roleInstance = Role.get(id)
        if (!roleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleList")
            return
        }

        [roleInstance: roleInstance]
    }
    def roleEdit(Long id) {
        def roleInstance = Role.get(id)
        if (!roleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleList")
            return
        }

        [roleInstance: roleInstance]
    }
    def roleUpdate(Long id, Long version) {
        def roleInstance = Role.get(id)
        if (!roleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleList")
            return
        }

        if (version != null) {
            if (roleInstance.version > version) {
                roleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'role.label', default: 'Role')] as Object[],
                        "Another role has updated this Role while you were editing")
                render(view: "roleEdit", model: [roleInstance: roleInstance])
                return
            }
        }

        roleInstance.properties = params

        if (!roleInstance.save(flush: true)) {
            render(view: "roleEdit", model: [roleInstance: roleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'role.label', default: 'Role'), roleInstance.id])
        redirect(action: "roleShow", id: roleInstance.id)
    }
    def roleDelete(Long id) {
        def roleInstance = Role.get(id)
        if (!roleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleList")
            return
        }

        try {
            roleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleList")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'role.label', default: 'Role'), id])
            redirect(action: "roleShow", id: id)
        }
    }
}
