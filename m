Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 453ABCF226
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 07:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEA9085FD0;
	Tue,  8 Oct 2019 05:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jbyAEGs5CER; Tue,  8 Oct 2019 05:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E35CA86109;
	Tue,  8 Oct 2019 05:32:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2F9D1BF2A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD3972052F
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtkGOpHdAofn for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 05:32:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 8781C2050D
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 05:32:04 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CB3989E6EA2671AB81E4;
 Tue,  8 Oct 2019 13:31:59 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 13:31:51 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 2/6] staging: sm750fb: Remove set but not used variable
 'uiActualPixelClk'
Date: Tue, 8 Oct 2019 13:38:58 +0800
Message-ID: <1570513142-60177-3-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
References: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/sm750fb/ddk750_mode.c: In function ddk750_setModeTiming:
drivers/staging/sm750fb/ddk750_mode.c:212:15: warning: variable uiActualPixelClk set but not used [-Wunused-but-set-variable]

It is not used since commit 81dee67e215b ("staging:
sm750fb: add sm750 to staging")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 9722692..e0230f4 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -209,12 +209,11 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
 {
 	struct pll_value pll;
-	unsigned int uiActualPixelClk;

 	pll.input_freq = DEFAULT_INPUT_CLOCK;
 	pll.clock_type = clock;

-	uiActualPixelClk = sm750_calc_pll_value(parm->pixel_clock, &pll);
+	sm750_calc_pll_value(parm->pixel_clock, &pll);
 	if (sm750_get_chip_type() == SM750LE) {
 		/* set graphic mode via IO method */
 		outb_p(0x88, 0x3d4);
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
