Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FFACF3FD
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FD8887E8B;
	Tue,  8 Oct 2019 07:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DwKhqqdV-YT; Tue,  8 Oct 2019 07:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D969C87EBB;
	Tue,  8 Oct 2019 07:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBAA81BF287
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAE1E22268
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fe5EilWejWFQ for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:35:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id A59C120338
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:35:01 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8FC79715623F14A07D92;
 Tue,  8 Oct 2019 15:34:55 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 15:34:46 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 3/6] staging: sm750fb: Remove set but not used variable
 'actual_mx_clk'
Date: Tue, 8 Oct 2019 15:41:52 +0800
Message-ID: <1570520515-2186-4-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/sm750fb/ddk750_chip.c: In function set_chip_clock:
drivers/staging/sm750fb/ddk750_chip.c:59:15: warning: variable actual_mx_clk set but not used [-Wunused-but-set-variable]

It is not used since commit f0977109a577 ("staging:
sm750fb: lower case to fix camelcase checkpatch warning")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index e5988813..02860d3 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,6 @@ static unsigned int get_mxclk_freq(void)
 static void set_chip_clock(unsigned int frequency)
 {
 	struct pll_value pll;
-	unsigned int actual_mx_clk;

 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
 	if (sm750_get_chip_type() == SM750LE)
@@ -76,7 +75,7 @@ static void set_chip_clock(unsigned int frequency)
 		 * Return value of sm750_calc_pll_value gives the actual
 		 * possible clock.
 		 */
-		actual_mx_clk = sm750_calc_pll_value(frequency, &pll);
+		sm750_calc_pll_value(frequency, &pll);

 		/* Master Clock Control: MXCLK_PLL */
 		poke32(MXCLK_PLL_CTRL, sm750_format_pll_reg(&pll));
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
