import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['name', 'output'];

  greet() {
    this.outputTarget.textContent = `Hello, ${this.nameTarget.value}!`;
  }

  openDropdown(event) {
    console.log('ahhaha: ', event.currentTarget);
    const el = event.currentTarget;
    el.closest('div').querySelector('p').innerHTML = 'hahahah';
  }
}
