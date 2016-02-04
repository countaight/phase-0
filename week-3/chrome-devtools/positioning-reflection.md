# 3.4 Chrome DevTools

## Release 3 Exercises

### 1.
![Exercise 3.4.1](imgs/Challenge1.png)

### 2.
![Exercise 3.4.2](imgs/Challenge2.png)

### 3.
![Exercise 3.4.3](imgs/Challenge3.png)

### 4.
![Exercise 3.4.4](imgs/Challenge4.png)

### 5.
![Exercise 3.4.5](imgs/Challenge5.png)

### 6.
![Exercise 3.4.6](imgs/Challenge6.png)

### 7.
![Exercise 3.4.7](imgs/Challenge7.png)

### 8.
![Exercise 3.4.8](imgs/Challenge8.png)

### 9.
![Exercise 3.4.9](imgs/Challenge9.png)

* How can you use Chrome's DevTools inspector to help you format or position elements?
* How can you resize elements on the DOM using CSS?
* What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
* What are the differences between margin, border, and padding?
* What was your impression of this challenge overall? (love, hate, and why?)

Chrome's DevTools inspector is great for testing out the layout of the website in real-time. Being able to actively change the css code directly while viewing the page, gives a whole new level of insight. Also, by preserving the original css file, I can really experiment all I want and if I don't like the results I can just refresh the page. This gives me a level of comfort knowing that I can instantly see the results and adjust accordingly.

There are different ways to resize elements in CSS. The most direct of methods is by specifying a width and height in a measurement (pixels, em, etc.).Another way is to specify a percentage of the width and/or height of the element in relation to its containing block (always defaulting to the body if there is no containing block). Finally the size of an element can be affected by margins, padding, and borders. If any of these attributes are specified, the element will then protrude or shrink depending on their values.

Just as there are different ways to resize elements in CSS, there are also many different ways of positioning them on your website. For a block element to be positioned, they need to have the position property explicitly stated as such (otherwise it's considered unpositioned):

    .block-1 {
    	position: static;
    }

Like the above code states, static is one acceptable value for the position propery. It is actually the default positioning for elements if it is not explicitly stated. Under this value, block elements are stacked on top of each other according to the html. This is great if the original poisitioning of the element is correct and no further adjustments are needed.

    .block-1 {
    	position: relative;
    	top: 100px;
    	left: 200px;
    }

Placing an element in relative position, first of all, puts it into a "positioned" state, allowing any element inside it to be positioned with an absolute value (more on that later). The element remains where it normally would be unless top, left, right, or bottom values are also assigned. In the example above, this element would move 100px down and 200px left from where it would initially sit in a static position. In other words, the element moves *relative* to it's *static* position. This position has certain side effect, in addition, any surrouding elements ignore the movement and continue to act as if the positioned element were in its original position. This position is then useful if you need to move an element somewhere else without disturbing the flow of the other elements. The element also scrolls along with the page, so this would be useful, for example, for a sidebar that contain other elements that need to be positioned.

    .block-1 {
    	position: absolute;
    	top: 100px;
    	left: 200px;
    }

An element in an absolute position, would be positioned according to its first positioned parent element. What this means, using the example above, the element would move 100 pixels down and 200 pixels from edges of its containing element if it is also positioned (relative, absolute, fixed). If the containing element is not positioned, then this element pops out of that element and is positioned according to the window. This element would then also scroll along with the page. This is useful for elements such as ads, or navigational buttons that are contained inside other sections of the page that need to be scrolled. Other elements ignore this element and so overlapping of elements can occur, that is something to be aware of.

    .block-1 {
    	position: fixed;
    	top: 0px;
    	left: 100px;
    }

Finally, an element in a *fixed* position can be place relative to the window and remain there even when the page is scrolled. In the above example, the element would be placed at the very top of the page and 100 pixels left of the window. All other elements then ignore this element, again allowing elements to overlap. This is particularly useful for headers or navigational bars and sections that always need to be in view, even while scrolling.

I found the fixed position the easiest to use because it is rarely affected by other elements. Obviously its side effect being that it remains visible while scrolling and over other elements. With careful planning I was also able to use the *absolute* value in a similar fashion, if I want an elment that scrolls along with the page. I found *relative* position to be a bit tricky, it takes a bit more planning and a little bit of guesswork. Plus once I start applying position values to many elements it can be a bit tricky to predict what's going to happen. Occasionally, some of these position values add margins or padding.

Speaking of which... 
Margin, border, and padding are properties that can be added to elements to change their appearance, in size or in position. If we were to visualize block elements as that, blocks, with invisible edges, then the margin is the space outside of the edges. The margin is not visible, and so if changed it would move surrounding elements. Borders lie inside along the edge of the block defining it. The border can be any size or color and does not affect the contents inside the block (other blocks inside it or text). Borders also come in different styles such as solid, dashed, dotted, etc. Finally, the padding is the space inside the block. Defining padding can potentially move the contents inside the block or the block itself. Padding takes on the color of the background.

I found this challenge very fun and interesting. I'm glad that tools like the Chrome Devtool exists! It made working with position so much easier.  Also, apart from the weird styles the browser sometimes add to the elements, positioning make much clearer and I firmly believe I have a much better grasp of the concept and how to start utilizing it.