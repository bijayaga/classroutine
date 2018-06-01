package classroutine

import com.pea.Role
import com.pea.User
import com.pea.UserRole

class BootStrap {

    def init = { servletContext ->
/*        def teacher = new User(username:"teacher",password:"teacher")
        teacher.save(flush:true)
        def admin = new User(username:"admin",password:"admin")
        admin.save(flush:true)
        def teacherRole = new Role(authority:"ROLE_TEACHER")
        teacherRole.save(flush:true)
        def adminRole = new Role(authority: "ROLE_ADMIN")
        adminRole.save(flush:true)
        UserRole.create(admin,adminRole,true)
        UserRole.create(teacher,teacherRole,true)*/

    }
    def destroy = {
    }
}
