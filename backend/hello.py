from bottle import route, run, static_file

@route('/')
def server_static():
    return static_file("index.html", root='frontend/')

@route('/static/images/<filename>')
def server_images(filename):
    return static_file(filename, root='static/images/')


@route('/static/css/<filename>')
def server_css(filename):
    return static_file(filename, root='static/css/')


@route('/hello')
def hello():
    return "Hello World!"

run(host='5.196.1.72', port=8080, debug=True)
