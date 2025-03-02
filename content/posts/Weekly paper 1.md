---
title: "法外狂徒"
subtitle: "Weekly paper 1"
date: 2023-01-01
draft: true
author: "Manwei Liu"
tags: ['crime', 'network']
categories: ['notes']
---

关于有组织犯罪。

# 1

`Duijn Kashirin Sloot, The Relative Ineffectiveness of Criminal Network Disruption, Scientific reports 2014` 

结合social network analysis和荷兰警察局的数据，研究如何更有效地打击犯罪网络。

## 分析框架
传统分析方法把犯罪网络当作一个内部有分工有层级的统一组织，认为铲除该组织的头儿就会导致组织的崩溃。而社会网络研究的视角则认为，犯罪网络并非一个组织，而是流动的、灵活的，具有很高的resilience，会适应外部的扰动。

犯罪网络本身还有区别于其它网络的特殊性：它们面对着效率和安全性的权衡取舍。一方面，它们要隐藏自身，既要避开监管和执法，又要防范竞争对手。因此彼此间的直接交流必须控制在最低的程度。另一方面，它们从事的高风险活计又要求成员之间进行有效的交流，建立完全的信任。这种权衡取舍就让犯罪网络产生了一些独特的行为模式。例如，重要的玩家往往有意识地置身于网络的边缘和外围；受经济利益驱使的网络（如贩毒）更追求效率，要缩短行动与行动之前的时间窗口，而受意识形态驱使的犯罪集团，如恐怖分子，则更注重安全，任务只要成功一次就可以了。

## 打击方案
干扰策略可以分类两类：对社会资本的干扰和对人力资本的干扰。

对社会资本的干扰是基于SNA，针对那些网络中的关键中心玩家，他们最有影响力，拥有最多的社会资本，衡量标准是degree centrality和betweenness centraility。前者是一个actor直接联系人的数量，是一个中心化的网络Hub的关键点。而后者是一个actor作为其它联系人的中间人的次数，是不同hub之前的桥梁。

对人力资本的干扰则是把犯罪网络看作一个价值链，每一步都需要不同的技能和知识，因此应该对价值链中最难以替代的那个角色进行打击，比如“经纪人”。这些经纪人经手了大量资源和reputation，是发起和协调行动的必要环节。而找到这些环节的替代人选，可能更需要weak ties。那么这种替换行为就会威胁到网络的安全性。

> …these features make criminal network resilience a paradoxical concept. On the one hand it depends on redundancy, that’s essential for finding trustworthy replacements after losses due to disruption. On the other hand it depends on non-redundancy, as the increased risks associated with the search replacement, demand compartmentalization of the flow of information to prevent further detection.  

## 这个研究
但以上研究都不能告诉我们，遭受打击之后的犯罪网络是如何恢复的，或者说，是什么让它们如此坚韧？这篇文章的目标，一是还原犯罪网络受到干扰到恢复的动态过程，二是通过模型和simulation，找到最有效率的干扰策略。

文章的研究对象是荷兰的大麻种植产业。soft数据包括线人提供的报告，和已经结案的案件报告。hard数据是三年期间同一个区域里的arrest信息。作者用这两套数据搭建起macro和micro犯罪网络结构，前者是包含了所有玩家的所有criminal relationships，无论他们从事的是哪一行当，而micro的只包含在大麻种植这个产业链中的所有玩家。

关于网络本身，他们的主要发现是：

* 这些网络都是scale-free的，也就是说，存在一些联络广泛的中心玩家以及围绕着他们的hub。如果打击到这些中心玩家，就有可能把犯罪网络打散成更小的网络。
* 在大麻产业中，coordinator和growshop owner是最核心的角色。他们控制着信息的流动，把整条value chain组合在一起。

他们simulate了五种打击策略：随机打击，针对degree centrality最高的玩家，针对betweenness centrality最高的玩家，针对value chain degree最高的玩家，和针对特定产业特定技能玩家。三种恢复策略：随机恢复，优先距离，优先degree。恢复程度用两种标准：效率（玩家之间的距离）和密度（直接联络与所有联络之比）。

主要发现：
* 对犯罪网络进行打击后，网络可能会变得更有效率，因为帮助他们去掉了一些冗余。随机打击和针对特定产业特定技能玩家这两种策略下，恢复的速度和程度都更低。
* 犯罪网络内部效率的提升会降低它的安全性。

文章认为，重要的是在犯罪网络形成的早期进行干预，免得它发展壮大到resilient的程度。


# 2
`Leeson, An-arrgh-chy: The law and economics of pirate organization, JPE2007`

这篇研究就是在把犯罪团队当成一个组织的分析框架下进行的，它讨论的是海盗内部的法律、经济和组织安排。

1690-1730是海盗的黄金时期。一个海盗团伙的规模，有80-200人，种族国籍多样化的程度不一。

商船水手可以求助于English law，而海盗游离在社会的正式组织之外，不能享受法律的保护，也没有投资人的约束，因此他们内部必须要设计一些机制来防止彼此毁灭，减少冲突，最大化利润。海盗们有一位船长来保证任务的执行，更多是依靠民主监督，权力分散，和“宪法”。

一些有趣的规则：
1. 除船长之外（他主要负责战斗），海盗们还需选出一位quarter-master来处理内部的各种事务，包括监督船长的指令。
2. 同时，海盗们还会制定自己的宪法，chasse-partie，来决定物资的分配规则，例如失去右手，可获得6个奴隶；失去左手，获得5个奴隶的补偿，一只眼则是1个奴隶。
3. 这些规则逐渐系统化，形成了惯例法，叫作Custom of the Coast or Jamaica Discipline.
4. 船上的规则必须获得全员一致同意。如果两船合并，则需要就合作另立条款。反对这些条款的船员可以和平离开。

# 3
`Ciacci Sviatschi, The effect of adult entertainment establishments on sex crime: Evidence from New York City`

这篇文章用纽约市成人娱乐场所的开放数据与纽约警方汇报的每日街头性犯罪数据相结合，发现这些娱乐场所减少了13%的每日性犯罪，对其它类型的犯罪没有影响，主要是由于那些潜在的性犯罪实施者转而光顾娱乐场所所致。

一些基本数据和事实：
性犯罪集中在曼哈顿区（8.5年的研究期间有3,844起）。布鲁克林和皇后区的性犯罪数量大约是曼哈顿的一半。冬季发生的性犯罪最少。95%的性犯罪是由男性实施的。性犯罪并不集中在一周中的特定日子或一天中的特定时段。

美国的卖淫市场分为三个部分。最低级的阶梯是由户外卖淫（即街头妓女）形成的，这通常是由皮条客经营。因此，街头卖淫者在选择客户、收入和健康检查方面缺乏控制。她们也往往更年轻，更有可能成为暴力的受害者，被逮捕或吸毒成瘾。脱衣舞俱乐部和绅士俱乐部构成了阶梯的中层。在这个行业中，卖淫是作为一种生意来经营的；妓女可能缺乏对客户的控制，但享有更高的收入，更安全的控制和更频繁的健康检查。自主经营的陪酒女郎占据了最高的阶梯。在这个市场领域，卖淫是专业化的：由于没有皮条客，她们自己可以控制客户、收入、健康状况和 "职业"。

