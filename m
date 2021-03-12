Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC2C338308
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 02:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6D84ED3A;
	Fri, 12 Mar 2021 01:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2qE2vTGtMhD; Fri, 12 Mar 2021 01:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71B3F47E1F;
	Fri, 12 Mar 2021 01:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 483731BF358
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 01:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 378CB844C0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 01:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uanxGcLFbvAi for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 01:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CF45844BF
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 01:11:36 +0000 (UTC)
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id EB479C79CA;
 Fri, 12 Mar 2021 09:11:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P1823T139669744367360S1615511484459024_; 
 Fri, 12 Mar 2021 09:11:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b0014230ca93f0285aaf060214237e50>
X-RL-SENDER: penghaob@uniontech.com
X-SENDER: penghaob@uniontech.com
X-LOGIN-NAME: penghaob@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Hao Peng <penghaob@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 izabela.bakollari@gmail.com, penghaob@uniontech.com
Subject: [PATCH] staging: rtl8723bs: remove extra lines
Date: Fri, 12 Mar 2021 09:07:52 +0800
Message-Id: <20210312010752.27448-1-penghaob@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove extra lines in many functions in hal_intf.c.

Signed-off-by: Hao Peng <penghaob@uniontech.com>
---
 drivers/staging/rtl8723bs/hal/hal_intf.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 9fb377633852..e74e9c0608ee 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -111,7 +111,6 @@ uint rtw_hal_init(struct adapter *padapter)
 	RT_TRACE(_module_hal_init_c_, _drv_err_, ("-rtl871x_hal_init:status = 0x%x\n", status));
 
 	return status;
-
 }
 
 uint rtw_hal_deinit(struct adapter *padapter)
@@ -180,7 +179,6 @@ void rtw_hal_enable_interrupt(struct adapter *padapter)
 		padapter->HalFunc.enable_interrupt(padapter);
 	else
 		DBG_871X("%s: HalFunc.enable_interrupt is NULL!\n", __func__);
-
 }
 
 void rtw_hal_disable_interrupt(struct adapter *padapter)
@@ -189,7 +187,6 @@ void rtw_hal_disable_interrupt(struct adapter *padapter)
 		padapter->HalFunc.disable_interrupt(padapter);
 	else
 		DBG_871X("%s: HalFunc.disable_interrupt is NULL!\n", __func__);
-
 }
 
 u8 rtw_hal_check_ips_status(struct adapter *padapter)
@@ -269,7 +266,6 @@ s32	rtw_hal_init_recv_priv(struct adapter *padapter)
 
 void rtw_hal_free_recv_priv(struct adapter *padapter)
 {
-
 	if (padapter->HalFunc.free_recv_priv)
 		padapter->HalFunc.free_recv_priv(padapter);
 }
@@ -358,7 +354,6 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
 {
 	if (padapter->HalFunc.hal_dm_watchdog)
 		padapter->HalFunc.hal_dm_watchdog(padapter);
-
 }
 
 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
@@ -422,7 +417,6 @@ s32 rtw_hal_macid_sleep(struct adapter *padapter, u32 macid)
 {
 	u8 support;
 
-
 	support = false;
 	rtw_hal_get_def_var(padapter, HAL_DEF_MACID_SLEEP, &support);
 	if (false == support)
@@ -437,7 +431,6 @@ s32 rtw_hal_macid_wakeup(struct adapter *padapter, u32 macid)
 {
 	u8 support;
 
-
 	support = false;
 	rtw_hal_get_def_var(padapter, HAL_DEF_MACID_SLEEP, &support);
 	if (false == support)
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
