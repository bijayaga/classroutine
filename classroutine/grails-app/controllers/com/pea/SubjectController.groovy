package com.pea

import classroutine.Section
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class SubjectController {

    def index() {
        redirect(action: "create")

    }

    def create(){

    }

    def save(){
        def subject = new Subject(params)
        subject.save(flush:true)

    }

    def list(){
        def slist = Subject.list()
        render(view: "list", model: [subjectList:slist])
    }

    def update(){
        def id = params.id
        def originalSubject = Subject.get(id)

        originalSubject.subjectName = params.subjectName

        originalSubject.save(flush: true)

        redirect(action: "list")
    }

    def edit(){

        def id = params.id
        def specificSubject = Subject.get(id)

        render(view: "edit", model: [editSubject: specificSubject])
    }

    def delete(){
        def id = params.id
        def originalSubject = Subject.get(id)
        originalSubject.delete(flush: true)

        redirect(action: "list")

    }
}
