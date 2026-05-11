FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    HF_HOME=/storage/.cache/huggingface \
    XDG_CACHE_HOME=/storage/.cache \
    HOME=/storage

WORKDIR /app

RUN pip install --break-system-packages --no-cache-dir \
    "fastapi>=0.115,<1" \
    "uvicorn[standard]>=0.32,<1" \
    "sentence-transformers>=5,<6" \
    "transformers>=4.51,<5" \
    "accelerate" \
    "safetensors"
