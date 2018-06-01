package com.pea

import grails.gorm.transactions.Transactional
import grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class TeacherService {

    def serviceMethod() {

    }
    def uploadImage(MultipartFile file, String name, String destinationDirectory){
        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)
        def storagePathDirectory = new File(storagePath)

        if(!storagePathDirectory.exists()){
            println("creating directort ${storagePath}")

            if(storagePathDirectory.mkdirs()){
                println "SUCCESS"
            } else {
                print "FAILED"
            }
        }
        if(!file.isEmpty()){
            file.transferTo(new File("${storagePath}/${name}"))
            println("Saved File: ${storagePath}/${name}")
            return true
        } else{
            println "File: ${file.inspect()} was empty"
            return false
        }
    }
}
