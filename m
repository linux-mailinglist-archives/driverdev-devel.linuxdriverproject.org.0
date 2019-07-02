Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9685C9B7
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0966920791;
	Tue,  2 Jul 2019 07:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPNlafFHy77y; Tue,  2 Jul 2019 07:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4F55620767;
	Tue,  2 Jul 2019 07:01:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 799BF1BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7618E85E7C
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RWHKLk-CZWD6 for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19E638574F
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:56 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y15so7788217pfn.5
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sSkYuZ6VWJbV8NE4DM/jOXoTd7dirJfpNXAIUxMfJjY=;
 b=r/oDAFaXCy46EpxVsmhlK+7bQ+SwEJ0ohd3O+g230LabX0DDkRU0bhzTdq+Gs1+o5O
 iM6+fPGX3DA2g+Ywnd3o2Jya8VyWnaHr0wNNTvFT3Pk4gGR/Ha2bQf2nwXp54ENkeQZY
 clxRKOqwD22EZ/eUgElS58c1XVOF45MI5gvU4Jmm5lMiyi8WiKrpHRZdwQFsdImA3loJ
 +5w7UKRBT76pd0XOLP45wVOxxN0NWRtTi4VwYDGCEXbx51JEWA92eXEnDU8Al57ryMEh
 FhvC5l7s2JvOTKRFmGzquGv3EP42O5qYEIPEwlbrGSmMllJgi8QifMx5ucWZ3wdlR7eg
 FwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sSkYuZ6VWJbV8NE4DM/jOXoTd7dirJfpNXAIUxMfJjY=;
 b=KZZxNUCzyVVKwmGnxrcjrBTJX+E0aLgi1CWkCiIApm0CBwuv+TDdLQNouOujRYN1RO
 2E00Yd4vmV84ML/mWApURyw2pFfHosd+ioXnDb4x+5vWnOwHSztR5HaZuAJIycZiZSkA
 acPLlQsbRJbncLfUT7BIKz0mc32XalihKlpdLj2PjhWqsbmy2kWJsIrLy6eqys2UpgCg
 0bV4+RWs85RmeciCmGqRbV2oca9eHd5pKUDD7A6syG2RHtv49WE+J6DIN6HNNwAl/13v
 JPwhvg7f2KndOyXgaftWBRhNBlvsUSo9WVVsrl0pMMFdY7rf9hqgG2rT7KxmE2wikDok
 DIKg==
X-Gm-Message-State: APjAAAVhBAnzX+N77xx5NVf8Ee94dGnF0Pmv4drXR17SW2rri/rgka4y
 SX+dX1Mv97gD+PfhU23ilWzdHXsC
X-Google-Smtp-Source: APXvYqzJPsgarvofG8qysunFthBxGTP94Qp18M6o1YNfAeSlAP+g0lwwV86PlarWmVq7llcCBf4ktg==
X-Received: by 2002:a63:3f48:: with SMTP id m69mr28415180pga.17.1562050915493; 
 Tue, 02 Jul 2019 00:01:55 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: rtl8723bs: Remove
 rtw_btcoex_IsBTCoexCtrlAMPDUSize()
Date: Tue,  2 Jul 2019 12:31:28 +0530
Message-Id: <20190702070132.6997-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_IsBTCoexCtrlAMPDUSize as it does nothing
except call hal_btcoex_IsBTCoexCtrlAMPDUSize.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 9 ---------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 5 +++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index d9bae9fa78d6..e00336ab2ee6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -38,15 +38,6 @@ void rtw_btcoex_HaltNotify(struct adapter *padapter)
 	hal_btcoex_HaltNotify(padapter);
 }
 
-s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
-{
-	s32 coexctrl;
-
-	coexctrl = hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter);
-
-	return coexctrl;
-}
-
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 69b479ea5872..4285844420cb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -9,6 +9,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <rtw_wifi_regd.h>
+#include <hal_btcoex.h>
 #include <linux/kernel.h>
 
 static struct mlme_handler mlme_sta_tbl[] = {
@@ -3944,7 +3945,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 			} while (pmlmeinfo->dialogToken == 0);
 			pframe = rtw_set_fixed_ie(pframe, 1, &(pmlmeinfo->dialogToken), &(pattrib->pktlen));
 
-			if (rtw_btcoex_IsBTCoexCtrlAMPDUSize(padapter)) {
+			if (hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter)) {
 				/*  A-MSDU NOT Supported */
 				BA_para_set = 0;
 				/*  immediate Block Ack */
@@ -4000,7 +4001,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 			else
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x1000); /* 64 buffer size */
 
-			if (rtw_btcoex_IsBTCoexCtrlAMPDUSize(padapter) &&
+			if (hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter) &&
 			    padapter->driver_rx_ampdu_factor == 0xFF) {
 				/*  max buffer size is 8 MSDU */
 				BA_para_set &= ~RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index a1cab61fd5f0..904dda178f94 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -17,7 +17,6 @@
 
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_HaltNotify(struct adapter *);
-s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
