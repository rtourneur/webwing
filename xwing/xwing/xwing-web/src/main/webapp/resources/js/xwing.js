/**
 * Function action image
 * 
 * @param formName
 *            the form name
 * @param id
 *            the id value
 * @param action
 *            the action to do
 */
function actionimg(formName, id, action) {
	var form = document.forms[formName];
	form.id.value = id;
	form.action = action;
	form.submit();
}

/** Function edit */
function edit(id) {
	var form = document.forms["editform"];
	form.id.value = id;
	form.submit();
}

/** Function remove */
function remove(id) {
	var form = document.forms["editform"];
	form.id.value = id;
	form.submit();
}