# -*- coding: utf-8 -*-

import googlemaps
from pprint import pprint as Print

gmaps_key = "AIzaSyBq3pu3gFvySr0gpryll6beaidwMSCj1ro"
gmaps = googlemaps.Client(key = gmaps_key)

Print(gmaps.geocode("대한민국 서울특별시 강남구 대치2동 514", language="ko")[0]["geometry"]["location"])
