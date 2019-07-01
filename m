Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0245B7D8
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8CBE87A12;
	Mon,  1 Jul 2019 09:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WODOkKvXknSA; Mon,  1 Jul 2019 09:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DD2E879A7;
	Mon,  1 Jul 2019 09:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB8DF1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9FDC98562D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23HN8VtpRzpi for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB9DC854AF
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:38 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 9so6268776ple.5
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vc1mWplAhZFTo7ZLeCfGrMz/hOy5X3Z7jekez8TNwcA=;
 b=EG3yNfSdRvvpY+Z12V1AUjHNmfO2ZCP3Aa84pwgNfRVqjY/kgX0HEd+lr5WOsl2I1Z
 UsX9sxxqHepG7c1JOBNyhSzWAcOC4x3yx0BOyDj7H+IiJ3KWiytf60k/fSCxhYiAtM2n
 +3hLxkX5gxm/fEgDTxjOxbnGvMl2u3ataxYcSQoGv88InSwRd+S+YimjlUqojXg1rMmz
 S8AuabxwV7a7vG7NqJS3DfdCJLP7BcEfyrbcHr25BYv9j8Kf0QGoT6KCjoKZvkKfxhLT
 VW6ok8DgQ6tQ8JMmISImfmNn/6zTkmS/HH14ggK65V7G8X1TYITinSpsdjtoQI6umFRp
 VT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vc1mWplAhZFTo7ZLeCfGrMz/hOy5X3Z7jekez8TNwcA=;
 b=WjbPdpDTYgHZzFgjw5o3FzaOllsJ4HXs03bRel8gKvJsWXo8oCznW1DIhd2JUFyYjy
 um+tKJ3TcBGc2uTuksST9VG0VndzmttY28lfRjJ5KNHFkFCvz93X/HD5uE9nPgQ4uzux
 RgHmZkuXecOAXlyQBkj97+TFGCVo9O7kqndIXPFvGaIL43PJlIEIKrsaLvhnOn714BwN
 CZf/1vxZdg0elDdgRu0yd+eXgx/Iw/i8YnXyiOxnHmdxlxSszgFtTzQuhuwbIm6RDjm3
 lPi6xOko8KuzudZJPTmGlaXB+H423mGFYlucIflltuNmI/TSxT3OlqCqTk3ODGxevXhh
 6Tgg==
X-Gm-Message-State: APjAAAVwd2QyufkdeTyxIoIziSIMBOH56u6usK3ySY/uZTbzynf/5UtK
 OUsKU0FpIkuNucs0Bz5dKhE=
X-Google-Smtp-Source: APXvYqxSTd8BOk1x20HIdestDdGVyFpetMsSiIBw6K0xsqjLL4ft3+HT6Rgs1jO+R9ubRCKGrE4D4g==
X-Received: by 2002:a17:902:f46:: with SMTP id
 64mr19135350ply.235.1561972718268; 
 Mon, 01 Jul 2019 02:18:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8723bs: Remove rtw_btcoex_IsBtControlLps()
Date: Mon,  1 Jul 2019 14:48:12 +0530
Message-Id: <20190701091817.12759-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701091817.12759-1-nishkadg.linux@gmail.com>
References: <20190701091817.12759-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtw_btcoex_IsBtControlLps as it does nothing except call
hal_btcoex_IsBtControlLps.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c   |  5 -----
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  5 +++--
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 22 +++++++++----------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  2 +-
 .../staging/rtl8723bs/include/rtw_btcoex.h    |  1 -
 6 files changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 9a6e0cb9f1cc..bcbe8a441074 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -67,11 +67,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-u8 rtw_btcoex_IsBtControlLps(struct adapter *padapter)
-{
-	return hal_btcoex_IsBtControlLps(padapter);
-}
-
 void rtw_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist)
 {
 	hal_btcoex_SetBTCoexist(padapter, bBtExist);
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 77d22f403b52..41346b101f1d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1595,7 +1595,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (dtim <= 0 || dtim > 16)
 		return;
 
-	if (rtw_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter) == true)
 		return;
 
 	mutex_lock(&pwrpriv->lock);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 542a5fe33f1d..1ebde6e8880a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -9,6 +9,7 @@
 #include <linux/etherdevice.h>
 #include <drv_types.h>
 #include <rtw_debug.h>
+#include <hal_btcoex.h>
 #include <linux/jiffies.h>
 
 extern u8 rtw_do_join(struct adapter *padapter);
