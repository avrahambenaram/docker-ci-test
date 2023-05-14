sleep 30 &
wait

rm -rf src
npm i --omit=dev
npm start