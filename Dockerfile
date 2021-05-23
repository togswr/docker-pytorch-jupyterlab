FROM pytorch/pytorch

RUN apt update && apt install -y g++

ENV TORCH 1.8.0
ENV CUDA cu111

RUN pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html && \
    pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html && \
    pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html && \
    pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html && \
    pip install torch-geometric

COPY requirements/requirements.txt .
RUN pip install -r requirements.txt
