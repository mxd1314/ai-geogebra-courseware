# 更新历史

## v1.0.4 (2025-03-26)

### 部署配置
1. **GitHub Pages 部署**
   - 添加 `.github/workflows/deploy.yml` 自动部署工作流
   - 添加 `.nojekyll` 文件禁用 Jekyll 处理
   - 更新 README.md 添加详细部署说明

## v1.0.3 (2025-03-26)

### 部署配置
1. **启动脚本**
   - 创建 `start.bat` Windows 启动脚本
   - 优化 `server.js` 服务器代码
   - 添加更多 MIME 类型支持

2. **Docker 支持**
   - 创建 `Dockerfile` 容器化配置
   - 创建 `docker-compose.yml` 编排配置
   - 支持一键 Docker 部署

3. **Nginx 配置**
   - 创建 `nginx.conf` 反向代理配置
   - 支持 Gzip 压缩
   - 静态资源缓存优化

4. **部署文档**
   - 创建 `DEPLOY.md` 详细部署指南
   - 包含多种部署方式说明

## v1.0.3 (2025-03-26)

### UI 优化
1. **面板内容滚动优化**
   - 面板内容区域添加最大高度限制 (400px)
   - 内容超出时可上下滚动
   - 平滑滚动效果
   - 细滚动条样式

## v1.0.2 (2025-03-26)

### 部署配置
1. **Flask 后端服务**
   - 创建 `backend/app.py` Flask 应用
   - 支持 API 接口和静态文件服务
   - 添加 CORS 跨域支持

2. **Tailwind CSS 前端**
   - 添加 `tailwind.config.js` 配置
   - 创建 `css/tailwind-input.css` 输入文件
   - 支持 `npm run build` 构建生产版本

3. **部署脚本**
   - `deploy.bat` - 自动部署脚本
   - `start.bat` - 启动服务脚本
   - `Dockerfile` - Docker 容器化部署
   - `docker-compose.yml` - Docker Compose 编排
   - `nginx.conf` - Nginx 反向代理配置

### UI 优化
- 左侧边栏平滑滚动和自定义滚动条
- 按钮渐变背景和点击动画
- 表单控件悬停/聚焦效果
- 模板卡片悬停上浮效果

## v1.0.1 (2025-03-26)

### 修复内容
1. **GeoGebra appName 配置** 将 `appName: 'graphing'` 改为 `appName: 'classic'`
2. **规则引擎命令格式**
   - 点命令： `A = Point((x, y))` 改为 `A = (x, y)`
   - 直线/三角形/多边形等命令格式修复
   - 调整模式匹配顺序，避免误匹配

### 测试结果
- 所有几何命令正常工作
- 圆、直线、三角形、抛物线、函数等命令执行成功
