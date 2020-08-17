Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C667245D71
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D79708671C;
	Mon, 17 Aug 2020 07:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LBsgE1a71qUA; Mon, 17 Aug 2020 07:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7F61867B9;
	Mon, 17 Aug 2020 07:11:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D81D81BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5AD585755
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nGgqbMcy0JUJ for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F73086250
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1BAF22CBE;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=vSP7pIbG/+aRsdn4TNYZedyhxbsUK7SK7J98dK9mzvw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JOMeRdLTT9to7s6MeD9eu8vE3p2eo+bSe66uopwhphbMZU1vL4DJ3i65LCbq2H4bu
 uaBTNfqPGHYmIOM/fJl+Kp/Mv+fgbjsHOIqi6oCgxNmO0Cg6MleycctQHLM1cboJY8
 8A5vsWbxNOGFTgIzZgpeAyMerMyT00fIa8XmxFn8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00BdkO-V0; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 25/44] staging: regulator: hi6421v600-regulator: port it to
 upstream
Date: Mon, 17 Aug 2020 09:10:44 +0200
Message-Id: <9e34400d2cc15ef501a8478f69a95c9abc5c4d8d.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver was originally written for Kernel 4.9. It needs to
be ported to upstream:

	- Got rid of timeval;
	- Removed a bogus dependency;
	- Did cleanups at the header file.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hi6421v600-regulator.c   | 34 +++----------------
 1 file changed, 5 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 7bc0ae27b110..904cb64b1dcd 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -49,7 +49,6 @@ struct hisi_regulator_register_info {
 struct hisi_regulator {
 	const char *name;
 	struct hisi_regulator_register_info register_info;
-	struct timeval last_off_time;
 	u32 off_on_delay;
 	u32 eco_uA;
 	struct regulator_desc rdesc;
@@ -57,8 +56,6 @@ struct hisi_regulator {
 };
 
 static DEFINE_MUTEX(enable_mutex);
-struct timeval last_enabled;
-
 
 static inline struct hisi_pmic *rdev_to_pmic(struct regulator_dev *dev)
 {
@@ -72,27 +69,6 @@ static inline struct hisi_pmic *rdev_to_pmic(struct regulator_dev *dev)
 /* helper function to ensure when it returns it is at least 'delay_us'
  * microseconds after 'since'.
  */
-static void ensured_time_after(struct timeval since, u32 delay_us)
-{
-	struct timeval now;
-	u64 elapsed_ns64, delay_ns64;
-	u32 actual_us32;
-
-	delay_ns64 = delay_us * NSEC_PER_USEC;
-	do_gettimeofday(&now);
-	elapsed_ns64 = timeval_to_ns(&now) - timeval_to_ns(&since);
-	if (delay_ns64 > elapsed_ns64) {
-		actual_us32 = ((u32)(delay_ns64 - elapsed_ns64) /
-							NSEC_PER_USEC);
-		if (actual_us32 >= 1000) {
-			mdelay(actual_us32 / 1000); /*lint !e647 */
-			udelay(actual_us32 % 1000);
-		} else if (actual_us32 > 0) {
-			udelay(actual_us32);
-		}
-	}
-	return;
-}
 
 static int hisi_regulator_is_enabled(struct regulator_dev *dev)
 {
@@ -113,13 +89,16 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 	struct hisi_pmic *pmic = rdev_to_pmic(dev);
 
 	/* keep a distance of off_on_delay from last time disabled */
-	ensured_time_after(sreg->last_off_time, sreg->off_on_delay);
+	usleep_range(sreg->off_on_delay, sreg->off_on_delay + 1000);
 
 	pr_debug("<[%s]: off_on_delay=%dus>\n", __func__, sreg->off_on_delay);
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&enable_mutex);
-	ensured_time_after(last_enabled, HISI_REGS_ENA_PROTECT_TIME);
+	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
+		     HISI_REGS_ENA_PROTECT_TIME + 1000);
+
+
 
 	/* set enable register */
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
@@ -128,7 +107,6 @@ static int hisi_regulator_enable(struct regulator_dev *dev)
 	pr_debug("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n", __func__, sreg->register_info.ctrl_reg,\
 			sreg->register_info.enable_mask);
 
-	do_gettimeofday(&last_enabled);
 	mutex_unlock(&enable_mutex);
 
 	return 0;
@@ -143,8 +121,6 @@ static int hisi_regulator_disable(struct regulator_dev *dev)
 	hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
 				sreg->register_info.enable_mask, 0);
 
-	do_gettimeofday(&sreg->last_off_time);
-
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
