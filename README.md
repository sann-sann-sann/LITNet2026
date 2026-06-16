# Modification of the code
To adapt to the mainstream Python environment in 2026, I have modified the original code.  
The specific environment requirements are as follows:  
python >=3.13  
torch>=2.2.0  
numpy>=1.26.0  
torchvision>=0.17.0  
ptflops>=0.7.0  

# How to use
Improve the folder structure from README2.md first
## test model  
### use the original model to transfer style  
```bash
python main.py transfer \
--model_path models/starry_night_crop/original.model \
--source content_imgs/maine.jpg --output results/maine.jpg
``` 
### use the compressed model to transfer style  
```bash
python style.py transfer \
--model_path models/wave_crop/compressed.model \
--source content_imgs/maine.jpg --output results/maine.jpg
```
## train model
## use COCO dataset to train the original model
```bash
python main.py train \
--style_image style_imgs/versus.jpg --test_image content_imgs/dan.jpg \
--dataset /COCO --gpu 0 --visualize 1
```
## use COCO dataset to train the compressed model
```bash
python style.py train \
--style_image style_imgs/starry_night_crop.jpg \
--test_image content_imgs/chicago.jpg \
--dataset /COCO --gpu 0 --visualize 1
``` 

