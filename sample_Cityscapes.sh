data_root="/media/ywh/pool1/yanweihao/projects/generation/FreestyleNet/data/cityscapes"
val_txt="Cityscapes_val_all.txt"
model_path="logs/2024-09-20T22-09-44_exp_Cityscapes/checkpoints/last.ckpt"
CUDA_VISIBLE_DEVICES=1 python scripts/LIS.py --batch_size 8 \
                                             --config configs/stable-diffusion/v1-finetune_Cityscapes.yaml \
                                             --ckpt "${model_path}" \
                                             --dataset Cityscapes \
                                             --outdir outputs/Cityscapes_LIS \
                                             --txt_file "${data_root}/${val_txt}" \
                                             --data_root "${data_root}" \
                                             --plms 