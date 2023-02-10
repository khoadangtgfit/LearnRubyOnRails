// import { application } from 'controllers/application';

// Eager load all controllers defined in the import map under controllers/**/*_controller
// import { eagerLoadControllersFrom } from '@hotwired/stimulus-loading';
// eagerLoadControllersFrom('controllers', application);
import { Application } from '@hotwired/stimulus';
import { definitionsFromContext } from '@hotwired/stimulus-webpack-helpers';

const application = Application.start();
const context = require.context('./', true, /_controller\.js$/);
application.load(definitionsFromContext(context));
