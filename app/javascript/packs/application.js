// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require popper
// require turbolinks
//= require_tree
//= require bootstrap-sprockets
<<<<<<< HEAD
<<<<<<< HEAD
//= require employee
=======
=======
>>>>>>> 2eb8759757c00370de2c639eefe2f521e97494af
//= require moment 
//= require fullcalendar
//= require fullcalendar/locale-all

$('#calendar').fullCalendar({});
<<<<<<< HEAD
>>>>>>> 3af6f1d (Adding initial desing)
=======
>>>>>>> 2eb8759757c00370de2c639eefe2f521e97494af
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "../stylesheets/application"
require("packs/employee")
Rails.start()
Turbolinks.start()
ActiveStorage.start()
