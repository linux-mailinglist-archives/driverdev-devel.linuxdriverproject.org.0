Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8DD1692DD
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 02:46:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D8DF22763;
	Sun, 23 Feb 2020 01:46:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ErC079w8QMYi; Sun, 23 Feb 2020 01:46:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1128C2275F;
	Sun, 23 Feb 2020 01:46:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F0F4A1BF352
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 01:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EDF1787BD4
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 01:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CCtgtEexAWUV for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 01:46:09 +0000 (UTC)
X-Greylist: delayed 02:20:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0111.hostedemail.com
 [216.40.44.111])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F7B387BC8
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 01:46:09 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 1879C181CB156
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 23:16:28 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 81D4D182251C0;
 Sat, 22 Feb 2020 23:16:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:196:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3874:4321:4605:5007:6119:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14181:14659:14721:21080:21451:21611:21622:21740:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: girls48_37ed54b61044f
X-Filterd-Recvd-Size: 2924
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Sat, 22 Feb 2020 23:16:24 +0000 (UTC)
Message-ID: <45de570ce9afcec576ed521ddad343e6ae46fd0f.camel@perches.com>
Subject: Re: [PATCH v2] staging: qlge: emit debug and dump at same level
From: Joe Perches <joe@perches.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>, Manish Chopra
 <manishc@marvell.com>,  GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sat, 22 Feb 2020 15:14:57 -0800
In-Reply-To: <20200222215109.GA18727@kaaira-HP-Pavilion-Notebook>
References: <20200222215109.GA18727@kaaira-HP-Pavilion-Notebook>
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

On Sun, 2020-02-23 at 03:21 +0530, Kaaira Gupta wrote:
> Write a macro QLGE_DUMP_DBG having a function print_hex_dump so that
> the debug and dump are emitted at the same KERN_<LEVEL> and code becomes
> simpler. Write a macro instead of calling the function directly in
> ql_mpi_core_to_log() to go according to the coding practices followed in
> other drivers such as nvec and vc04_services.
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
> 
> changes since v1: make code of ql_mpi_core_to_log() simpler.
> 
> ----
> ---
>  drivers/staging/qlge/qlge_dbg.c | 25 +++++--------------------
>  1 file changed, 5 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> @@ -1,5 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +#define QLGE_DUMP_DBG(str, buf, len)			    \
> +	print_hex_dump(KERN_DEBUG, str, DUMP_PREFIX_OFFSET, \
> +			32, 4, buf, len, false)

There is no need to create a used-once macro.
Just code the one use in-place.

>  #include <linux/slab.h>
>  
> @@ -1324,27 +1327,9 @@ void ql_mpi_core_to_log(struct work_struct *work)
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
> -
> -	for (i = 0; i < count; i += 8) {
> -		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x "
> -			"%.08x %.08x %.08x\n", i,
> -			tmp[i + 0],
> -			tmp[i + 1],
> -			tmp[i + 2],
> -			tmp[i + 3],
> -			tmp[i + 4],
> -			tmp[i + 5],
> -			tmp[i + 6],
> -			tmp[i + 7]);
> -		msleep(5);
> -	}
> +	QLGE_DUMP_DBG("Core is dumping to log file!\n", qdev->mpi_coredump,
> +		      sizeof(*qdev->mpi_coredump));
>  }
>  
>  #ifdef QL_REG_DUMP

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
