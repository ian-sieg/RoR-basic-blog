import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    initialize() {}
    connect() {}
    toggleForm(e) {
        e.preventDefault()
        e.stopPropagation()
        const formId = e.params.form
        const commentBodyId = e.params.body
        const editButtonId = e.params.edit
        
        const form = document.getElementById(formId)
        const commentBody = document.getElementById(commentBodyId)
        const editButton = document.getElementById(editButtonId)
        
        form.classList.toggle('d-none')
        form.classList.toggle('mt-3')
        commentBody.classList.toggle('d-none')

        this.toggleEditButton(editButton)
    }
    
    toggleEditButton(editButton) {
        if (editButton.innerText === 'Edit') {
            editButton.innerText = 'Cancel'
            this.toggleEditButtonClass(editButton)
        } else {
            editButton.innerText = 'Edit'
            this.toggleEditButtonClass(editButton)
        }
    }

    toggleEditButtonClass(editButton) {
        editButton.classList.toggle('btn-secondary')
        editButton.classList.toggle('btn-warning')
    }
}
