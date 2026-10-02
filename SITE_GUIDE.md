# Site Guide

## 项目概览

| | |
|---|---|
| 框架 | Hugo v0.157.0 |
| 主题 | 无（纯自定义 layouts） |
| 托管 | GitHub Pages (`manweiliu.github.io`) |
| 仓库 | `https://github.com/manweiliu/manweiliu.github.io.git` |
| 部署 | push 到 `main` → Actions 自动 build → 部署 |

---

## 目录结构

```
./
├── .github/workflows/hugo.yaml   # CI/CD —— 不用动
├── assets/css/main.css           # 全部样式 —— 不用动
├── config.toml                   # 站点配置 —— 基本不用动
├── content/                      # 已清空（旧内容在 _archive/）
├── cv/
│   ├── cv.md                     # ★ CV 内容源（你维护）
│   ├── cv-template.tex           # LaTeX 模板（不用动）
│   └── build-cv.sh               # 构建脚本（不用动）
├── data/research/
│   └── publications.yaml         # ★ 研究论文数据（你维护）
├── layouts/
│   ├── _default/baseof.html      # HTML 骨架
│   └── index.html                # 主页模板
├── static/
│   ├── cv/cv.pdf                # CV PDF（build 脚本自动生成，网站链接用）
│   ├── images/avatar.jpg         # ★ 头像
│   └── pdfs/                     # ★ PDF 文件（你放）
├── public/                       # 构建产物（不上传）
├── _archive/                     # 旧内容存档（不上传）
├── README.md
└── SITE_GUIDE.md
```

---

## 你维护的部分

| 文件 | 做什么 | 频率 |
|---|---|---|
| `data/research/publications.yaml` | 增删改论文条目、abstract、链接 | 有变动时 |
| `cv/cv.md` | 更新 CV 内容 | 有变动时 |
| `static/pdfs/` | 放入新的论文 PDF | 有发表时 |
| `static/images/avatar.jpg` | 换头像 | 几乎不动 |

其他文件（样式、模板、配置、CI）原则上不碰，需要改的时候找我。

---

## 工作流

### 本地预览

```bash
hugo server
# → http://localhost:1313
```

### 更新研究论文

编辑 `data/research/publications.yaml`。字段说明：

```yaml
sections:
  - name: "板块名"
    papers:
      - title: "论文标题"
        authors: "with [Name](url)"     # 有个人网站就加链接
        status: "期刊名, 卷期(年份): 页码"  # 可选，没有就留空
        abstract: "摘要或一句话 teaser"
        links:
          - label: "PDF"
            url: "/pdfs/filename.pdf"   # 放 static/pdfs/ 下
          - label: "Publisher Version"
            url: "https://..."          # 可选
```

- abstract 可长可短，长是正式摘要，短就当 teaser
- links 可有多条也可以没有
- status 可不填（空字符串 `""` 或整行删掉）

### 更新 CV

编辑 `cv/cv.md`，然后生成 PDF：

```bash
# 在项目根目录运行
cd cv && ./build-cv.sh
```

脚本会用 pandoc + xelatex 生成 `cv/cv.pdf`，并自动复制到 `static/cv/`（网站 CV 链接指向这里）。确认效果后把 `cv/cv.md`、`cv/cv.pdf`、`static/cv/cv.pdf` 一起提交。

### 添加 PDF 文件

把 PDF 放进 `static/pdfs/`，然后在 `publications.yaml` 对应论文的 links 里引用 `/pdfs/文件名.pdf`。

### 部署

```bash
git add <改过的文件>
git commit -m "描述"
git push
```

push 后去 https://github.com/manweiliu/manweiliu.github.io/actions 看 deployment 进度，绿勾即上线。

---

## 报错处理经验

### SSH "Permission denied (publickey)"

SSH key 没配到 GitHub 账户。用 HTTPS 远程：

```bash
git remote set-url origin https://github.com/manweiliu/manweiliu.github.io.git
```

下次 push 会提示输用户名和密码，密码填 GitHub Personal Access Token（在 https://github.com/settings/tokens 生成，勾 `repo` 权限）。

### 构建失败 "non-map value is specified"

`publications.yaml` 缩进出错。检查：
- `sections:` 下每个 `- name:` 对齐
- `papers:` 下每个 `- title:` 对齐
- 缩进用两个空格，不要用 tab

### 构建警告 "no layout file for 'html' for kind 'taxonomy'"

无害。因为没有 taxonomy 页面（categories/tags），忽略即可。

### 网站改了但 push 后没更新

1. 去 Actions 页面确认 workflow 跑完且是绿色
2. GitHub Pages 的 Source 需设为 "GitHub Actions"（Settings → Pages）
3. DNS/Cookie 缓存，硬刷新（Cmd+Shift+R）或开无痕窗口看
