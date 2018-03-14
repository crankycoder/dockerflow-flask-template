# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


import pytest
from dockerflow_flask.app import app as flask_app
from flask import url_for


@pytest.fixture
def app():
    return flask_app


def test_api_ping(client):
    url = url_for('hello_world')
    res = client.get(url)
    assert res.json == {'result': 'Flask Dockerized'}
