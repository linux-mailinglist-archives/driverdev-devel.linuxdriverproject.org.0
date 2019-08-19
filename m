Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E889091CB3
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C906A84CCE;
	Mon, 19 Aug 2019 05:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c150oz51IKJV; Mon, 19 Aug 2019 05:47:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60C1085514;
	Mon, 19 Aug 2019 05:47:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D69971BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD10785641
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vf6lKVJI6cRE for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:47:21 +0000 (UTC)
X-Greylist: delayed 00:18:33 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF44084785
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:47:21 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 94ED253B3;
 Mon, 19 Aug 2019 05:47:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::,
 RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:1801:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:4605:5007:7974:10004:10400:10848:11232:11233:11658:11914:12043:12296:12297:12679:12740:12760:12895:13019:13069:13071:13161:13229:13311:13357:13439:14180:14659:14721:21060:21080:21627:21740:30054:30056:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: salt01_5cf136d77bd2a
X-Filterd-Recvd-Size: 2569
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Mon, 19 Aug 2019 05:47:18 +0000 (UTC)
Message-ID: <31cb3e54fe532630b45bb74ba4fc688eb86eab1f.camel@perches.com>
Subject: Re: [PATCH] erofs: Use common kernel logging style
From: Joe Perches <joe@perches.com>
To: Gao Xiang <gaoxiang25@huawei.com>
Date: Sun, 18 Aug 2019 22:47:17 -0700
In-Reply-To: <20190819055243.GB30459@138>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818092839.GA18975@hsiangkao-HP-ZHAN-66-Pro-G1>
 <52e4e3a7f160f5d2825bec04a3bc4eb4b0d1165a.camel@perches.com>
 <20190819055243.GB30459@138>
User-Agent: Evolution 3.32.1-2 
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
Cc: devel <devel@driverdev.osuosl.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-08-19 at 13:52 +0800, Gao Xiang wrote:
> Hi Joe,

Hello.

> On Sun, Aug 18, 2019 at 10:28:41PM -0700, Joe Perches wrote:
> > Rename errln, infoln, and debugln to the typical pr_<level> uses
> > to the typical kernel styles of pr_<level>
> 
> How about using erofs_err / ... to instead that?

<shrug>  I've no opinion.
It seems most fs/*/* filesystems actually do use pr_<level>
sed works well if you want that.

>  - I can hardly see directly use pr_<level> for those filesystems in fs/...

just fyi:

There was this one existing pr_<level> use in erofs

drivers/staging/erofs/data.c:366:                               pr_err("%s, readahead error at page %lu of nid %llu\n",
drivers/staging/erofs/data.c-367-                                      __func__, page->index,
drivers/staging/erofs/data.c-368-                                      EROFS_V(mapping->host)->nid);



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
