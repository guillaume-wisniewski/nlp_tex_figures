import numpy as np
from patchify import patchify
from PIL import Image

image = Image.open("output.png")
image = np.asarray(image)
print(image.shape)
patches = patchify(image, (512, 512, 1), step=512)
print(patches.shape)  # (6, 10, 1, 512, 512, 3)

for i in range(patches.shape[0]):
    for j in range(patches.shape[1]):
        patch = patches[i, j, 0]
        patch = np.squeeze(patch)  # (H, W, 1) -> (H, W)
        patch = Image.fromarray(patch)
        num = i * patches.shape[1] + j
        patch.save(f"patch_{num}.png")