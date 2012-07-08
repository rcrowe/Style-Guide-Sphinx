######
Naming
######

Naming is hard, but very important. It's a crucial part of the process of developing a maintainable code base, and ensuring that you have a relatively scalable interface between your HTML and CSS.

- Avoid systematic use of abbreviated class names. Don't make things difficult to understand.
- Use clear, thoughtful, and appropriate names for HTML classes.
- Pick an understandable and consistent naming pattern that makes sense both within HTML files and CSS files.
- Selectors for components should uses class names; avoid the use of generic tags and unique ids. ::

    // incorrect
    .s-scr {
        overflow: auto;
    }

    .cb {
        background: #000;
    }

    // correct
    .is-scrollable {
        overflow: auto;
    }

    .column-body {
        background: #000;
    }