---
title: "贫穷与暴力的遗传"
subtitle: "Weekly paper 6"
date: 2023-02-08
draft: false
author: 'Manwei Liu'
tags: ['poverty','violence']
categories: ['notes']
---

连接和组合多个数据库的艺术。

# 1
`[The Causal Impact of Removing Children from Abusive and Neglectful Homes | NBER](http://www.nber.org/papers/w25419)`

每年，美国的儿童保护服务机构都会调查400多万起虐待或忽视的指控（美国卫生与公众服务部，2016）。根据调查结果，当局每年将近20万名儿童从他们的家中带走，并将他们安置在寄养机构。这种安置对儿童成长带来了什么影响？

这篇文章用的是罗德岛admin数据结合孩子们的学业数据，用调查员个人在本案以外的案件中带走小孩的倾向作为工具变量（这个IV与是否会带走此案中的小孩的决定相关，而又与此案的具体特征无关）。

作者发现，就学业结果而言（包括考试成绩、留级率、特殊教育参与率、学校流动性、学校特点、青少年犯罪、高中毕业、青少年生育和中学后继续接受教育等变量），被带离原生家庭显著地提升了女孩的学业表现，而对男孩的学业表现没有显著影响。

至于这个性别差异，它可能发生在调查前（直接影响学业表现），或者是带离原生家庭改变了某个中介变量，又或者是因为女孩男孩对带离原生家庭的反应不同。

# 2
`[Breaking the Cycle? Intergenerational Effects of an Antipoverty Program in Early Childhood | JPE2022](https://doi.org/10.1086/720764)`

这篇文章研究的是Head Start这个早期儿童干预项目对参与者子女的影响。作者们从国家档案和记录管理局（NARA）提取和汇编的数据来构建出母亲的Head Start exposure，然后将这个数据与其它三个儿童与青少年纵向调查数据库联系起来。

主要结论是，母亲若能获取早期儿童干预项目的支持，第二代的收入会提高6%-11%，接受教育程度也升高，青少年怀孕和参与犯罪活动的几率下降。

# 3 
`Can you move to opportunity? Evidence from the Great Migration, Derenoncourt, AER2022`

这篇文章用到的数据库有：
- complete count US censuses from 1920-1940
- contemporary measures from Chetty and Hendren (2018b) and Chetty et al. (2018)
- digitized information on local government spending from the Financial Statistics of State and Local Governments and the Census of Local Governments
- data on schooling from the Biennial Statistics of Education and the Census;
- urban murder rates from the Uniform Crime Reports
- Census reports on local county jail populations
- Vera Institute of Justice’s In Our Backyards database

:open_mouth::open_mouth::open_mouth:

故事是这样的：1940年时，相较于南方，美国的北方城市给非裔家庭提供了更好的向上流动的机会。在1940年至1970年间，四百万非裔美国人离开南方去美国北部和西部的城市地区定居，也就是今天人们所说的“大迁徙”（Great Migration)。大迁徙改变了目的地城市的种族人口结构，促使当地的白人家庭逐渐退出了这些与非裔美国人共享的城市社区和公立学校。到20世纪60年代末，大迁徙目的地城市爆发了暴乱，在随后的几十年里，这些城市的警务开支增加，谋杀率升高，入狱人数增加。社区条件的恶化最终降低了向上流动的可能性，尤其是对于非裔美国男性来说。

总之，大量非裔美国人迁去北方城市从根本上改变了北方城市的社区环境，种族隔离依然存在，之前北方相对于南方的优势也就不复存在。