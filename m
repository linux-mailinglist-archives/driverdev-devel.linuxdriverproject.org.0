Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9934F33E98D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 07:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 742FA431FE;
	Wed, 17 Mar 2021 06:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caGdEFgHVmjM; Wed, 17 Mar 2021 06:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3601431EA;
	Wed, 17 Mar 2021 06:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BAC91BF403
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 06:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A027431EA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 06:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRCtTn7A3AEu for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 06:16:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtprelay.hostedemail.com (smtprelay0190.hostedemail.com
 [216.40.44.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDAB44304F
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 06:16:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id A27E918016692
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 03:47:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id A50FF100E7B40;
 Wed, 17 Mar 2021 03:47:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2376:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3867:3870:3872:4250:4321:5007:7652:7904:9592:10004:10400:10848:11232:11657:11658:11914:12043:12048:12296:12297:12555:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:21939:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: brick97_120943c2773b
X-Filterd-Recvd-Size: 2918
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Wed, 17 Mar 2021 03:47:55 +0000 (UTC)
Message-ID: <d195e3d5425c7b1e6d9c85ee3a6d9cafbf39fa6a.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs/core: add spaces between operators
From: Joe Perches <joe@perches.com>
To: Qiang Ma <maqianga@uniontech.com>, gregkh@linuxfoundation.org, 
 ross.schm.dev@gmail.com, mhocko@suse.com, john.oldman@polehill.co.uk, 
 longman@redhat.com, matthew.v.deangelis@gmail.com
Date: Tue, 16 Mar 2021 20:47:53 -0700
In-Reply-To: <20210316120500.351-1-maqianga@uniontech.com>
References: <20210316120500.351-1-maqianga@uniontech.com>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2021-03-16 at 20:05 +0800, Qiang Ma wrote:
> Add spaces between operators for a better readability
> in function 'rtw_seccalctkipmic'.

Perhaps better would be to refactor it a bit to
follow the comments.  Something like:
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index a311595deafb..a30e1fa717af 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -405,30 +405,26 @@ void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst)
 
 void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_code, u8 pri)
 {
-
 	struct mic_data	micdata;
 	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
+	int da_offset;
+	int sa_offset;
 
 	rtw_secmicsetkey(&micdata, key);
 	priority[0] = pri;
 
 	/* Michael MIC pseudo header: DA, SA, 3 x 0, Priority */
-	if (header[1]&1) {   /* ToDS == 1 */
-		rtw_secmicappend(&micdata, &header[16], 6);  /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
-			rtw_secmicappend(&micdata, &header[24], 6);
-		else
-			rtw_secmicappend(&micdata, &header[10], 6);
-	} else {	/* ToDS == 0 */
-		rtw_secmicappend(&micdata, &header[4], 6);   /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
-			rtw_secmicappend(&micdata, &header[16], 6);
-		else
-			rtw_secmicappend(&micdata, &header[10], 6);
+	if (header[1] & 1) {   /* ToDS == 1 */
+		da_offset = 16;
+		sa_offset = (header[1] & 2) ? 24 : 10;
+	} else {		/* ToDS == 0 */
+		da_offset = 4;
+		sa_offset = (header[1] & 2) ? 16 : 10;
 	}
+	rtw_secmicappend(&micdata, &header[da_offset], 6);	/* DA */
+	rtw_secmicappend(&micdata, &header[sa_offset], 6);	/* SA */
 	rtw_secmicappend(&micdata, &priority[0], 4);
 
-
 	rtw_secmicappend(&micdata, data, data_len);
 
 	rtw_secgetmic(&micdata, mic_code);


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
