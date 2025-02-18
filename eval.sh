
# torchrun --nproc_per_node=8 eval/refcoco/evaluate_grounding.py --checkpoint ${CHECKPOINT} --dynamic
torchrun --nproc_per_node=1 evaluate_grounding_llava.py  --dynamic \
    --model-path /root/autodl-tmp/models/liuhaotian/llava-v1.5-7b \
    --model-name llava-v1.5-7b \
