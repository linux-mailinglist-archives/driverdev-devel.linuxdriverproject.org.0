Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE8118A889
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 23:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9098E87E19;
	Wed, 18 Mar 2020 22:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFs+9pnD9g2J; Wed, 18 Mar 2020 22:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F17D787DC5;
	Wed, 18 Mar 2020 22:45:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8490F1BF335
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 22:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E448203AF
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 22:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8FE6zZw1neW for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 22:45:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0065.hostedemail.com
 [216.40.44.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 159302039B
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 22:45:33 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 012FE8122D5B
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 17:59:04 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7007F180295A5;
 Wed, 18 Mar 2020 17:59:01 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:960:969:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1461:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3871:3873:4321:5007:8957:9592:10004:10400:10848:11026:11232:11473:11658:11914:12043:12295:12296:12297:12438:12555:12683:12740:12760:12895:13161:13229:13439:14659:14721:21063:21080:21627:21990:30029:30054:30056:30070:30083:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: hate21_3184fa5e40703
X-Filterd-Recvd-Size: 4340
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Wed, 18 Mar 2020 17:59:00 +0000 (UTC)
Message-ID: <a421ed974d7c675a7d41405d483c7645004d4125.camel@perches.com>
Subject: Re: [PATCH 2/2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
From: Joe Perches <joe@perches.com>
To: Camylla Cantanheide <c.cantanheide@gmail.com>, dan.carpenter@oracle.com
Date: Wed, 18 Mar 2020 10:57:11 -0700
In-Reply-To: <CAG3pEr+9tuSYw==qgp3J8r--SdAd8DBMNQqSHCZQc-mkVVuE6w@mail.gmail.com>
References: <20200317085130.21213-1-c.cantanheide@gmail.com>
 <20200317085130.21213-2-c.cantanheide@gmail.com>
 <20200317134329.GC4650@kadam>
 <ee182711405229e85b5b5a44c683d5a2609b5ba3.camel@perches.com>
 <CAG3pEr+9tuSYw==qgp3J8r--SdAd8DBMNQqSHCZQc-mkVVuE6w@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkcamp@lists.libreplanetbr.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-03-18 at 14:31 -0300, Camylla Cantanheide wrote:
> Dear Dan Carpenter and Joe Perches,
> 
> Thank you very much for the suggestions, I found the evaluation of both
> very significant. Now, I have another perspective on variables.
> 
> I solved the problem for the *setKey *function, however, when executing the
> checkpatch, more *Checks* of the same type appeared.
> 
> Should I send the second version of the patch, only to the *setKey*
> function or do I resolve all *Checks* for the entire file?

A single patch refactoring the function would be fine.

Also perhaps a name change as a separate patch later as
setKey is a relatively generic name and not obviously
specific to the rtl8192u..

Perhaps a first refactoring patch like the below
then a renaming one.

(untested)
---
 drivers/staging/rtl8192u/r8192U_core.c | 50 ++++++++++++++++------------------
 1 file changed, 23 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 89dd1fb..0c0cb08 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4880,7 +4880,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
 {
-	u32 TargetCommand = 0;
+	u32 TargetCommand = CAM_CONTENT_COUNT * EntryNo |  BIT(31) | BIT(16);
 	u32 TargetContent = 0;
 	u16 usConfig = 0;
 	u8 i;
@@ -4897,32 +4897,28 @@ void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	else
 		usConfig |= BIT(15) | (KeyType << 2) | KeyIndex;
 
-	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
-		TargetCommand  = i + CAM_CONTENT_COUNT * EntryNo;
-		TargetCommand |= BIT(31) | BIT(16);
-
-		if (i == 0) { /* MAC|Config */
-			TargetContent = (u32)(*(MacAddr + 0)) << 16 |
-					(u32)(*(MacAddr + 1)) << 24 |
-					(u32)usConfig;
-
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
-		} else if (i == 1) { /* MAC */
-			TargetContent = (u32)(*(MacAddr + 2))	 |
-					(u32)(*(MacAddr + 3)) <<  8 |
-					(u32)(*(MacAddr + 4)) << 16 |
-					(u32)(*(MacAddr + 5)) << 24;
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
-		} else {
-			/* Key Material */
-			if (KeyContent) {
-				write_nic_dword(dev, WCAMI,
-						*(KeyContent + i - 2));
-				write_nic_dword(dev, RWCAM, TargetCommand);
-			}
-		}
+	TargetContent = MacAddr[0] << 16 |
+			MacAddr[0] << 24 |
+			(u32)usConfig;
+
+	write_nic_dword(dev, WCAMI, TargetContent);
+	write_nic_dword(dev, RWCAM, TargetCommand++);
+
+	 /* MAC */
+	TargetContent = MacAddr[2]	 |
+			MacAddr[3] <<  8 |
+			MacAddr[4] << 16 |
+			MacAddr[5] << 24;
+	write_nic_dword(dev, WCAMI, TargetContent);
+	write_nic_dword(dev, RWCAM, TargetCommand++);
+
+	/* Key Material */
+	if (!KeyContent)
+		return;
+
+	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
+		write_nic_dword(dev, WCAMI, *KeyContent++);
+		write_nic_dword(dev, RWCAM, TargetCommand++);
 	}
 }
 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
