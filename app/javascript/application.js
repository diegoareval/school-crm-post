// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"
import "jquery"
import "jquery-ui"
import "jquery_ujs"
import "popper"
import "bootstrap"
import "@fortawesome/fontawesome-free"
