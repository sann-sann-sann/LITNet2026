python style.py transfer --model_path models/wave_crop/compressed.model --source content_imgs/maine.jpg --output results/maine.jpg
python style.py transfer --model_path models/starry_night_crop/compressed.model --source content_imgs/laugh.jpg --output results/laugh_star.jpg

python main.py transfer --model_path models/starry_night_crop/original.model --source content_imgs/laugh.jpg --output results/laugh_star2.jpg

# 例如使用Flickr30k
python main.py train --style_image style_imgs/versus.jpg --test_image content_imgs/dan.jpg --dataset flickr30k-images --gpu 0 --visualize 1
python style.py train --style_image style_imgs/starry_night_crop.jpg --test_image content_imgs/chicago.jpg --dataset flickr30k-images --gpu 0 --visualize 1

python main.py transfer --model_path models/mosaic/original.model --source content_imgs/laugh.jpg --output results/laugh_mosaic.jpg
