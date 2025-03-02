---
title: "观察数据、实验和调查问卷"
subtitle: "Weekly paper 14"
date: 2023-04-08
draft: true
author: 'Manwei Liu'
tags: ['methods']
categories: ['notes']
---

# 1
`Combining experimental and observational studies in meat-analysis: A mutual debiasing approach`

观察数据有selection bias，RCT也有site selection bias。这篇文章提出了一个DD-IV方法，结合这两类数据，并且同时解决这两种数据的估计bias。

直觉上来说，虽然RCT中的treatment assignment是随机的，但能在此地进行这样的实验可能就意味着此地具有特殊性，因此我们需要给treatment再找一个IV来解决这个问题。例如，在某医院进行随机实验证明某药物的疗效，然而每家医院的情况不同接受的病人不同，存在site-selection bias，因此我们选用医院access to该药物作为IV来评估药物的因果关系，借用RCT的数据来validate这个IV。接着，如果这个IV是有效的，再将同样的IV用到观察数据上，就可以解决估计中的selection bias问题。

# 2
`Survey experiments on economic expectations`

人们的预期是如何形成的？这篇文章回顾了关于这个研究问题的一系列实验调查。

最常用的方法是随机提供信息，也就是让被试们随机阅读新闻或经济数据，然后观察他们对经济的预期和相关行为产生了什么变化。

文章谈到了这种方法在设计中的一些注意事项：
1. 如何选出有代表性的样本。
2. 如何测量预期和行为。
3. 如何控制住各种偏差，如selection bias, social desirability bias。
4. 如何设计出有效的干预。
5. 如何分析数据，利用回归分析或DID。

Some relevant literature:
1. Haaland et al. (2021) - A comprehensive review of the use of survey experiments in economics research, which provides an overview of the different types of experiments and their applications.
2. Camerer and Hogarth (1999) - A seminal paper that discusses the role of expectations in decision-making and the challenges of measuring expectations in economic experiments.
3. Manski (2004) - A book that provides a comprehensive overview of the use of survey data in social science research, including survey experiments.
4. List and Rasul (2011) - A paper that discusses the advantages and disadvantages of using field experiments versus laboratory experiments to study economic behavior.
5. Gabaix et al. (2006) - A paper that uses a survey experiment to study how individuals form expectations about future stock prices.

# 3
`How to run surveys: A guide to creating your own identifying variation and revealing the invisible`

非常棒的工具文。40多页的正文，适合在设计survey或survey experiment的时候对照逐条看。还有约50页是文献中的各种例子。