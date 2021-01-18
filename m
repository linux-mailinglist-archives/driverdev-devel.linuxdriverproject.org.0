Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 358642FA17D
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:28:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D73CC204A9;
	Mon, 18 Jan 2021 13:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiCxOwsRF6TN; Mon, 18 Jan 2021 13:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFA7020466;
	Mon, 18 Jan 2021 13:28:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE57A1BF983
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4AA086F58
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYlmX2OJIkq3 for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 619A386EA5
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECC4622B4E;
 Mon, 18 Jan 2021 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=ZekYSafbEnIUfwwCZbjMZPXuSqYEP7FpvgKVVMVijj0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r0ke8eQUKYIu49HyCDgqeB8sJ/0x2+EAZzlNWgPxmCzo8YuG0TCJwtcgCgCvSpz6l
 War1LC+YdteW+vEiSnMwA2Ya5mpJWBom8v7x6JdT6dw9IcBj16W7pKiW6dDoDbJQld
 C4m7nsvXzqdzU9YlY+Ac9CjRWF0d7pe7vyiaRoQWAXMY5RBqfrz3iJVKt1oWmQB2u8
 2w9mYKcoV6OqHkexd+d288Olb/TLbCZKaW+puH06t92xZqDFgkJie0Yt+ISI02LNIS
 de7dEIKlrx9MuTusfu9WxFSjAgFR2iXl1vt/Nc19iWa9iwBbY2m4TQq1CCsp99IQz1
 8vGgUwWEcbU+w==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vkq-IY; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 07/13] staging: hikey970: get rid of an static data
Date: Mon, 18 Jan 2021 14:28:08 +0100
Message-Id: <2798cdc89ec7641c30bfc53cc2ae2a898d108d61.1610975633.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610975633.git.mchehab+huawei@kernel.org>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move it to be inside the private data struct.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 1aed5b37fa23..8c64c0a86a3d 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -28,9 +28,10 @@ struct hi6421_spmi_reg_info {
 	struct hi6421_spmi_pmic *pmic;
 	u8			eco_mode_mask;
 	u32			eco_uA;
-};
 
-static DEFINE_MUTEX(enable_mutex);
+	/* Serialize regulator enable logic */
+	struct mutex enable_mutex;
+};
 
 static const unsigned int ldo3_voltages[] = {
 	1500000, 1550000, 1600000, 1650000,
@@ -118,7 +119,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
 	/* cannot enable more than one regulator at one time */
-	mutex_lock(&enable_mutex);
+	mutex_lock(&sreg->enable_mutex);
 	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
 		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
@@ -127,7 +128,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 			     rdev->desc->enable_mask,
 			     rdev->desc->enable_mask);
 
-	mutex_unlock(&enable_mutex);
+	mutex_unlock(&sreg->enable_mutex);
 
 	return 0;
 }
@@ -312,6 +313,7 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	sreg->pmic = pmic;
+	mutex_init(&sreg->enable_mutex);
 
 	for (i = 0; i < ARRAY_SIZE(regulator_info); i++) {
 		/* assign per-regulator data */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
