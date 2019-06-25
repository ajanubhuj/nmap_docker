from sanic import Sanic
from sanic.response import json

app = Sanic()

@app.route('/')
async def test(request):
    return json({'success': 'true'})


@app.route('/nmap')
async def test(request):

    return json({'success': 'true'})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8093)
