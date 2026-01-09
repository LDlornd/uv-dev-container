# 使用官方 Python 镜像作为基础
FROM python:3.12-slim

# 安装必要系统工具和 Zsh
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    zsh \
    build-essential \
    gcc g++ make \
    && rm -rf /var/lib/apt/lists/*

# 安装 nodejs 和 npm
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs

# 安装 Oh-My-Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 安装 UV（Python 包管理器）
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

# 验证安装
RUN uv --version && python --version && zsh --version

# 设置 Zsh 为默认 shell
RUN chsh -s $(which zsh)

# 设置工作目录
WORKDIR /workspace