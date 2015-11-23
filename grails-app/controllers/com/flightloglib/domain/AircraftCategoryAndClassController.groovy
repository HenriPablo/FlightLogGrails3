package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class AircraftCategoryAndClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [aircraftCategoryAndClassInstanceList: AircraftCategoryAndClass.list(params), aircraftCategoryAndClassInstanceTotal: AircraftCategoryAndClass.count()]
    }

    def create() {
       // [aircraftCategoryAndClassInstance: new AircraftCategoryAndClass(params)]
        //
        respond new AircraftCategoryAndClass()
    }

    def save ( ) {
        params.name.each{i->
            System.out.println(i);
        }
        ['create', 'controller', 'format','action'].each { params.remove it }

        //params.exclude['create','Create ']
        def aircraftCategoryAndClassInstance = new AircraftCategoryAndClass(params)
        if (!aircraftCategoryAndClassInstance.save(flush: true)) {
            render view: "create", model: [aircraftCategoryAndClassInstance: aircraftCategoryAndClassInstance]
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), aircraftCategoryAndClassInstance.id])
        redirect(action: "show", id: aircraftCategoryAndClassInstance.id)
    }

    def show() {
        def aircraftCategoryAndClassInstance = AircraftCategoryAndClass.get(params.id)
        if (!aircraftCategoryAndClassInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "list")
            return
        }

        [aircraftCategoryAndClassInstance: aircraftCategoryAndClassInstance]
    }

    def edit() {
        def aircraftCategoryAndClassInstance = AircraftCategoryAndClass.get(params.id)
        if (!aircraftCategoryAndClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "list")
            return
        }

        [aircraftCategoryAndClassInstance: aircraftCategoryAndClassInstance]
    }

    def update() {
        def aircraftCategoryAndClassInstance = AircraftCategoryAndClass.get(params.id)
        if (!aircraftCategoryAndClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (aircraftCategoryAndClassInstance.version > version) {
                aircraftCategoryAndClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass')] as Object[],
                          "Another user has updated this AircraftCategoryAndClass while you were editing")
                render(view: "edit", model: [aircraftCategoryAndClassInstance: aircraftCategoryAndClassInstance])
                return
            }
        }

        aircraftCategoryAndClassInstance.aircraftClass = params.aircraftClass
        aircraftCategoryAndClassInstance.aircraftCategory = params.aircraftCategory

        if (!aircraftCategoryAndClassInstance.save(flush: true)) {
            render(view: "edit", model: [aircraftCategoryAndClassInstance: aircraftCategoryAndClassInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), aircraftCategoryAndClassInstance.id])
        redirect(action: "show", id: aircraftCategoryAndClassInstance.id)
    }

    def delete() {
        def aircraftCategoryAndClassInstance = AircraftCategoryAndClass.get(params.id)
        if (!aircraftCategoryAndClassInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "list")
            return
        }

        try {
            aircraftCategoryAndClassInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
