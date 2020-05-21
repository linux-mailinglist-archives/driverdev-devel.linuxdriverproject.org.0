Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 328F11DC903
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 10:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9034288251;
	Thu, 21 May 2020 08:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFI-nls1KtaF; Thu, 21 May 2020 08:47:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D35FB88213;
	Thu, 21 May 2020 08:47:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE6151BF599
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 08:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A536B8710C
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 08:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LI0juzeYAuAj for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 08:47:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from re-prd-fep-044.btinternet.com (mailomta4-re.btinternet.com
 [213.120.69.97])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 398DB86FB7
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 08:47:46 +0000 (UTC)
Received: from re-prd-rgout-001.btmx-prd.synchronoss.net ([10.2.54.4])
 by re-prd-fep-044.btinternet.com with ESMTP id
 <20200521084744.KRVR4009.re-prd-fep-044.btinternet.com@re-prd-rgout-001.btmx-prd.synchronoss.net>;
 Thu, 21 May 2020 09:47:44 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrudduuddgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuueftkffvkffujffvgffngfevqffopdfqfgfvnecuuegrihhlohhuthemuceftddunecunecujfgurhephffvufffkffosedttdertdertddtnecuhfhrohhmpeflohhhnhcuqfhlughmrghnuceojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqeenucggtffrrghtthgvrhhnpeegfedthfefueeihffgkeefteehuddttdefudetveelveefvdefhfejieejhffggfenucfkphepfedurdehfedrudeguddrvddvgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehhvghnrhihrdhhohhmvgdpihhnvghtpeefuddrheefrddugedurddvvdegpdhmrghilhhfrhhomhepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 re-prd-rgout-001.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A147D11B190C7; Thu, 21 May 2020 09:47:44 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: Using comparison to true is error prone
Date: Thu, 21 May 2020 09:47:32 +0100
Message-Id: <20200521084732.12576-1-john.oldman@polehill.co.uk>
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

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 43494a2b6f05..462835684e8b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -456,7 +456,7 @@ static void _rtl92e_dm_bandwidth_autoswitch(struct net_device *dev)
 	if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20 ||
 	   !priv->rtllib->bandwidth_auto_switch.bautoswitch_enable)
 		return;
-	if (priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz == false) {
+	if (!priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz) {
 		if (priv->undecorated_smoothed_pwdb <=
 		    priv->rtllib->bandwidth_auto_switch.threshold_40Mhzto20Mhz)
 			priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz = true;
@@ -1297,7 +1297,7 @@ static void _rtl92e_dm_dig_init(struct net_device *dev)
 static void _rtl92e_dm_ctrl_initgain_byrssi(struct net_device *dev)
 {
 
-	if (dm_digtable.dig_enable_flag == false)
+	if (!dm_digtable.dig_enable_flag)
 		return;
 
 	if (dm_digtable.dig_algorithm == DIG_ALGO_BY_FALSE_ALARM)
@@ -1332,7 +1332,7 @@ static void _rtl92e_dm_ctrl_initgain_byrssi_driver(struct net_device *dev)
 	u8 i;
 	static u8	fw_dig;
 
-	if (dm_digtable.dig_enable_flag == false)
+	if (!dm_digtable.dig_enable_flag)
 		return;
 
 	if (dm_digtable.dig_algorithm_switch)
@@ -1366,7 +1366,7 @@ static void _rtl92e_dm_ctrl_initgain_byrssi_false_alarm(struct net_device *dev)
 	static u32 reset_cnt;
 	u8 i;
 
-	if (dm_digtable.dig_enable_flag == false)
+	if (!dm_digtable.dig_enable_flag)
 		return;
 
 	if (dm_digtable.dig_algorithm_switch) {
@@ -1501,7 +1501,7 @@ static void _rtl92e_dm_initial_gain(struct net_device *dev)
 		reset_cnt = 0;
 	}
 
-	if (rtllib_act_scanning(priv->rtllib, true) == true) {
+	if (rtllib_act_scanning(priv->rtllib, true)) {
 		force_write = 1;
 		return;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
