---
title: "我们不生产谎言，只是帮你说服你自己"
subtitle: "Weekly paper 2"
date: 2023-01-08
draft: false
author: "Manwei Liu"
tags: ['political']
categories: ['notes']
---

关于政治中的叙事和观点的形成。

# 1
`Miani, Hills & Bangerter, Interconnectedness and (in)coherence as a signature of conspiracy worldviews, SciAdv2022`

**Theory**
- Conspiracy theories may arise out of an overarching conspiracy worldview that identifies common elements of subterfuge across unrelated or even contradictory explanations, leading to networks of self-reinforcing beliefs. 
- People who believe in one CT tend to believe in others, irrespective of how unrelated or contradictory they may seem. Belief in multiple conspiracies may be self-supporting: The interconnectivity among conspiracy beliefs is supported by a meta-belief that resolves the apparent contradictions at the lower level. The combination of incompatible (or, more generally, incoherent) lower-level explanations that get resolved by mutual compatibility with a higher-level belief that authorities are deceptive has recently been claimed to be the hallmark of conspiracy worldviews.
- Conspiracy believers tend to identify meaningful relationships among randomly co-occurring events. CTs serve sense-making functions, as they allow one to reduce the complexity of real-world events.

**Hypotheses** 
- If a conspiracy worldview coerces unconnected observations to support for an overarching belief in the deceptive nature of authorities, then a network of potential conspiracy-related topics will be more tightly interconnected in conspiracy documents than in nonconspiracy documents. We calculated the average **degree of connectedness** in the networks by extracting how many edges were connected to each node (either seeds or topics). 
- If conspiracy narratives focus less on individual topics than nonconspiracy narratives, then topic specificity will be lower for conspiracy than nonconspiracy documents. We evaluated the **inequality of within-document topic distributions** using the Gini coefficient. 
- Text cohesion between paragraphs should be less internally cohesive for conspiracy documents than nonconspiracy documents (how well within-document paragraphs are semantically connected to each other, e.g. lexical cohesion across paragraphs).
- If conspiracy narratives reference similar worldviews, then similarity between documents should be higher for conspiracy documents (as a group) than nonconspiracy documents. We computed a measure of between-document lexical overlap, the cosine similarity (CS) scores between documents within subcorpora (either conspiracy or nonconspiracy).

**Data**
language of conspiracy (LOCO), an 88 million–word corpus composed of topic-matched conspiracy (N= 23,937) and nonconspiracy (N= 72,806) text documents (i.e., webpages) harvested from 150 websites. 

**Findings**
- We find that, relative to nonconspiracy texts, conspiracy texts are more interconnected, more topically heterogeneous, and more similar to one another, revealing lower cohesion within texts but higher cohesion between texts and providing strong empirical support for an overarching conspiracy worldview.

# 2
`Charnysh, Remembering past atrocities — good or bad for attitude toward minorities?, Book chapter`

关于历史事件的叙事如何影响人们对少数族裔的态度。文章关注的是对于二战中欧洲各国对犹太人的排挤或屠杀的叙事。同一个历史事件，政客们可以从不同切入点强调事件的不同侧面（例如，“施害者”和“受害者”），从而影响人们的态度，达到自己的政治目的。

欧洲各国的右翼党均试图质疑大屠杀本身，否认本国在二战期间参与过罪行。东欧的一些中右党采用的也是类似的策略：reframe大屠杀，把本国的形象塑造的稍微积极光辉一些，同时把竞争对手形容为不爱国。

作者选择了波兰作为研究背景，因为它在二战期间经历并见证了种族灭绝。它的330万犹太人社区在大屠杀中几乎全部被消灭。当地的基督徒有时会利用犹太人的噩运，偷窃犹太人的财产，甚至参与对犹太人的迫害。也许最有名的事件发生在1941年的耶德瓦布内镇，当时当地的天主教徒把数百名犹太人围起来烧死在谷仓里（Gross 2001）。然而，基督教波兰人自己也经历了苏联和德国占领、种族清洗和强制驱逐的恐怖。1943年至1945年，8万至10万波兰平民在伏尔加尼亚和东加利西亚被乌克兰民族主义者残忍地杀害。

作者使用了在线实验，将波兰被试随机分到三个叙事组。控制组里，被试阅读关于1995年波斯尼亚和黑塞哥维那大屠杀的资料。两个实验组收到了有关耶德瓦布内大屠杀的信息（施害者叙事）。其中一个实验组还了解了1943年在伏尔加尼亚发生的大屠杀（受害者叙事），同时还配有一条说明声称波兰人在乌克兰民族主义者手中遭受的苦难没有得到足够的公众注意，远不如犹太人在耶德瓦布内遭受的苦难得到的宣传。

然后，受访者被问及他们是否同意旨在衡量对少数民族权利、反犹太主义、民族中心主义和多元化的态度的陈述。还测量了一个相关的概念--集体自恋，它被定义为对一个群体之伟大的不切实际的信念：
(1)我的团体应该得到特殊待遇；
(2)很少有人完全理解我的团体有多重要；
(3)当我的团体被批评时，我非常生气；
(4)如果我的团体有更多的发言权，世界会变得更好；
(5)在我的团体得到适当认可之前，我不会休息。

**Finding**
文章发现，施害者叙事可以减少种族中心主义的信念，用受害者叙事来反驳施害者叙事则会削弱这种效果，也会降低对少数民族权利的支持。这些不同的叙事没有影响反犹太主义或多元主义的态度。

# 3
`Picard & Stammbach, Political metaphors in U.S. governor speeches`

这篇文章是一份描述性的研究，看美国政客如何在发言中使用比喻和隐喻。

**Definition**
Metaphors are figures of speech carrying a symbolic meaning that is intuitive and generally easy to understand. A metaphor hinges on a subtle analogy of using one idea to express another. 

**Data and method**
基于深度学习的隐喻检测模型Rei et al. (2017)。这是一种基于深度学习的算法，它根据词对（形容词-名词、主语-动词或动词-宾语）的隐喻性进行评分，可解释为人类注释者将一个词对视为隐喻的概率。在验证了隐喻检测在这一领域的适用性之后，基于关键词将隐喻分为9个主题： "经济"、"教育"、"就业"、"环境"、"财政"、"政府"、"保健"、"司法和犯罪 "以及 "道德价值"。此外，用Gennaro和Ash（2022）的方法，衡量周围语音内容的相关情感强度。

使用1995年至2022年美国政府的年度国情咨文演讲（U.S. governors’ State of the State (SOTS) speeches）的语料库。

**Finding**
* 在财政和经济问题上最常使用隐喻。
* 州长们在其党派团队优先考虑的议题上引用了更多的隐喻。相对于共和党州长，民主党州长在环境问题上使用了更多的隐喻，而共和党州长则在自由和道德价值上表达了更多的隐喻。
* 包含政治隐喻的语言能提高情绪指数，特别是在与经济、财政问题和道德价值有关的主题上。