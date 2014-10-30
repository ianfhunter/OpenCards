from bottle import route, run, static_file,template
import glob,os.path

@route('/static/images/<filename>')
def server_images(filename):
    return static_file(filename, root='static/images/')


@route('/static/css/<filename>')
def server_css(filename):
    return static_file(filename, root='static/css/')

@route('/static/js/<filename>')
def server_js(filename):
    return static_file(filename, root='static/js/')


@route('/')
def game_page():
    our_cards = glob.glob("/var/www/OpenCards/backend/data/yugioh/cards/img/*.jpg")
    print our_cards
    return template('frontend/game.tpl',card_title=our_cards)

run(host='5.196.1.72', port=8080, debug=True)
