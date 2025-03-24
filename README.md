# RefCOCO-LLaVA-Eval

Modified from https://github.com/OpenGVLab/InternVL/tree/main/internvl_chat

## Preparation

### Install conda env

```bash
conda create --name refcoco python=3.10
conda activate refcoco


git clone https://github.com/haotian-liu/LLaVA.git
cd LLaVA
pip install -e .
```

### Prepare data

```bash
# Step 1: Create the data directory
mkdir -p data/refcoco && cd data/refcoco

# Step 2: Download converted files
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco/refcoco_val.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco/refcoco_testA.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco/refcoco_testB.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco%2B/refcoco%2B_val.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco%2B/refcoco%2B_testA.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcoco%2B/refcoco%2B_testB.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcocog/refcocog_val.jsonl
wget https://ofasys-wlcb.oss-cn-wulanchabu.aliyuncs.com/Qwen-VL/evaluation/refcocog/refcocog_test.jsonl
```

extract COCO [train2014.zip](http://images.cocodataset.org/zips/train2014.zip) to `data/coco/train2014`.


## Evaluation

```bash
# Modify model path in eval.sh
bash eval.sh
```

## SparseVLM
### Preparation
```bash
conda create -n SparseVLMs python=3.10 -y
conda activate SparseVLMs
pip install -e .
pip install transformers==4.37.0
pip install flash_attn==2.3.3
% Note: SparseVLM has recently updated its implementation to SparseVLM-1.5.
```
### Evaluation
```bash
# Modify model path in script
bash evaluate_grounding_sparsevlm.sh
```

## FastV, Random and Pooling
### Preparation
```bash
conda create -n FastV --clone refcoco
conda activate FastV 
cd LLaVA_FastV
pip install -e . # also apply Random and Pooling
```

### Evaluation
```bash
# Modify model path in script
bash eval_fastv_random_pooling.sh
```

