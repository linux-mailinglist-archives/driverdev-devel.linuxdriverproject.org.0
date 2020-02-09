Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09385156BD4
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 18:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E6038562A;
	Sun,  9 Feb 2020 17:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVjXls4MI5Zr; Sun,  9 Feb 2020 17:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 076C684E3A;
	Sun,  9 Feb 2020 17:33:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CE2D1BF3A3
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41139878EA
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svcvh5rhlsBV for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 17:33:01 +0000 (UTC)
X-Greylist: delayed 00:08:18 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0038.hostedemail.com
 [216.40.44.38])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B6EE0878B8
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 17:33:01 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 3F8AA180115D1
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 17:24:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 941B9180A68BF;
 Sun,  9 Feb 2020 17:24:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:69:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3870:3872:3873:4321:5007:7514:7875:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12295:12297:12555:12663:12740:12760:12895:13071:13161:13229:13439:14096:14097:14180:14181:14659:14721:21080:21451:21611:21627:21740:30012:30054:30062:30070:30083:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: hook20_bb392dfc3436
X-Filterd-Recvd-Size: 3915
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sun,  9 Feb 2020 17:24:40 +0000 (UTC)
Message-ID: <80495d71d156ed8bb44da5b46eac458b497af691.camel@perches.com>
Subject: Re: [PATCH v2] staging: qlge: remove spaces at the start of a line
From: Joe Perches <joe@perches.com>
To: Mohana Datta Yelugoti <ymdatta.work@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 09 Feb 2020 09:23:26 -0800
In-Reply-To: <20200209171431.19907-1-ymdatta.work@gmail.com>
References: <ymdatta.work@gmail.com>
 <20200209171431.19907-1-ymdatta.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-02-09 at 22:44 +0530, Mohana Datta Yelugoti wrote:
> This patch fixes "WARNING: please, no spaces at the start of a
> line" by checkpatch.pl by replacing spaces with the tab.

> Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
> ---

Hello Mohana.

What changed in the v2?

When you send a new revision of a patch, it's good form to describe
the differences between the patches below the --- line

So here you should write something like

V2: Improved patch description

Also, the form of the code could be rewritten using //
comments while aligning all the options, even those
commented out currently with /* ... */

Something like:

 drivers/staging/qlge/qlge_main.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index ef8037..f25cd2 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -52,16 +52,22 @@ MODULE_LICENSE("GPL");
 MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
-    NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
-/* NETIF_MSG_TIMER |	*/
-    NETIF_MSG_IFDOWN |
-    NETIF_MSG_IFUP |
-    NETIF_MSG_RX_ERR |
-    NETIF_MSG_TX_ERR |
-/*  NETIF_MSG_TX_QUEUED | */
-/*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
-/* NETIF_MSG_PKTDATA | */
-    NETIF_MSG_HW | NETIF_MSG_WOL | 0;
+	NETIF_MSG_DRV |
+	NETIF_MSG_PROBE |
+	NETIF_MSG_LINK |
+//	NETIF_MSG_TIMER |
+	NETIF_MSG_IFDOWN |
+	NETIF_MSG_IFUP |
+	NETIF_MSG_RX_ERR |
+	NETIF_MSG_TX_ERR |
+//	NETIF_MSG_TX_QUEUED |
+//	NETIF_MSG_INTR |
+//	NETIF_MSG_TX_DONE |
+//	NETIF_MSG_RX_STATUS |
+//	NETIF_MSG_PKTDATA |
+	NETIF_MSG_HW |
+	NETIF_MSG_WOL |
+	0;
 
 static int debug = -1;	/* defaults above */
 module_param(debug, int, 0664);

>  drivers/staging/qlge/qlge_main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index ef8037d0b52e..86b9b7314a40 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -52,16 +52,16 @@ MODULE_LICENSE("GPL");
>  MODULE_VERSION(DRV_VERSION);
>  
>  static const u32 default_msg =
> -    NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
> +	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
>  /* NETIF_MSG_TIMER |	*/
> -    NETIF_MSG_IFDOWN |
> -    NETIF_MSG_IFUP |
> -    NETIF_MSG_RX_ERR |
> -    NETIF_MSG_TX_ERR |
> +	NETIF_MSG_IFDOWN |
> +	NETIF_MSG_IFUP |
> +	NETIF_MSG_RX_ERR |
> +	NETIF_MSG_TX_ERR |
>  /*  NETIF_MSG_TX_QUEUED | */
>  /*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
>  /* NETIF_MSG_PKTDATA | */
> -    NETIF_MSG_HW | NETIF_MSG_WOL | 0;
> +	NETIF_MSG_HW | NETIF_MSG_WOL | 0;


>  
>  static int debug = -1;	/* defaults above */
>  module_param(debug, int, 0664);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
