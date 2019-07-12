Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2F3667A1
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEEBC882FD;
	Fri, 12 Jul 2019 07:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDCxOrn7iE47; Fri, 12 Jul 2019 07:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09C04882E7;
	Fri, 12 Jul 2019 07:18:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1344A1BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8FA122786
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GboimTmzQyoC for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4189B22797
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t132so4119592pgb.9
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qZGlHLjgutB1tMZhc/0vbNoxyQxLTnyMtXwt9qoffUg=;
 b=WYatcoKxHJxcxu6jE/WQwSGtPi8Zq+EP0K0uVzeK3Js1vg3fhtAMtY1/bEzF6QQzdS
 cSLMYVIyej+JL69cTlrvpTZyn/e2IUFPFXhhIDXkAbfoELpOQRUr5BU4UVViNz+50M0+
 L1cnwVdzOxoFwnoOfUGu1OSd2A3aw/uMomNhcROT7DDvxKC4tuguDX3tSaz2AwFq1NPy
 Uh4crO8cVJmgoz23lHMhwprNdxFVdTalc4u1cOXjAEJI0iSlJ4M/7qY7sAqaKKfzQEzJ
 +MKRf/13CjJ6erXMur3Zr4/5H7WuFhJeuZ5QRPAbqge2fY5vO6yk3sX7lKHi9VEmfJS8
 3Hhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qZGlHLjgutB1tMZhc/0vbNoxyQxLTnyMtXwt9qoffUg=;
 b=kCI0XHuJdyjlK70lVr+c8sXIsQrF1WzkIONDHtpLJjxC3h+zbvexoIQZGBDH7iyjso
 gj6FITLoRwO65dR6OGC+bZVmIVZSpTM0X/nKwwpgTdgNonEwM20cfro+LSLjRJ49r2X9
 16ytG22F61THOx5nAYGIDQctuxKz7aLAa1RtykYXOV6kYusGdDTAnV25hdaKlrHunPIk
 fwcVGrs2aSvJYQNuYMHOn3FgW5z4dUEztRHBEWvPaYAs904JXSX5RMrwsFxiBr4h4vRN
 z5M5dMImbMum3A/TROdU67ypLbsWTD2ACOD+KizQS/pj758yn4SwHWEdO8syjnsYz8QU
 A64g==
X-Gm-Message-State: APjAAAVdvtx6JnK4eRSVQP87IJU8kq8+b2EjnZdmXrA+y7MMK7GXLwUF
 IMoJkqCJWaU9m/Zue59fK0g=
X-Google-Smtp-Source: APXvYqzH35v6Gjw+7PzkeABvjxRqDlirCGs6YyUmYC/2ZWC9zoQsA9uGI63aX3mrjuQRFSICAscYug==
X-Received: by 2002:a63:608c:: with SMTP id u134mr6648090pgb.274.1562915888834; 
 Fri, 12 Jul 2019 00:18:08 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 3/8] staging: rtl8188eu: Replace function
 beacon_timing_control()
Date: Fri, 12 Jul 2019 12:47:40 +0530
Message-Id: <20190712071746.2474-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712071746.2474-1-nishkadg.linux@gmail.com>
References: <20190712071746.2474-1-nishkadg.linux@gmail.com>
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

Remove function beacon_timing_control as all it does is call
rtw_hal_bcn_related_reg_setting.
Rename rtw_hal_bcn_related_reg_setting to beacon_timing_control for
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c   | 5 -----
 drivers/staging/rtl8188eu/hal/usb_halinit.c      | 2 +-
 drivers/staging/rtl8188eu/include/hal_intf.h     | 2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h | 1 -
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 1f2763ff2a70..c985b1468d41 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1466,8 +1466,3 @@ void correct_TSF(struct adapter *padapter, struct mlme_ext_priv *pmlmeext)
 {
 	rtw_hal_set_hwreg(padapter, HW_VAR_CORRECT_TSF, NULL);
 }
-
-void beacon_timing_control(struct adapter *padapter)
-{
-	rtw_hal_bcn_related_reg_setting(padapter);
-}
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index ac5552050752..89babcb12d02 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1934,7 +1934,7 @@ void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
 	psta->init_rate = init_rate;
 }
 
-void rtw_hal_bcn_related_reg_setting(struct adapter *adapt)
+void beacon_timing_control(struct adapter *adapt)
 {
 	u32 value32;
 	struct mlme_ext_priv	*pmlmeext = &adapt->mlmeextpriv;
diff --git a/drivers/staging/rtl8188eu/include/hal_intf.h b/drivers/staging/rtl8188eu/include/hal_intf.h
index 8b65fcba1967..516a89647003 100644
--- a/drivers/staging/rtl8188eu/include/hal_intf.h
+++ b/drivers/staging/rtl8188eu/include/hal_intf.h
@@ -199,7 +199,7 @@ void	rtw_hal_add_ra_tid(struct adapter *adapt, u32 bitmap, u8 arg, u8 level);
 void	rtw_hal_clone_data(struct adapter *dst_adapt,
 			   struct adapter *src_adapt);
 
-void rtw_hal_bcn_related_reg_setting(struct adapter *padapter);
+void beacon_timing_control(struct adapter *padapter);
 
 u32	rtw_hal_read_rfreg(struct adapter *padapter, enum rf_radio_path eRFPath,
 			   u32 RegAddr, u32 BitMask);
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 327f7d1bc20c..d70780c8fd62 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -535,7 +535,6 @@ void report_del_sta_event(struct adapter *padapter,
 void report_add_sta_event(struct adapter *padapter, unsigned char *addr,
 			  int cam_idx);
 
-void beacon_timing_control(struct adapter *padapter);
 u8 set_tx_beacon_cmd(struct adapter *padapter);
 unsigned int setup_beacon_frame(struct adapter *padapter,
 				unsigned char *beacon_frame);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
