Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AE576B16
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 16:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83EBE26084;
	Fri, 26 Jul 2019 14:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3zrABZZmkNj5; Fri, 26 Jul 2019 14:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D63C25729;
	Fri, 26 Jul 2019 14:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 343801BF5AD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EAC089D07
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LQVJhbzdsIz for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 14:08:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2934C89D01
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 14:08:09 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 185953502BBE3CD197FC;
 Fri, 26 Jul 2019 22:08:04 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 22:07:58 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <payal.s.kshirsagar.98@gmail.com>,
 <paul.walmsley@sifive.com>
Subject: [PATCH -next] staging: rtl8723bs: remove set but not used variable
 'pszBBRegMpFile'
Date: Fri, 26 Jul 2019 22:07:34 +0800
Message-ID: <20190726140734.39564-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c: In function phy_BB8723b_Config_ParaFile:
drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c:436:77:
 warning: variable pszBBRegMpFile set but not used [-Wunused-but-set-variable]

It is never used so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 25c75b9..f06539d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -431,14 +431,12 @@ static int phy_BB8723b_Config_ParaFile(struct adapter *Adapter)
 	u8 sz8723BBRegFile[] = RTL8723B_PHY_REG;
 	u8 sz8723AGCTableFile[] = RTL8723B_AGC_TAB;
 	u8 sz8723BBBRegPgFile[] = RTL8723B_PHY_REG_PG;
-	u8 sz8723BBRegMpFile[] = RTL8723B_PHY_REG_MP;
 	u8 sz8723BRFTxPwrLmtFile[] = RTL8723B_TXPWR_LMT;
-	u8 *pszBBRegFile = NULL, *pszAGCTableFile = NULL, *pszBBRegPgFile = NULL, *pszBBRegMpFile = NULL, *pszRFTxPwrLmtFile = NULL;
+	u8 *pszBBRegFile = NULL, *pszAGCTableFile = NULL, *pszBBRegPgFile = NULL, *pszRFTxPwrLmtFile = NULL;
 
 	pszBBRegFile = sz8723BBRegFile;
 	pszAGCTableFile = sz8723AGCTableFile;
 	pszBBRegPgFile = sz8723BBBRegPgFile;
-	pszBBRegMpFile = sz8723BBRegMpFile;
 	pszRFTxPwrLmtFile = sz8723BRFTxPwrLmtFile;
 
 	/*  Read Tx Power Limit File */
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
