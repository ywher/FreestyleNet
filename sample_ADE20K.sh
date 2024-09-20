data_root="/media/ywh/pool1/yanweihao/projects/generation/FreestyleNet/data/ADEChallengeData2016"
val_txt="ADE20K_val.txt"
CUDA_VISIBLE_DEVICES=1 python scripts/LIS.py --batch_size 8 \
                                             --config configs/stable-diffusion/v1-finetune_ADE20K.yaml \
                                             --ckpt models/provided/freestyle-sd-v1-4-ade20k.ckpt \
                                             --dataset ADE20K \
                                             --outdir outputs/ADE20K_LIS \
                                             --txt_file "${data_root}/${val_txt}" \
                                             --data_root "${data_root}" \
                                             --plms 