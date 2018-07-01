Tumblr Backup
=============

Backs up Tumblr blogs.



Usage
-----

    backup.sh



Configuration
-------------

`backup.sh` expects to find `blogs/blog.csv`, which contains blogs to back up and configuration information.

Each line is of the format [blog name],[minimum characters]

Where:

  * [blog name] is the name of the blog, such that [blog name].tumblr.com is the URL of the blog.
  * [minimum characters] is an integer representing the minimum number of characters in a post before it is saved.

You can follow the example in `example_blogs.csv`



License
-------

Copyright 2018 Karl Stenerud

Released under MIT license:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
