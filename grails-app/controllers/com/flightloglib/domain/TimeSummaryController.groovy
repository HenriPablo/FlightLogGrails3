package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class TimeSummaryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [timeSummaryInstanceList: TimeSummary.list(params), timeSummaryInstanceTotal: TimeSummary.count()]
    }

    def create() {
        [timeSummaryInstance: new TimeSummary(params)]
    }

    def save() {
        def timeSummaryInstance = new TimeSummary(params)
        if (!timeSummaryInstance.save(flush: true)) {
            render(view: "create", model: [timeSummaryInstance: timeSummaryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), timeSummaryInstance.id])
        redirect(action: "show", id: timeSummaryInstance.id)
    }

    def show() {
        def timeSummaryInstance = TimeSummary.get(params.id)
        if (!timeSummaryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "list")
            return
        }

        [timeSummaryInstance: timeSummaryInstance]
    }

    def edit() {
        def timeSummaryInstance = TimeSummary.get(params.id)
        if (!timeSummaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "list")
            return
        }

        [timeSummaryInstance: timeSummaryInstance]
    }

    def update() {
        def timeSummaryInstance = TimeSummary.get(params.id)
        if (!timeSummaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (timeSummaryInstance.version > version) {
                timeSummaryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'timeSummary.label', default: 'TimeSummary')] as Object[],
                          "Another user has updated this TimeSummary while you were editing")
                render(view: "edit", model: [timeSummaryInstance: timeSummaryInstance])
                return
            }
        }

        timeSummaryInstance.properties = params

        if (!timeSummaryInstance.save(flush: true)) {
            render(view: "edit", model: [timeSummaryInstance: timeSummaryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), timeSummaryInstance.id])
        redirect(action: "show", id: timeSummaryInstance.id)
    }

    def delete() {
        def timeSummaryInstance = TimeSummary.get(params.id)
        if (!timeSummaryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "list")
            return
        }

        try {
            timeSummaryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'timeSummary.label', default: 'TimeSummary'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
