Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C4A16AC55
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:56:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AC5485DF5;
	Mon, 24 Feb 2020 16:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V46LWNLdo-wV; Mon, 24 Feb 2020 16:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27FFF845AA;
	Mon, 24 Feb 2020 16:56:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 178F01BF2FD
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 121BB842FC
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEGbILZTWCAL for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:56:15 +0000 (UTC)
X-Greylist: delayed 13:25:07 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB61585DBB
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:56:15 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 620EC18224D7C;
 Mon, 24 Feb 2020 16:56:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:6119:7903:9040:9389:10004:10400:10450:10455:10848:11026:11232:11658:11914:12043:12048:12296:12297:12663:12740:12760:12895:13069:13095:13311:13357:13439:14659:14721:19904:19999:21080:21433:21611:21627:21740:30012:30054:30070:30083:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: ray51_362d824f82409
X-Filterd-Recvd-Size: 2679
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Mon, 24 Feb 2020 16:56:12 +0000 (UTC)
Message-ID: <9f0d39d5972553b86123873294fc9f9566130036.camel@perches.com>
Subject: Re: [PATCH v4] staging: qlge: emit debug and dump at same level
From: Joe Perches <joe@perches.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>, Manish Chopra
 <manishc@marvell.com>,  GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Mon, 24 Feb 2020 08:54:43 -0800
In-Reply-To: <20200224164721.GA7214@kaaira-HP-Pavilion-Notebook>
References: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
 <84410699e6acbffca960aa2944e9f5869478b178.camel@perches.com>
 <20200224164721.GA7214@kaaira-HP-Pavilion-Notebook>
User-Agent: Evolution 3.34.1-2 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-02-24 at 22:17 +0530, Kaaira Gupta wrote:
> On Mon, Feb 24, 2020 at 05:38:09AM -0800, Joe Perches wrote:
> > On Mon, 2020-02-24 at 13:54 +0530, Kaaira Gupta wrote:
> > > Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> > > instead of existing functions so that the debug and dump are
> > > emitted at the same KERN_<LEVEL>
> > []
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > []
> > > @@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
> > >  {
> > >  	struct ql_adapter *qdev =
> > >  		container_of(work, struct ql_adapter, mpi_core_to_log.work);
> > > -	u32 *tmp, count;
> > > -	int i;
> > >  
> > > -	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
> > > -	tmp = (u32 *)qdev->mpi_coredump;
> > > -	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
> > > -		     "Core is dumping to log file!\n");
> > 
> > There is no real need to delete this line.
> > 
> > And if you really want to, it'd be better to mention
> > the removal in the commit message description.
> > 
> > As is for this change, there is no "debug" and "dump"
> > as the commit message description shows, just "dump".
> 
> This patch has already been added to the tree,

What tree is that?
It's not in -next as of right now.

>  if I amend the commit now
> using git rebase, won't it affect the upstream as the SHA-1 of the
> commit and it's children will change?

You are sending patches not pull requests.

If it's really in an actual tree that people
care about, send another patch putting the
netif_printk back.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
