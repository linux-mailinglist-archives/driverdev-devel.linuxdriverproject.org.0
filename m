Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA6016A7C1
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 14:57:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72CEB2049A;
	Mon, 24 Feb 2020 13:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6kpHG8eMmaX; Mon, 24 Feb 2020 13:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F06E2048C;
	Mon, 24 Feb 2020 13:57:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1EC1BF40A
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 13:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D7AF86981
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 13:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGH9kkO5hnyu for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 13:57:15 +0000 (UTC)
X-Greylist: delayed 04:36:07 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
 [216.40.44.192])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 408D286631
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 13:57:15 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 70F7818022BEE
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 13:39:43 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 32A44837F24A;
 Mon, 24 Feb 2020 13:39:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:6119:7903:9040:9389:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12740:12760:12895:13018:13019:13069:13095:13161:13229:13311:13357:13439:14659:14721:21080:21433:21611:21627:21740:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:18, LUA_SUMMARY:none
X-HE-Tag: toe07_5458a77d0305a
X-Filterd-Recvd-Size: 1927
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Mon, 24 Feb 2020 13:39:39 +0000 (UTC)
Message-ID: <84410699e6acbffca960aa2944e9f5869478b178.camel@perches.com>
Subject: Re: [PATCH v4] staging: qlge: emit debug and dump at same level
From: Joe Perches <joe@perches.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>, Manish Chopra
 <manishc@marvell.com>,  GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Mon, 24 Feb 2020 05:38:09 -0800
In-Reply-To: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
References: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
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

On Mon, 2020-02-24 at 13:54 +0530, Kaaira Gupta wrote:
> Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> instead of existing functions so that the debug and dump are
> emitted at the same KERN_<LEVEL>
[]
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> @@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
>  {
>  	struct ql_adapter *qdev =
>  		container_of(work, struct ql_adapter, mpi_core_to_log.work);
> -	u32 *tmp, count;
> -	int i;
>  
> -	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
> -	tmp = (u32 *)qdev->mpi_coredump;
> -	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
> -		     "Core is dumping to log file!\n");

There is no real need to delete this line.

And if you really want to, it'd be better to mention
the removal in the commit message description.

As is for this change, there is no "debug" and "dump"
as the commit message description shows, just "dump".




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
