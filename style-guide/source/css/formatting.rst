##########
Formatting
##########

The goal of this formatting guide is to ensure that:

- it's easy to read
- it's easy to clearly comment
- minimizes the chance of accidentally introducing errors
- results in useful diffs and blames

General
=======

- Each selector should be on its own line, ending in either a comma or an opening curly brace. Property-value pairs should
  be on their own line, with one tab of indentation and an ending semicolon. The closing brace should be flush left, using the same level of indentation as the opening selector.
- Add two blank lines between sections and one blank line between blocks in a section. ::

    // incorrect
    #selector-1, #selector-2, #selector-3 {
        background: #fff; color: #000;
        }
    #selector-1 { background: #fff; color: #000; }

    // correct
    #selector-1,
    #selector-2,
    #selector-3 {
        background: #fff;
        color: #000;
    }


Selectors
=========

- Use lowercase and separate words with hyphens when naming selectors. Avoid camelcase and underscores.
- Use human readable selectors that describe what element(s) they style.
- Attribute selectors should use double quotes around values. ::

    // incorrect
    #commentForm { /* Avoid camelcase. */
        margin: 0;
    }
    #comment_form { /* Avoid underscores. */
        margin: 0;
    }
    #c1-xr { /* What is a c1-xr?! Use a better name. */
        margin: 0;
    }
    input[type=text] { /* Should be [type="text"] */
        line-height: 110% /* Also doubly incorrect */
    }

    // correct
    #comment-form {
        margin: 0;
    }

    input[type="text"] {
        line-height: 1.1;
    }


Vendor Prefixes
===============

Vendor prefixes should go from longest (-webkit) to shortest (unprefixed). ::

    // incorrect
    .selector {
        -webkit-box-shadow: 0 0 1px 1px #eee inset;
        -moz-box-shadow: 0 0 1px 1px #eee inset;
        -ms-box-shadow: 0 0 1px 1px #eee inset;
        -o-box-shadow: 0 0 1px 1px #eee inset;
        box-shadow: 0 0 1px 1px #eee inset;
    }

    // correct
    .selector {
        -webkit-box-shadow: 0 0 1px 1px #eee inset;
           -moz-box-shadow: 0 0 1px 1px #eee inset;
            -ms-box-shadow: 0 0 1px 1px #eee inset;
             -o-box-shadow: 0 0 1px 1px #eee inset;
                box-shadow: 0 0 1px 1px #eee inset;
    }


Properties
==========

- Properties should be followed by a colon and a space.
- All properties and values should be lowercase, except for font names and vendor-specific properties.
- Use hex code for colors, or rgba() if opacity is needed. Avoid RGB format and uppercase, and shorten
  values when possible: #fff instead of #FFFFFF.
- Use shorthand (except when overriding styles) for background, border, font, list-style, margin, and padding
  values as much as possible.

Declerations should be ordered in accordance with a single princliple. We will use the order below and use :doc:`recess`
to enforce it.

1.   position
2.   top
3.   right
4.   bottom
5.   left
6.   z-index
7.   display
8.   float
9.   width
10.  height
11.  max-width
12.  max-height
13.  min-width
14.  min-height
15.  padding
16.  padding-top
17.  padding-right
18.  padding-bottom
19.  padding-left
20.  margin
21.  margin-top
22.  margin-right
23.  margin-bottom
24.  margin-left
25.  margin-collapse
26.  margin-top-collapse
27.  margin-right-collapse
28.  margin-bottom-collapse
29.  margin-left-collapse
30.  overflow
31.  overflow-x
32.  overflow-y
33.  clip
34.  clear
35.  font
36.  font-family
37.  font-size
38.  font-smoothing
39.  font-style
40.  font-weight
41.  src
42.  line-height
43.  letter-spacing
44.  word-spacing
45.  color
46.  text-align
47.  text-decoration
48.  text-indent
49.  text-overflow
50.  text-rendering
51.  text-size-adjust
52.  text-shadow
53.  text-transform
54.  word-break
55.  word-wrap
56.  white-space
57.  vertical-align
58.  list-style
59.  list-style-type
60.  list-style-position
61.  list-style-image
62.  cursor
63.  background
64.  background-attachment
65.  background-color
66.  background-image
67.  background-position
68.  background-repeat
69.  background-size
70.  border
71.  border-collapse
72.  border-top
73.  border-right
74.  border-bottom
75.  border-left
76.  border-color
77.  border-top-color
78.  border-right-color
79.  border-bottom-color
80.  border-left-color
81.  border-spacing
82.  border-style
83.  border-top-style
84.  border-right-style
85.  border-bottom-style
86.  border-left-style
87.  border-width
88.  border-top-width
89.  border-right-width
90.  border-bottom-width
91.  border-left-width
92.  border-radius
93.  border-top-right-radius
94.  border-bottom-right-radius
95.  border-bottom-left-radius
96.  border-top-left-radius
97.  border-radius-topright
98.  border-radius-bottomright
99.  border-radius-bottomleft
100. border-radius-topleft
101. content
102. quotes
103. outline
104. outline-offset
105. opacity
106. filter
107. visibility
108. size
109. zoom
110. transform
111. box-align
112. box-flex
113. box-orient
114. box-pack
115. box-shadow
116. box-sizing
117. table-layout
118. animation
119. animation-delay
120. animation-duration
121. animation-iteration-count
122. animation-name
123. animation-play-state
124. animation-timing-function
125. transition
126. transition-delay
127. transition-duration
128. transition-property
129. transition-timing-function
130. background-clip
131. resize
132. appearance
133. user-select
134. interpolation-mode
135. direction
136. marks
137. page
138. set-link-source
139. unicode-bidi
