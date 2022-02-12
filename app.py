import dbinteractions as dbi
from flask import Flask, request, Response
import json

import sys

app = Flask(__name__)


@app.post('/api/blog_post')
def add_new_post():
    try:
        username = request.json['username']
        content = request.json['content']
        blog_post, id = dbi.add_new_post(username, content)
        if(blog_post == True):
            blog_post_json = json.dumps({
                "username": username,
                "content": content,
                "id": id
            }, default=str)
            return Response(blog_post_json, mimetype="application/json", status=200)
        else:
            return Response("Please enter valid data", mimetype="plain/text", status=400)
    except KeyError:
        return Response("Missing username/content", mimetype="plain/text", status=422)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


@app.get('/api/blog_post')
def get_all_posts():
    try:
        blog_posts = dbi.get_all_posts()
        blog_posts_json = json.dumps(blog_posts, default=str)
        return Response(blog_posts_json, mimetype="application/json", status=200)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


if(len(sys.argv) > 1):
    mode = sys.argv[1]
else:
    print("You must pass a mode to run this python script. Either testing or production")
    exit()

if(mode == "testing"):
    print("Running in testing mode")
    from flask_cors import CORS
    CORS(app)
    app.run(debug=True)
elif(mode == "production"):
    print("Running in production mode")
    import bjoern  # type: ignore
    bjoern.run(app, "0.0.0.0", 5005)
else:
    print("Please run with either testing or production. Example:")
    print("python3.10 app.py production")
