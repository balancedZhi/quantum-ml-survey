#!/bin/bash
# 创建所有目录和占位文件

dirs=(
  "survey/01_foundations"
  "survey/02_quantum_neural_nets"
  "survey/03_quantum_kernel"
  "survey/04_qrl"
  "survey/05_hybrid_classical"
  "survey/06_applications"
  "datasets/synthetic"
  "datasets/benchmarks"
  "experiments/vqc_classification"
  "experiments/qkernel_svm"
  "experiments/qnn_regression"
  "experiments/hybrid_models"
  "tutorials"
  "resources"
)

for dir in "${dirs[@]}"; do
  mkdir -p "$dir"
  touch "$dir/.gitkeep"
done

# 创建各模块 README
cat > survey/01_foundations/README.md << 'EOF'
# Foundations

量子计算基础：量子比特、量子门、量子线路、测量。

## 核心概念
- [ ] Qubit & Bloch Sphere
- [ ] Basic Gates (H, CNOT, RX/RY/RZ)
- [ ] Quantum Circuit Model
- [ ] Quantum Entanglement

## 关键文献
| 论文 | 年份 | 一句话总结 |
|------|------|-----------|
| Nielsen & Chuang | 2000 | 量子计算与量子信息圣经 |
EOF

cat > survey/02_quantum_neural_nets/README.md << 'EOF'
# Quantum Neural Networks (QNN / VQC)

变分量子线路（VQC）作为量子神经网络的核心范式。

## 核心概念
- [ ] Variational Quantum Circuit (VQC)
- [ ] Parameterized Quantum Gates
- [ ] Barren Plateau Problem
- [ ] Expressibility & Entanglement Capability

## 关键文献
| 论文 | 年份 | 一句话总结 |
|------|------|-----------|
| Cerezo et al. (Nature Reviews Physics) | 2021 | VQA 综述 |
| McClean et al. | 2018 | Barren Plateau 首次提出 |
EOF

cat > survey/03_quantum_kernel/README.md << 'EOF'
# Quantum Kernel Methods

利用量子特征映射构造核函数，结合经典 SVM。

## 核心概念
- [ ] Quantum Feature Map
- [ ] Fidelity Quantum Kernel
- [ ] Projected Quantum Kernel
- [ ] Quantum Kernel Advantage

## 关键文献
| 论文 | 年份 | 一句话总结 |
|------|------|-----------|
| Havlíček et al. (Nature) | 2019 | 量子核 SVM 奠基工作 |
| Schuld & Killoran | 2019 | 量子模型即核方法 |
EOF

cat > survey/04_qrl/README.md << 'EOF'
# Quantum Reinforcement Learning (QRL)

量子线路作为策略网络的强化学习方法。

## 核心概念
- [ ] VQC as Policy Network
- [ ] Quantum Q-Learning
- [ ] Data Re-uploading

## 关键文献
| 论文 | 年份 | 一句话总结 |
|------|------|-----------|
| Chen et al. | 2020 | VQC 替代经典策略网络 |
EOF

cat > survey/05_hybrid_classical/README.md << 'EOF'
# Hybrid Classical-Quantum Models

经典神经网络与量子线路的混合架构。

## 核心概念
- [ ] Hybrid Architecture Design
- [ ] Classical-Quantum Interface
- [ ] Gradient Flow across Hybrid Models

## 关键文献
| 论文 | 年份 | 一句话总结 |
|------|------|-----------|
| Mitarai et al. | 2018 | Parameter-shift rule |
EOF

cat > survey/06_applications/README.md << 'EOF'
# Applications

量子机器学习的应用场景。

## 方向
- [ ] 量子化学（分子能量预测）
- [ ] 金融优化（投资组合）
- [ ] 组合优化（QAOA）
- [ ] 图像分类
EOF

cat > datasets/README.md << 'EOF'
# Datasets

## 合成数据集
| 数据集 | 描述 | 路径 |
|--------|------|------|
| quantum_states_2class | 2分类量子态数据 | synthetic/ |

## Benchmark 数据集
| 数据集 | 来源 | 用途 |
|--------|------|------|
| Iris (4→2维) | UCI | VQC 分类基准 |
| MNIST (2类子集) | LeCun | 量子图像分类 |
EOF

cat > resources/tools.md << 'EOF'
# QML Frameworks

| 框架 | 维护方 | 特点 | 适合场景 |
|------|--------|------|---------|
| PennyLane | Xanadu | 自动微分、PyTorch/JAX 集成 | QML 首选 |
| Qiskit | IBM | 生态最大、硬件直连 | IBM 量子硬件 |
| Cirq | Google | 底层控制强 | Google 硬件 |
| TensorFlow Quantum | Google | Keras 集成 | 混合模型 |

## 安装

```bash
pip install pennylane pennylane-sf
pip install qiskit qiskit-machine-learning
EOF

cat > resources/papers.bib << 'EOF'
@article{cerezo2021variational,
title={Variational quantum algorithms},
author={Cerezo, Marco and others},
journal={Nature Reviews Physics},
year={2021}
}

@article{havlicek2019supervised,
title={Supervised learning with quantum-enhanced feature spaces},
author={Havl{'\i}{\v{c}}ek, Vojt{\v{e}}ch and others},
journal={Nature},
year={2019}
}

@article{mcclean2018barren,
title={Barren plateaus in quantum neural network training landscapes},
author={McClean, Jarrod R and others},
journal={Nature communications},
year={2018}
}
EOF

echo "✅ 目录结构创建完成！"
