Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0F9169854
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 16:14:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7FA684155;
	Sun, 23 Feb 2020 15:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R16LfHk9rn5U; Sun, 23 Feb 2020 15:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A9D583509;
	Sun, 23 Feb 2020 15:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C14E11BF48C
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 15:14:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BBD0B856CB
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 15:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i+I2A5zn8XwG for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 15:14:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A162C855E1
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 15:14:40 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1j5sxq-0002b0-Ek; Sun, 23 Feb 2020 15:14:38 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: remove temporary variable CrystalCap
Date: Sun, 23 Feb 2020 15:14:38 +0000
Message-Id: <20200223151438.415542-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Currently variable CrystalCap is being initialized with the value
0x20 that is never read so that is redundant and can be removed.
Clean up the code by removing the need for variable CrystalCap
since the calculation of the return value is relatively simple.

Addresses-Coverity: ("Unused Value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 95edd148ac24..34d83b238265 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -40,16 +40,11 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
 {
 	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
-	u8 CrystalCap = 0x20;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
-	CrystalCap = pHalData->CrystalCap;
-
-	CrystalCap = CrystalCap & 0x3f;
-
-	return CrystalCap;
+	return pHalData->CrystalCap & 0x3f;
 }
 
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
