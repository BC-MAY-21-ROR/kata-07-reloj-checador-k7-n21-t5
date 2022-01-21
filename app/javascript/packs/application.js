// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require popper
// require turbolinks
//= require_tree
//= require bootstrap-sprockets
//= require employee
//= require moment 
//= require bootstrap
//= require fullcalendar
//= require fullcalendar/locale-all

$('#calendar').fullCalendar({});
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
Turbolinks.start()
ActiveStorage.start()
