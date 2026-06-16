import torch
from torchvision import models
from torchsummary import summary
from network import ImageTransformNet,ImageTransformNet_dpws
from ptflops import get_model_complexity_info

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
image_transformer = ImageTransformNet().to(device)

macs, params = get_model_complexity_info(image_transformer, (3, 224, 224), as_strings=True,
                                           print_per_layer_stat=True, verbose=True)
print('{:<30}  {:<8}'.format('Computational complexity: ', macs))
print('{:<30}  {:<8}'.format('Number of parameters: ', params))