@@ -1888,10 +1889,10 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 		return;
 
 	if (is_primary_adapter(adapter))
-		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", rtw_btcoex_IsBtDisabled(adapter), rtw_btcoex_IsBtControlLps(adapter));
+		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", rtw_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
 
 	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
-		&& (rtw_btcoex_IsBtControlLps(adapter) == false)
+		&& (hal_btcoex_IsBtControlLps(adapter) == false)
 		) {
 		u8 bEnterPS;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 09e064f1211b..3fb8c65fb72a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -221,7 +221,7 @@ void traffic_check_for_leave_lps(struct adapter *padapter, u8 tx, u32 tx_packets
 			if (xmit_cnt > 8) {
 				if ((adapter_to_pwrctl(padapter)->bLeisurePs)
 					&& (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
-					&& (rtw_btcoex_IsBtControlLps(padapter) == false)
+					&& (hal_btcoex_IsBtControlLps(padapter) == false)
 					) {
 					DBG_871X("leave lps via Tx = %d\n", xmit_cnt);
 					bLeaveLPS = true;
@@ -236,7 +236,7 @@ void traffic_check_for_leave_lps(struct adapter *padapter, u8 tx, u32 tx_packets
 		if (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 4/*2*/) {
 			if ((adapter_to_pwrctl(padapter)->bLeisurePs)
 				&& (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
-				&& (rtw_btcoex_IsBtControlLps(padapter) == false)
+				&& (hal_btcoex_IsBtControlLps(padapter) == false)
 				) {
 				DBG_871X("leave lps via Rx = %d\n", pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod);
 				bLeaveLPS = true;
@@ -418,9 +418,9 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 	/* if (pwrpriv->pwr_mode == PS_MODE_ACTIVE) */
 	if (ps_mode == PS_MODE_ACTIVE) {
 		if (1
-			&& (((rtw_btcoex_IsBtControlLps(padapter) == false)
+			&& (((hal_btcoex_IsBtControlLps(padapter) == false)
 					)
-				|| ((rtw_btcoex_IsBtControlLps(padapter) == true)
+				|| ((hal_btcoex_IsBtControlLps(padapter) == true)
 					&& (hal_btcoex_IsLpsOn(padapter) == false))
 				)
 			) {
@@ -461,7 +461,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 		}
 	} else {
 		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE))
-			|| ((rtw_btcoex_IsBtControlLps(padapter) == true)
+			|| ((hal_btcoex_IsBtControlLps(padapter) == true)
 				&& (hal_btcoex_IsLpsOn(padapter) == true))
 			) {
 			u8 pslv;
@@ -482,7 +482,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 				pslv = PS_STATE_S0;
 
 			if ((rtw_btcoex_IsBtDisabled(padapter) == false)
-				&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
+				&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 				u8 val8;
 
 				val8 = hal_btcoex_LpsVal(padapter);
@@ -544,7 +544,7 @@ void LPS_Enter(struct adapter *padapter, const char *msg)
 	int n_assoc_iface = 0;
 	char buf[32] = {0};
 
-	if (rtw_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter) == true)
 		return;
 
 	/* Skip lps enter request if number of assocated adapters is not 1 */
@@ -589,7 +589,7 @@ void LPS_Leave(struct adapter *padapter, const char *msg)
 
 /* 	DBG_871X("+LeisurePSLeave\n"); */
 
-	if (rtw_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter) == true)
 		return;
 
 	if (pwrpriv->bLeisurePs) {
@@ -911,7 +911,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 	pslv = PS_STATE_S0;
 
 	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
-		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
+		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1052,7 +1052,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 	pslv = PS_STATE_S0;
 
 	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
-		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
+		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1094,7 +1094,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 	pslv = PS_STATE_S0;
 
 	if ((rtw_btcoex_IsBtDisabled(padapter) == false)
-		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
+		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 87e85968d2e1..080e974914b6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1044,7 +1044,7 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 	}
 
 	if (psmode > 0) {
-		if (rtw_btcoex_IsBtControlLps(padapter) == true) {
+		if (hal_btcoex_IsBtControlLps(padapter) == true) {
 			PowerState = hal_btcoex_RpwmVal(padapter);
 			byte5 = hal_btcoex_LpsVal(padapter);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 73864262f9bc..7b4cc8505a38 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -22,7 +22,6 @@ void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-u8 rtw_btcoex_IsBtControlLps(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
 void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
