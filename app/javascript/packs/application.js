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
<<<<<<< HEAD
//= require employee
=======
=======
>>>>>>> 3af6f1d (Adding initial desing)
=======
//= require employee
=======
>>>>>>> 8696622 (Adding initial desing)
//= require moment 
//= require fullcalendar
//= require fullcalendar/locale-all

$('#calendar').fullCalendar({});
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 3af6f1d (Adding initial desing)
=======
=======
>>>>>>> 8696622 (Adding initial desing)
>>>>>>> 3af6f1d (Adding initial desing)
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
