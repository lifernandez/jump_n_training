
  document.addEventListener('DOMContentLoaded', function() {
    const trainingPlanSwitch = document.getElementById('training-plan-switch');
    const sessionSwitch = document.getElementById('session-switch');
    const trainingPlanFields = document.querySelector('.training-plan-fields');
    const sessionFields = document.querySelector('.session-fields');

    trainingPlanSwitch.addEventListener('change', function() {
      if (trainingPlanSwitch.checked) {
        trainingPlanFields.style.display = 'block';
        sessionFields.style.display = 'none';
      }
    });

    sessionSwitch.addEventListener('change', function() {
      if (sessionSwitch.checked) {
        sessionFields.style.display = 'block';
        trainingPlanFields.style.display = 'none';
      }
    });
  });
console.log("test")
