Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB181EB76A
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 10:32:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DE4686265;
	Tue,  2 Jun 2020 08:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kES0DNwKA9HM; Tue,  2 Jun 2020 08:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9898586250;
	Tue,  2 Jun 2020 08:32:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 720331BF300
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 08:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 677BD86250
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 08:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdcZYtUWf3Y3 for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 08:32:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from re-prd-fep-049.btinternet.com (mailomta32-re.btinternet.com
 [213.120.69.125])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B64F78623E
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 08:32:01 +0000 (UTC)
Received: from re-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.54.8])
 by re-prd-fep-049.btinternet.com with ESMTP id
 <20200602083159.THRB11381.re-prd-fep-049.btinternet.com@re-prd-rgout-005.btmx-prd.synchronoss.net>;
 Tue, 2 Jun 2020 09:31:59 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [81.152.95.229]
X-OWM-Source-IP: 81.152.95.229 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrudefjedgtdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuueftkffvkffujffvgffngfevqffopdfqfgfvnecuuegrihhlohhuthemuceftddunecunecujfgurhephffvufffkffosedttdertdertddtnecuhfhrohhmpeflohhhnhcuqfhlughmrghnuceojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqeenucggtffrrghtthgvrhhnpeegfedthfefueeihffgkeefteehuddttdefudetveelveefvdefhfejieejhffggfenucfkphepkedurdduhedvrdelhedrvddvleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehhvghnrhihrdhhohhmvgdpihhnvghtpeekuddrudehvddrleehrddvvdelpdhmrghilhhfrhhomhepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (81.152.95.229) by
 re-prd-rgout-005.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A195F13ABC0DB; Tue, 2 Jun 2020 09:31:59 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: Using comparison to false is error prone
Date: Tue,  2 Jun 2020 09:31:27 +0100
Message-Id: <20200602083127.25271-1-john.oldman@polehill.co.uk>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, John Oldman <john.oldman@polehill.co.uk>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

clear below issues reported by checkpatch.pl:

CHECK: Using comparison to false is error prone

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index d83d72594312..8abc921ecb3e 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -371,7 +371,7 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
 	if ((ieee->iw_mode == IW_MODE_ADHOC) ||
 	    (ieee->iw_mode == IW_MODE_MASTER)) {
 		pHTInfoEle->ControlChl	= ieee->current_network.channel;
-		pHTInfoEle->ExtChlOffset = ((pHT->bRegBW40MHz == false) ?
+		pHTInfoEle->ExtChlOffset = ((!pHT->bRegBW40MHz) ?
 					    HT_EXTCHNL_OFFSET_NO_EXT :
 					    (ieee->current_network.channel <= 6)
 					    ? HT_EXTCHNL_OFFSET_UPPER :
@@ -526,7 +526,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 	static u8 EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
 	static u8 EWC11NHTInfo[] = {0x00, 0x90, 0x4c, 0x34};
 
-	if (pHTInfo->bCurrentHTSupport == false) {
+	if (!pHTInfo->bCurrentHTSupport) {
 		netdev_warn(ieee->dev, "%s(): HT_DISABLE\n", __func__);
 		return;
 	}
@@ -873,7 +873,7 @@ void HTSetConnectBwMode(struct rtllib_device *ieee,
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 
-	if (pHTInfo->bRegBW40MHz == false)
+	if (!pHTInfo->bRegBW40MHz)
 		return;
 
 	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
