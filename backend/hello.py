from bottle import route, run, static_file,template

@route('/static/images/<filename>')
def server_images(filename):
    return static_file(filename, root='static/images/')


@route('/static/css/<filename>')
def server_css(filename):
    return static_file(filename, root='static/css/')


@route('/')
def game_page():
    return template('frontend/game.tpl',card_title="Blue Eyes")
    #tpl = include('frontend/game.tpl', card_title='Page Title')
    #tpl.render(card_title="Kawaii Soldier")    
#return "Hello World!"

run(host='5.196.1.72', port=8080, debug=True)
