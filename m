Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 740FC5B66D
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C33B886651;
	Mon,  1 Jul 2019 08:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPygcKna0LjF; Mon,  1 Jul 2019 08:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28115864A4;
	Mon,  1 Jul 2019 08:11:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5B91BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C762875F4
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s82cful9qcb8 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E89EE875D8
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z75so5504989pgz.5
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=goNYPDLepn+WXofQGikGfE7Is4auAwCSPonviif5qlw=;
 b=HWwQlWxeeJgNyiUAaQK86plI2HsGDW4KMo8O5wpGHDGpnspbkIUMjo9raD5woUyAzE
 nAXjipgVOD/U/QfTzy2rs7beteuwGqj0ZV371V4whZTo58agNl+xyO13ZSoDbG0B3WCM
 adabHfHM2A+uUIE/RUt6PLaevnPgeW1GRTibsss9w4QZPC4LjGceZ8zLupvEqzRMIzvD
 Hq88T8Lv6aHBXRdd7T2Gsy1wL3N/uMrrtwZxFXElcGrLOrjSb46gpE0WRiBhaOS5SbfB
 umtZex97YPHOi6YdUeWfVfEtKzevtQFdLEdYUzlgDCk8Dq5uO+LuWoPzZP+4lsweIXuq
 zMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=goNYPDLepn+WXofQGikGfE7Is4auAwCSPonviif5qlw=;
 b=S6TLz6nRHoohDuI62MTMDa6P1S6ejkT07BFo9v6mBdZt8MvLugdbhR+ig4BvQRHgSZ
 ZXRrDKerpFs0AzCuGWlANHL0imToNbnCQUWvrspt0oiK4hYSduSoX1SOorNjjcf2ATNz
 +DJkoa6sLRU7gu9X9laAJOh1stnr99gowxgcBGLXos0/by/4Nt7re1LB7ex50UZyMk7T
 6OMlPFW6BQc+5ddkzFMuKg+81zrVq1w99LOJ63JhC6xc/KEguZU+odvdsOVUTumZcdaQ
 /VdwaCFbQx54uwGM33uLiwz2s1+tiHD13VCswFhNdtHAydanz7HbKe72MPw0xARo0lfU
 WJXA==
X-Gm-Message-State: APjAAAW4CEQoqVJCeaRSKn5gHHQ1XbWytYuxkfE3V1DLSStx1CexonN9
 SvFhzfQEuRU/s7wI5xvGq6M=
X-Google-Smtp-Source: APXvYqzJqQgCnmRXm/NN+dP8+72mi+lHQcNphccIoYybChY6W1Q/MZRZ/klhHECH7MOwFd/pPnVEJQ==
X-Received: by 2002:a17:90a:80c4:: with SMTP id
 k4mr29472349pjw.74.1561962215655; 
 Sun, 30 Jun 2019 23:23:35 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8723bs: Remove rtw_btcoex_IsLpsOn()
Date: Mon,  1 Jul 2019 11:53:04 +0530
Message-Id: <20190701062304.2440-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701062304.2440-1-nishkadg.linux@gmail.com>
References: <20190701062304.2440-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_IsLpsOn as all it does is call
hal_btcoex_IsLpsOn.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index ab796ee12694..e747bfa4fa8c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -77,11 +77,6 @@ u8 rtw_btcoex_IsBtControlLps(struct adapter *padapter)
 	return hal_btcoex_IsBtControlLps(padapter);
 }
 
-u8 rtw_btcoex_IsLpsOn(struct adapter *padapter)
-{
-	return hal_btcoex_IsLpsOn(padapter);
-}
-
 u8 rtw_btcoex_RpwmVal(struct adapter *padapter)
 {
 	return hal_btcoex_RpwmVal(padapter);
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index a4c99265bc22..01bce255c8ca 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -421,7 +421,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			&& (((rtw_btcoex_IsBtControlLps(padapter) == false)
 					)
 				|| ((rtw_btcoex_IsBtControlLps(padapter) == true)
-					&& (rtw_btcoex_IsLpsOn(padapter) == false))
+					&& (hal_btcoex_IsLpsOn(padapter) == false))
 				)
 			) {
 			DBG_871X(FUNC_ADPT_FMT" Leave 802.11 power save - %s\n",
@@ -462,7 +462,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 	} else {
 		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE))
 			|| ((rtw_btcoex_IsBtControlLps(padapter) == true)
-				&& (rtw_btcoex_IsLpsOn(padapter) == true))
+				&& (hal_btcoex_IsLpsOn(padapter) == true))
 			) {
 			u8 pslv;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index aebbed4f3a54..9a020bdc5be3 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -24,7 +24,6 @@ u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 void rtw_btcoex_Handler(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 u8 rtw_btcoex_IsBtControlLps(struct adapter *);
-u8 rtw_btcoex_IsLpsOn(struct adapter *);
 u8 rtw_btcoex_RpwmVal(struct adapter *);
 u8 rtw_btcoex_LpsVal(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
