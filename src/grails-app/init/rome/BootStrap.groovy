package rome

import grails.util.Environment

class BootStrap {
    def basicArtifactsService
    def testDataService
    def grailsApplication

    def init = { servletContext ->
        Collection.mixin CollectionMixin
    }

    def destroy = {

    }
}
