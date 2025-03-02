---
title: "预测现在"
subtitle: "Weekly paper 12"
date: 2023-03-31
draft: false
author: 'Manwei Liu'
tags: ['data science']
categories: ['notes']
---

用搜索数据预测现在或近未来。

# 1
[The parable of Google Flu: Traps in big data analysis](https://gking.harvard.edu/files/gking/files/0314policyforumff.pdf)
用搜索数据预测流感——的一些问题。

### Big data hubris
The initial version of GFT was a particularly problematic marriage of big and small data. Essentially, the methodology was to find the best matches among 50 million search terms to fit 1152 data points . The odds of finding search terms that match the propensity of the fl u but are structurally unrelated, and so do not predict the future, were quite high. GFT developers, in fact, report weeding out seasonal search terms unrelated to the flu but strongly correlated to the CDC data, such as those regarding high school basketball.

Lagged models significantly outperforming GFT. But a combination of GFT and CDC autoregression would improve a lot.

### Measurement/Data-generating process
All empirical research stands on a foundation of measurement. Is the instrumentation actually capturing the theoretical construct of interest? Is measurement stable and comparable across cases and over time? Are measurement errors systematic? 

At a minimum, it is quite likely that GFT was an unstable reflection of the prevalence of the flu because of algorithm dynamics affecting Google’s search algorithm. Algorithm dynamics are the changes made by engineers to improve the commercial service and by consumers in using that service. 
And “red team” dynamics occur when research subjects (in this case Web searchers) attempt to manipulate the data-generating process to meet their own goals, such as economic or political gain.

### Transparency and replicability.

# 2
[Predicting consumer behavior with Web search](https://www.pnas.org/doi/full/10.1073/pnas.1005962107)
用搜索数据预测电影票房、音乐榜单排名、游戏销量。搜索数据并不总是有助于提升预测的准确性。当产品的营销成本未知时，搜索数据会极大提升预测力，否则比起用过去的销售额、产品budget等信息做简单回归，它并没有更优的表现。不过，搜索数据在预测突发的变化时更有效。

# 3
Farber, Why you can’t find a taxi in the rain? And other labor supply lessons from cab drivers, QJE2015

用纽约市2009-2013出租车的全部载客数据来检验出租车市场上的劳动供给行为与价格的关系。新古典模型的预测是，价格越高，劳动供给越多。而如果存在参照点依赖，例如，司机有一个每日收入目标，达到目标后就不工作了，那么劳动供给就可能不会随着价格升高而增加。

这篇用到的数据包括日期时间、每一趟行程的低点、费率、小费等。利用这些数据，作者用机器学习估计在每一个特定的时间、地点、天气状况下的价格，也就是每一位司机在每一时刻面临着的市场价格。为了解决劳动供给和价格之间的内生性问题，作者用到了工具变量，包括天气变化、某地点举办的特殊活动。

发现出租车司机的行为更符合新古典模型预测，没有发现他们受到参照点影响的证据。