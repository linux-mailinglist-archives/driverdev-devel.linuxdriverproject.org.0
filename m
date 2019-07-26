Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB76576632
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 14:48:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3C2C891D9;
	Fri, 26 Jul 2019 12:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62MM8zevIn-h; Fri, 26 Jul 2019 12:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 539CE891C6;
	Fri, 26 Jul 2019 12:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A61481BF3EA
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 12:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EDEC891CC
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 12:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvP5gKDD+z8Q for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 12:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E4EA3891C6
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 12:48:06 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hqzdj-0001u2-FW; Fri, 26 Jul 2019 12:48:03 +0000
From: Colin King <colin.king@canonical.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: remove redundant assignment to rtstatus
Date: Fri, 26 Jul 2019 13:48:03 +0100
Message-Id: <20190726124803.11349-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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

Variable rtstatus is initialized to a value that is never read and it
is re-assigned later. The initialization is redundant and can be
removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 739e62dc60e3..47b1bf5a6143 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -222,7 +222,7 @@ bool rtl88eu_phy_rf_config(struct adapter *adapt)
 {
 	struct hal_data_8188e *hal_data = adapt->HalData;
 	u32 u4val = 0;
-	bool rtstatus = true;
+	bool rtstatus;
 	struct bb_reg_def *pphyreg;
 
 	pphyreg = &hal_data->PHYRegDef[RF90_PATH_A];
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
