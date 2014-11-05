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


def load_deck(field,prepend="",postpend=""):
    cardset = {}
    count = 0
    for metafile in glob.glob("data/yugioh/cards/meta/*.json"):
        json_data = open(metafile)
        cardId = metafile.replace("data/yugioh/cards/meta/","")
        cardId = cardId.replace(".json","")
        parsed = json.load(json_data)
        cardset[""+cardId] = prepend+  parsed[field] +postpend
        count = count + 1

    return cardset
    #return glob.glob("data/yugioh/cards/img/*.jpg")

@route('/')
def game_page():

    card_covers =json.dumps( load_deck("Image","data/yugioh/cards/img/") )
    card_names =json.dumps( load_deck("Title") )
    return template('frontend/game.tpl',card_covers=card_covers,card_names=card_names)

run(host='5.196.1.72', port=8080, debug=True)
