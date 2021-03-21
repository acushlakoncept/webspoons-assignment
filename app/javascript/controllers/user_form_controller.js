import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    const event = new CustomEvent("userForm:load", { bubbles: true, cancelable: true });
    document.dispatchEvent(event);
  }
}