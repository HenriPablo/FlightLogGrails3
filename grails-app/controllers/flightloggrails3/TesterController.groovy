package flightloggrails3

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TesterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tester.list(params), model:[testerCount: Tester.count()]
    }

    def show(Tester tester) {
        respond tester
    }

    def create() {
        respond new Tester(params)
    }

    @Transactional
    def save(Tester tester) {
        if (tester == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tester.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tester.errors, view:'create'
            return
        }

        tester.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tester.label', default: 'Tester'), tester.id])
                redirect tester
            }
            '*' { respond tester, [status: CREATED] }
        }
    }

    def edit(Tester tester) {
        respond tester
    }

    @Transactional
    def update(Tester tester) {
        if (tester == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tester.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tester.errors, view:'edit'
            return
        }

        tester.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tester.label', default: 'Tester'), tester.id])
                redirect tester
            }
            '*'{ respond tester, [status: OK] }
        }
    }

    @Transactional
    def delete(Tester tester) {

        if (tester == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        tester.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tester.label', default: 'Tester'), tester.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tester.label', default: 'Tester'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
