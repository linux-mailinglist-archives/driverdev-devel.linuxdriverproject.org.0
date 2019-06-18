Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1858A4AA24
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAA968650D;
	Tue, 18 Jun 2019 18:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-oKGz-DytvR; Tue, 18 Jun 2019 18:45:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAC32864F3;
	Tue, 18 Jun 2019 18:44:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1C61BF327
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 125E682165
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3S7s9XIb77HO for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:44:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com
 [216.40.44.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3FA6882043
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:44:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id E42801802E8BF
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:44:54 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id A58883AA7;
 Tue, 18 Jun 2019 18:44:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2110:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3868:3870:3872:3874:4321:5007:6742:6743:8784:10004:10400:10848:11232:11658:11914:12048:12555:12740:12760:12895:13069:13255:13311:13357:13439:14659:21080:21451:21627,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: beds50_4715d8d57491f
X-Filterd-Recvd-Size: 2402
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Tue, 18 Jun 2019 18:44:48 +0000 (UTC)
Message-ID: <1d206e92d9882865c11016d315f8edcd4344cbb8.camel@perches.com>
Subject: Re: [PATCH v2 1/4] staging: media: tegra-vde: Remove BIT() macro
 from UAPI header
From: Joe Perches <joe@perches.com>
To: Johannes Berg <johannes@sipsolutions.net>, Dmitry Osipenko
 <digetx@gmail.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan
 Hunter <jonathanh@nvidia.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 18 Jun 2019 11:44:47 -0700
In-Reply-To: <e5b8756590260b4d6a26cf9f02deb9d157cfca83.camel@sipsolutions.net>
References: <20190618161458.20499-1-digetx@gmail.com>
 <20190618161458.20499-5-digetx@gmail.com>
 <26cd63896d6930385b4f770e305f0782a455a688.camel@perches.com>
 <e5b8756590260b4d6a26cf9f02deb9d157cfca83.camel@sipsolutions.net>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Song Liu <songliubraving@fb.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jiri Pirko <jiri@resnulli.us>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-tegra@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Mark Rutland <mark.rutland@arm.com>,
 Martin KaFai Lau <kafai@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-06-18 at 20:37 +0200, Johannes Berg wrote:
> On Tue, 2019-06-18 at 11:23 -0700, Joe Perches wrote:
> > include/uapi/linux/nl80211.h: * bitmask of BIT(NL80211_BAND_*) as described in %enum
> > 
> > 
> That's a comment :P

That's true and that's nice.

It was a casual grep and the comment should
probably be improved anyway.

<insert appropriate emoji here>

cheers, Joe

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
