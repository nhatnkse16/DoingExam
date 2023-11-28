/**
 * 
 */

function nextStep(formId, step) {
	document.getElementById(formId).style.display = 'none';
	document.getElementById('form' + (step)).style.display = 'block';
}

function prevStep(formId, step) {
	document.getElementById(formId).style.display = 'none';
	document.getElementById('form' + (step)).style.display = 'block';
}