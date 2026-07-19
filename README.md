# A 股日频横截面多因子研究新人培训资料

## 项目目标

本项目用于建立一套时序正确、可核对、可复现、可教学的 A 股日频横截面多因子研究新人培训资料。最终交付形态为 A4 连续阅读的中文 LaTeX 技术讲义及配套研究材料。

## 当前阶段

当前处于 P03 结构搭建阶段。本阶段仅建立可编译的 LaTeX 项目骨架；章节和附录均为明确标记的占位文件，尚未撰写教学正文。

## 使用 XeLaTeX 编译

仓库根目录的 `main.tex` 是唯一正式编译入口，`.latexmkrc` 已将默认编译器固定为 XeLaTeX。

```bash
latexmk main.tex
```

也可以直接运行两次 XeLaTeX，以生成稳定的目录和交叉引用：

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

在 Overleaf 中应将 Main document 设为根目录的 `main.tex`，并选择 XeLaTeX 编译器。

## 目录结构

```text
quant/
├── main.tex                 # 唯一正式编译入口
├── preamble.tex             # 宏包、配色、组件与版式
├── template_backup.tex      # 历史模板备份，不作为入口
├── chapters/                # 主体十章占位
├── appendices/              # 附录占位
├── ai_usage/                # AI 提问与使用记录模板
├── docs/                    # 项目蓝图说明
├── .latexmkrc               # XeLaTeX 编译配置
├── AGENTS.md                # 仓库工作规范
└── README.md
```

## 数据与结果限制

当前仓库没有真实金融数据，因此禁止生成、暗示或展示任何实证结果，包括但不限于收益率、IC、RankIC、夏普比率、回撤、胜率和回测净值曲线。后续如使用合成数据，必须明确标注为教学示意或单元测试数据，不得让读者误认为真实业绩。
