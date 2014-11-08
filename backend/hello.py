from bottle import route, run, static_file,template
import glob,os.path,json

@route('/static/images/<filename>')
def server_images(filename):
    return static_file(filename, root='static/images/')


@route('/static/css/<filename>')
def server_css(filename):
    return static_file(filename, root='static/css/')

@route('/static/js/<filename>')
def server_js(filename):
    return static_file(filename, root='static/js/')

@route('/data/yugioh/cards/img/<filename>')
def server_cards(filename):
    return static_file(filename, root='data/yugioh/cards/img/')


#TODO: Implement limiting of deck sizes (and hence, randomising which are put in also)
def load_deck():
    cardset = []
    for metafile in glob.glob("data/yugioh/cards/meta/*.json"):
        #Get all Json Cards and place them in a deck
        json_data = open(metafile)
        parsed = json.load(json_data)

        parsed["Description"] = parsed["Description"].replace("\'","")
        cardset.append(parsed)

    return cardset

@route('/')
def game_page():
    player_deck = json.dumps( load_deck() )
    opponent_deck = json.dumps( load_deck() )
    return template('frontend/game.tpl',player_deck=player_deck,opponent_deck=opponent_deck)


@route('/create/')
def creation_page():

    return template('frontend/create.tpl')

run(host='5.196.1.72', port=8080, debug=True)
