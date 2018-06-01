package com.pea
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class UserController {

    def index() {
        def users = User.list()
        [ulist:users]
    }

    def create(){}

    def save(){
        println('-------------------'+params)

        def user = new User()
        user.username=params.username
        user.password=params.password

        user.save(flush: true)

//        def role = new Role(authority: 'ROLE_USER')
        def role = Role.findByAuthority('ROLE_USER')
        role.save(flush:true)

        def user1 = User.findByUsername(params.username)

        UserRole.create(user1,role,true)

        println("user created successfully")

        redirect(action:'index')

    }
    def changePassword(){

    }
}
