Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1C1168B4D
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Feb 2020 01:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D127522201;
	Sat, 22 Feb 2020 00:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJOqJbYk40Lv; Sat, 22 Feb 2020 00:54:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 46BF4204AD;
	Sat, 22 Feb 2020 00:54:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4711A1BF9BF
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 00:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4310A88163
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 00:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOp5p7DvMPtr for <devel@linuxdriverproject.org>;
 Sat, 22 Feb 2020 00:54:05 +0000 (UTC)
X-Greylist: delayed 00:17:54 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3AB98815F
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 00:54:04 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 107BE18017074
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 00:36:12 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7A25A1801870D;
 Sat, 22 Feb 2020 00:36:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3874:4321:4605:5007:6119:7903:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12555:12740:12760:12895:13439:14181:14659:14721:21080:21611:21627:21740:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: bun08_6fc9d6b00412a
X-Filterd-Recvd-Size: 3435
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sat, 22 Feb 2020 00:36:08 +0000 (UTC)
Message-ID: <4a2a109b5b7c5ce5e62bba4d39270abb855b2052.camel@perches.com>
Subject: Re: [PATCH] staging: qlge: unify multi-line string
From: Joe Perches <joe@perches.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>, Manish Chopra
 <manishc@marvell.com>,  GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Fri, 21 Feb 2020 16:34:44 -0800
In-Reply-To: <20200221185012.GA16841@kaaira-HP-Pavilion-Notebook>
References: <20200221185012.GA16841@kaaira-HP-Pavilion-Notebook>
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

On Sat, 2020-02-22 at 00:20 +0530, Kaaira Gupta wrote:
> Fix checkpatch.pl warning of 'quoted string split across lines' in
> qlge_dbg.c by merging the strings in one line. Fixing this warning is
> necessary to ease grep-ing the source for printk.
[]
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> @@ -1333,16 +1333,16 @@ void ql_mpi_core_to_log(struct work_struct *work)
>  		     "Core is dumping to log file!\n");
>  
>  	for (i = 0; i < count; i += 8) {
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
> +		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x %.08x %.08x %.08x\n",
> +		       i,
> +		       tmp[i + 0],
> +		       tmp[i + 1],
> +		       tmp[i + 2],
> +		       tmp[i + 3],
> +		       tmp[i + 4],
> +		       tmp[i + 5],
> +		       tmp[i + 6],
> +		       tmp[i + 7]);

This should probably instead use

	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 4,
		       qdev->mpi_coredump, sizeof(*qdev->mpi_coredump), false);

So that the debug and the dump are emitted at the
same KERN_<LEVEL> and the code is simpler.

>  		msleep(5);

And the msleep seems unnecessary.

>  	}
>  }


Perhaps:
---
 drivers/staging/qlge/qlge_dbg.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 8cf3961..a4cd91 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1324,27 +1324,12 @@ void ql_mpi_core_to_log(struct work_struct *work)
 {
 	struct ql_adapter *qdev =
 		container_of(work, struct ql_adapter, mpi_core_to_log.work);
-	u32 *tmp, count;
-	int i;
 
-	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
-	tmp = (u32 *)qdev->mpi_coredump;
 	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
 		     "Core is dumping to log file!\n");
 
-	for (i = 0; i < count; i += 8) {
-		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x "
-			"%.08x %.08x %.08x\n", i,
-			tmp[i + 0],
-			tmp[i + 1],
-			tmp[i + 2],
-			tmp[i + 3],
-			tmp[i + 4],
-			tmp[i + 5],
-			tmp[i + 6],
-			tmp[i + 7]);
-		msleep(5);
-	}
+	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 4,
+		       qdev->mpi_coredump, sizeof(*qdev->mpi_coredump), false);
 }
 
 #ifdef QL_REG_DUMP

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
