echo Input desired resolution
read res
mkdir $res
Foreach ($file in get-content /){ffmpeg -i "$i" -vf scale=$res:-1 "/$res/${i%.*}_$res.jpg"}