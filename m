Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FB22FB527
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:14:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 75BCA20408;
	Tue, 19 Jan 2021 10:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u+dsybLtqlF5; Tue, 19 Jan 2021 10:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CCBA2036D;
	Tue, 19 Jan 2021 10:14:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2349B1BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F7FA86C82
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDF5fzWX+YEc for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D2BF86B2C
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:14:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05BB02312B;
 Tue, 19 Jan 2021 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051267;
 bh=9sJuiRaH9YoTTEL9TAIlpGXfKAAfiZ//TDkV9Z3S4Ws=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gqQ9h+ps6w031wGOL9aEJw07zFDY3gt7szzUBM082o7L0uZrP6L3AcHj+6p8qanRS
 +ZwUNFfVHs1qcVD0akZMSqAygeMHU21iNWuKyfg3y1OiDpoCc/UmpUWn4bewW8KMZt
 /jASoNG1uReVnwIre+k4ob36mwaQ2uqoF9rqd3ImPK+QW1pB0/QwcLX45+p0u7scKs
 4PQKigv+2J3sKYiQ4P1B4rLvVBYJWXa/eOtcqG+iY/onQmhYHCNhVhM/1QTkxUPIOf
 5EA2XUZkjJ5fSahX7d/z6GSDhF8MLv/05VadxP0ZhSqTmVU4BJKpiMP2vh3EjmOGSd
 BMaHXxSA9W55w==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1o1o-000tOq-Ox; Tue, 19 Jan 2021 11:14:24 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v3 07/18] staging: hikey9xx: hi6421v600-regulator: get rid of
 an static data
Date: Tue, 19 Jan 2021 11:14:12 +0100
Message-Id: <e4c7ed9321df9d5772b9ab381f98ded879dbcd3c.1611048785.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611048785.git.mchehab+huawei@kernel.org>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
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
index 5469089a3daf..e96aab17a499 100644
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
