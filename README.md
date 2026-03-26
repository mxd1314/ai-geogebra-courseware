# AI驱动的GeoGebra动态课件生成系统

一个基于HTML5 Canvas和AI技术的智能课件生成系统，能够自动调用GeoGebra为教师和学生生成动态、交互式的数学课件。

## 功能特性

- **AI图形生成**：通过自然语言描述自动生成图形
- **模板选择**：从预设模板库中快速创建课件
- **交互式图形**：支持拖动、旋转、缩放等交互操作
- **动画演示**：展示几何变换和函数变化等动态过程
- **课件管理**：保存、编辑、导出课件
- **多学科支持**：几何、代数、微积分

## 快速开始

### 在线访问

部署完成后，访问：`https://[您的用户名].github.io/[仓库名]/`

### 本地运行

```bash
# 方式1：使用 Node.js
node server.js

# 方式2：使用 Python
python -m http.server 3000

# 方式3：直接打开
# 在浏览器中打开 index.html 文件
```

## 部署到 GitHub Pages

### 步骤 1：创建 GitHub 仓库

1. 登录 GitHub
2. 点击右上角 "+" → "New repository"
3. 输入仓库名称（如 `ai-geogebra-courseware`）
4. 点击 "Create repository"

### 步骤 2：推送代码到 GitHub

```bash
# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: AI-GeoGebra课件生成器"

# 添加远程仓库
git remote add origin https://github.com/[您的用户名]/ai-geogebra-courseware.git

# 推送到 GitHub
git push -u origin main
```

### 步骤 3：启用 GitHub Pages

1. 进入仓库页面
2. 点击 "Settings" → "Pages"
3. 在 "Source" 下选择 "GitHub Actions"
4. 等待自动部署完成

### 步骤 4：访问应用

部署完成后，访问：
```
https://[您的用户名].github.io/ai-geogebra-courseware/
```

## 创建课件

### 使用文本输入

1. 点击"文本输入"按钮
2. 在文本框中输入描述，例如："画一个圆，圆心在(2,3)，半径为5"
3. 点击"生成课件"按钮

### 使用模板选择

1. 点击"模板选择"按钮
2. 选择学科类别（几何、代数、微积分）
3. 从模板列表中选择一个模板
4. 调整参数
5. 点击"生成课件"按钮

## 文本输入示例

**几何图形**
- "画一个圆，圆心在原点，半径为3"
- "画一条经过点(1,1)和(4,5)的直线"
- "画一个三角形，顶点分别为(0,0)、(4,0)、(2,3)"

**代数函数**
- "画一个顶点在原点、开口向上的抛物线"
- "画一个正弦函数，振幅为2，频率为1"

**微积分**
- "画函数f(x) = x^2及其导数"
- "画函数f(x) = x^2在x=1处的切线"

## 项目结构

```
d:\GGB\
├── index.html              # 主HTML文件
├── css/
│   └── style.css          # 主样式文件
├── js/
│   ├── app.js             # 主入口文件
│   ├── geogebra.js        # GeoGebra集成模块
│   ├── ai.js              # AI集成模块
│   ├── ui.js              # UI交互模块
│   ├── storage.js         # 存储管理模块
│   └── utils.js           # 工具函数模块
├── templates/
│   ├── geometry.json      # 几何模板库
│   ├── algebra.json       # 代数模板库
│   └── calculus.json      # 微积分模板库
└── docs/
    ├── tutorial.md        # 教程文档
    └── help.md            # 帮助文档
```

## 技术栈

- **前端**：HTML5, CSS3, JavaScript (ES6+)
- **图形**：GeoGebra JavaScript API
- **AI**：OpenAI / 通义千问 / 文心一言（可选）
- **存储**：IndexedDB

## 浏览器兼容性

支持所有现代浏览器：
- Chrome（推荐）
- Firefox
- Safari
- Edge

## 许可证

本项目仅供学习和教学使用。

---

**祝您使用愉快！**
