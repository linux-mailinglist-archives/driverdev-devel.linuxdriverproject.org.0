Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A80B6D2149
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 09:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F1CB224763;
	Thu, 10 Oct 2019 07:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M+Bh2gBwUUu9; Thu, 10 Oct 2019 07:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B8874234BD;
	Thu, 10 Oct 2019 07:02:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE1DD1BF41D
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 07:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6C742048E
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 07:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KGAoRl9tAzV2 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 07:02:13 +0000 (UTC)
X-Greylist: delayed 02:20:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0004.hostedemail.com
 [216.40.44.4])
 by silver.osuosl.org (Postfix) with ESMTPS id 88B13204AC
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 07:02:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 490C6181CC40A
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 23:55:05 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 6B0D7837F24C;
 Wed,  9 Oct 2019 23:55:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:69:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2692:2828:2895:3138:3139:3140:3141:3142:3355:3622:3865:3867:3868:3871:3872:3874:4250:4321:5007:7901:7903:9592:10004:10400:10471:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12663:12679:12740:12760:12895:13255:13439:13972:14096:14097:14181:14659:14721:21080:21220:21451:21627:30012:30046:30054:30070:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: face04_2bc696171af0c
X-Filterd-Recvd-Size: 4735
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed,  9 Oct 2019 23:55:00 +0000 (UTC)
Message-ID: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple
 assignments warning by splitting the assignement into two each
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Date: Wed, 09 Oct 2019 16:54:59 -0700
In-Reply-To: <alpine.DEB.2.21.1910092248170.2570@hadrien>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910092248170.2570@hadrien>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2019-10-09 at 22:48 +0200, Julia Lawall wrote:
> On Wed, 9 Oct 2019, Jules Irenge wrote:
> > Fix multiple assignments warning " check
> >  issued by checkpatch.pl tool:
> > "CHECK: multiple assignments should be avoided".
[]
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> > @@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
> >  	u32 *direct_ptr, temp;
> >  	u32 *indirect_ptr;
> > 
> > -	xfi_direct_valid = xfi_indirect_valid = 0;
> > -	xaui_direct_valid = xaui_indirect_valid = 1;
> > +	xfi_indirect_valid = 0;
> > +	xfi_direct_valid = xfi_indirect_valid;
> > +	xaui_indirect_valid = 1;
> > +	xaui_direct_valid = xaui_indirect_valid
> 
> Despite checkpatch, I think that the original code was easier to
> understand.

It'd likely be easier to understand if all the
<foo>_valid uses were bool and the ql_get_both_serdes
<foo>_valid arguments were change to bool from
unsigned int as well.

btw: qlge likely is going to be deleted and not updated.

---
 drivers/staging/qlge/qlge_dbg.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 7e16066a3527..90ab37d4c49d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -112,7 +112,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
 
 static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
 			u32 *direct_ptr, u32 *indirect_ptr,
-			unsigned int direct_valid, unsigned int indirect_valid)
+			bool direct_valid, bool indirect_valid)
 {
 	unsigned int status;
 
@@ -136,14 +136,12 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 				struct ql_mpi_coredump *mpi_coredump)
 {
 	int status;
-	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
-	unsigned int xaui_indirect_valid, i;
+	bool xfi_direct_valid = false, xfi_indirect_valid = false;
+	bool xaui_direct_valid = true, xaui_indirect_valid = true;
+	unsigned int i;
 	u32 *direct_ptr, temp;
 	u32 *indirect_ptr;
 
-	xfi_direct_valid = xfi_indirect_valid = 0;
-	xaui_direct_valid = xaui_indirect_valid = 1;
-
 	/* The XAUI needs to be read out per port */
 	status = ql_read_other_func_serdes_reg(qdev,
 			XG_SERDES_XAUI_HSS_PCS_START, &temp);
@@ -152,7 +150,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_indirect_valid = 0;
+		xaui_indirect_valid = false;
 
 	status = ql_read_serdes_reg(qdev, XG_SERDES_XAUI_HSS_PCS_START, &temp);
 
@@ -161,7 +159,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_direct_valid = 0;
+		xaui_direct_valid = false;
 
 	/*
 	 * XFI register is shared so only need to read one
@@ -176,18 +174,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 		else
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 	}
 	if ((temp & XG_SERDES_ADDR_XFI2_PWR_UP) ==
 					XG_SERDES_ADDR_XFI2_PWR_UP) {
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 		else
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 	}
 
 	/* Get XAUI_AN register block. */

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
