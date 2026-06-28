# Manwei Liu — Personal Site

## 目录结构

```
second_site/
├── config.toml              # Hugo 配置
├── cv/                      # CV 工作流（你要改的在这里！）
│   ├── cv.md                # ← 编辑这个文件来更新 CV 内容
│   ├── cv-template.tex      # 排版模板（不用碰）
│   ├── build-cv.sh          # 运行它以生成 PDF
│   └── cv.pdf               # 生成的 PDF
├── data/research/
│   └── publications.yaml    # ← 研究论文数据（增删改在这里）
├── layouts/
│   ├── _default/baseof.html # 页面框架
│   └── index.html           # 主页模板（读取 YAML 生成研究列表）
├── assets/css/
│   └── main.css             # 自定义样式
├── static/
│   ├── images/avatar.svg    # 占位头像，之后替换
│   └── pdfs/                # PDF 文件放这里
├── _archive/                # 旧内容归档，不再上线
├── content/                 # 空（单页站点，不需要额外内容页）
└── .github/workflows/hugo.yaml  # GitHub Actions 自动部署
```

---

## 日常操作

### 更新 CV

```bash
# 1. 编辑 cv/cv.md（纯 Markdown，只改文字）
# 2. 生成 PDF
cd cv && ./build-cv.sh
# 3. 在 cv/cv.pdf 查看结果，满意后提交
```

**你只需要改 `cv/cv.md` 这一个文件。** 排版由 `cv-template.tex` 自动处理，不需要碰格式。

### 添加/修改论文

编辑 `data/research/publications.yaml`，结构如下：

```yaml
sections:
  - name: "Published"              # 类别标题
    papers:
      - title: "论文标题"
        authors: "with 合作者"     # 可选
        status: "期刊名，状态"      # R&R, accepted 等
        abstract: "摘要内容"       # 可选
        links:                     # 可选
          - label: "PDF"
            url: "/pdfs/文件名.pdf"
```

### 本地预览

```bash
hugo server
# 访问 http://localhost:1313
```

### 发布上线

```bash
git add .
git commit -m "更新内容"
git push origin main
# GitHub Actions 自动构建部署，等 1-2 分钟后刷新网站
```

---

## 待办事项

- [ ] **替换头像**：把自己的照片放到 `static/images/avatar.jpg`，然后在 `layouts/index.html` 里把引用从 `avatar.svg` 改为 `avatar.jpg`，并调整大小
- [ ] **配置 Google Scholar ID**：在 `config.toml` 中把 `scholar = ""` 填上你的 Google Scholar ID
- [ ] **添加 CV update**：CV 内容从 2024年5月到现在有变动，需要你更新 `cv/cv.md` 中的新增内容
- [ ] **补充论文 PDF**：有 PDF 版本的论文放到 `static/pdfs/` 下，然后在 `publications.yaml` 中引用
