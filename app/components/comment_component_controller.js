// app/components/comment_component.js
class Comment extends HTMLElement {
  styles() {
    return `
      :host {
        display: block;
      }
      ::slotted(time) {
        float: right;
        font-size: 0.75em;
      }
      .commenter { font-weight: bold; border: 1px solid teal}
      .body { … }
    `
  }

  constructor() {
    super()
    const shadow = this.attachShadow({ mode: 'open' });
    shadow.innerHTML = `
      <style>
        ${this.styles()}
      </style>
      <slot name="posted"></slot>
      <div class="commenter">
        <slot name="avatar"></slot> <slot name="author"></slot>
      </div>
      <div class="body">
        <slot name="body"></slot>
      </div>
    `
  }
}
customElements.define('my-comment', Comment)