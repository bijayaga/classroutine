package classroutine

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class SectionController {

    def index() {
        redirect(action: "create")
    }

    def create(){

    }

    def save(){
        def section = new Section()
        section.groupName = params.groupName
        section.shift = params.shift
        section.startDate = params.startDate
        section.remarks = params.remarks

        section.save(flush:true)

        redirect(action: "list")
    }

    def list(){
        def slist = Section.list()
        render(view: "list", model: [sectionList:slist])
    }

    def delete() {
        def id = params.id
        def originalSection = Section.get(id)
        originalSection.delete(flush: true)

        redirect(action: "list")
    }

    def edit(){
        def id = params.id
        def specificSection = Section.get(id)

        render(view: "edit", model: [editSection: specificSection])
    }

    def update() {
        def id = params.id
        def originalSection = Section.get(id)

        originalSection.groupName = params.groupName
        originalSection.shift = params.shift
        originalSection.startDate = params.startDate
        originalSection.remarks = params.remarks

        originalSection.save(flush: true)

        redirect(action: "list")
    }

    def search() {
        def shift = params.shift
        def slist
        if(shift){
            slist = Section.createCriteria().list {
                like("shift", "${params.shift}%")
            }
            render(view: "list", model: [sectionList: slist])
        }
    }
}
