#Build Phase
from node:alpine as builder

Workdir '/usr/app'

copy package.json .

Run npm install

copy . .

run npm run build

#Run Phase
From nginx

Copy --from=builder /usr/app/build /usr/share/nginx/html