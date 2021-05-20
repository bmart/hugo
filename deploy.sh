#!/bin/bash

hugo -D
git add .
git commit -m 'new content' .
git push origin main
