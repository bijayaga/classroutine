package classroutine

import com.pea.Subject
import com.pea.User
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class TeacherController {

    def teacherService

    def index() {
        redirect(action:"register")
    }



    def register(){

    }

    def save(){
        def getFile = params.teacherImage
        println(params)
        def okContentTypes = ['image/jpeg', 'image/png', 'image/jpg']

        if (!okContentTypes.contains(getFile.getContentType())) {
            render "invalid image"
        } else {
            def fileUploaded = teacherService.uploadImage(getFile, getFile.getOriginalFilename(), "assets/images")
            println " fileUpload = $fileUploaded"
            if(fileUploaded){
                def teacher = new Teacher()
                teacher.fullName = params.fullName
                teacher.codeName = params.codeName
                teacher.permanentAddress = params.permanentAddress
                teacher.temporaryAddress = params.temporaryAddress
                teacher.mobileNo = params.mobileNo
                teacher.email = params.email
                teacher.gender = params.gender


//                teacher.subjectEngaged = Subject.findBySubjectName(params.subjectEngaged)
                teacher.subjectEngaged = params.subjectEngaged
                teacher.timeStatus = params.timeStatus
                teacher.joinDate = params.joinDate
                teacher.otherInstitute = params.otherInstitute
                teacher.remarks = params.remarks
                teacher.teacherImage = getFile.getOriginalFilename()

                teacher.save(failOnError:true)


                redirect(action: "list")
            }
        }
    }

    def edit(){
        def id = params.id
        def specificTeacher = Teacher.get(id)

        render(view: "edit", model: [editTeacher: specificTeacher])
    }

    def update(){

        println("params:" + params)
        def id = params.id
        println(id)
        def originalTeacher = Teacher.get(id)

        originalTeacher.fullName = params.fullName
        originalTeacher.codeName = params.codeName
        originalTeacher.permanentAddress = params.permanentAddress
        originalTeacher.temporaryAddress = params.temporaryAddress
        originalTeacher.mobileNo = params.mobileNo
        originalTeacher.email = params.email
        originalTeacher.gender = params.gender

        originalTeacher.subjectEngaged = params.subjectEngaged
        originalTeacher.timeStatus = params.timeStatus
        originalTeacher.joinDate = params.joinDate
        originalTeacher.otherInstitute = params.otherInstitute
        originalTeacher.remarks = params.remarks
        originalTeacher.teacherImage = originalTeacher.teacherImage

        originalTeacher.save(failOnError:true,flush:true)


        redirect(action: "list")
    }

    def delete(){

        def id = params.id
        def originalTeacher = Teacher.get(id)
        originalTeacher.delete(flush: true)

        redirect(action: "list")
    }

    def list(){

        def max = params.max ? params.int('max') : 10
        params.max = Math.min(max, 100)

        def tlist = Teacher.list(params)
        render(view: "list", model: [teacherList:tlist,count:Teacher.count()])
    }

    def search(){
        def teacher = params.codeName
        def subject = params.subject
        def tlist
        if(teacher){
            tlist = Teacher.createCriteria().list {
                like("codeName", "${params.codeName}%")
            }
            render(view: "tprofile", model: [teacherList:tlist])
        }else if(subject){
            tlist = Teacher.createCriteria().list {
                like("subjectEngaged", "${params.subject}%")
            }
            render(view: "list", model: [teacherList:tlist,count:Teacher.count()])
        }

    }

    def tprofile(){

    }

    def checkIfExist(){
        println("------"+params)


    }
}


