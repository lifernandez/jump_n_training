import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="trainers-form"
export default class extends Controller {
  static targets = ["session", "plan", "form"]

  connect() {
    console.log("hiii")
    document.addEventListener('DOMContentLoaded', function() {
      const trainingPlanSwitch = document.getElementById('training-plan-switch');
      const sessionSwitch = document.getElementById('session-switch');
      // const trainingPlanFields = document.querySelector('.training-plan-fields');
      const sessionFields = document.querySelector('.session-fields');

      trainingPlanSwitch.addEventListener('change', function() {
        if (trainingPlanSwitch.checked) {
          console.log("hiii")
          // trainingPlanFields.style.display = 'none';
          sessionFields.style.display = 'none';
        }
      });

      sessionSwitch.addEventListener('change', function() {
        if (sessionSwitch.checked) {
          console.log("hiii")
          sessionFields.style.display = 'block';
          // trainingPlanFields.style.display = 'none';
        }
      });
    });
  }

  toggleSession() {
    console.log(this.formTarget)
    this.formTarget.classList.toggle("d-none")
  }
}
