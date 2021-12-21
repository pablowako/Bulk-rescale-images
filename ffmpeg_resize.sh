echo Input desired resolution
read res
mkdir $res
for i in *.jpg; do ffmpeg -i "$i" -vf scale=$res:-1 "/home/pablo/Documents/GitHub/plazadeitalia/assets/$res/${i%.*}_$res.jpg"; done
