Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3C0270C11
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 11:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3333F8710D;
	Sat, 19 Sep 2020 09:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HpDKET2s5pS8; Sat, 19 Sep 2020 09:04:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A631884C05;
	Sat, 19 Sep 2020 09:04:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2D611BF3E1
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 09:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8EE58203FE
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 09:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0IzPRmaqALU for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 09:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 79B80203C4
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 09:04:39 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id f11so4408315qvw.3
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 02:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oiuIiSNPwipY+9EEA71GKOJ/YIY4Ksk08gyO+6pGpfk=;
 b=E2mpMqSePH1udFeY3pwPpu4VwsI4V8x1VMje8xQQlhhxt+od+ohN6AsMcsrMEkauIx
 Q3fBG+EwuLw9jUOLdRAOL0BlGO2nXkpP0DyXOKmRmC8Te7NKS0nTReiVCrwqUPbJDAaU
 v+fQKhRi/xlyi+sDKYa/fLOybXQAkhoJ0A0RvPM7+UW543obncletZiCdtRmnNqaEnCo
 S1QYgijefezEjmnTbM0Uk06ZDfbIwE5QhbbXXjOZN7et/P4Xx5QCryDccp9oFkDi2W8N
 PmL4+o1xU++YQj3URwNs7sds+Kk5YwfrRm90BxFEDVMOJmUX1avSdVfpJm1/YdjByAxD
 Nsow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oiuIiSNPwipY+9EEA71GKOJ/YIY4Ksk08gyO+6pGpfk=;
 b=b/jdGK3luL/M2CRuL7iDrjm+ZcXPAeFM9rcSOub4c37o8V+1X1pgv+lOJJ8mGhmV33
 i79UyGvKPqsH4mMUlDVX9hhy9HYnESVM0V0gU7bDGawNOQ8eOrtjnIvAGepHa5+DFHf5
 YpRoj+Y7jgcRhEvr+GEInSQPpUGKA8EIl/djQharai7pTqkuSSpBElskpVgJN2O0sGvV
 IPvpysVh+ITrZno3mk/VfUyKwluSqgwDsqQwpSLqEprv1y613kpXgncpTKhvAtKzbwop
 493s95vEttF3N76FxexoXTGbC9BItZPjpv+9j8kwLts+UeKid72gsXqn6wIaMIEI0JTn
 n3xA==
X-Gm-Message-State: AOAM533laS2kk9znAEGTu4aRpStE0Y+6dJp5QPWSxW7CGkLjDdZLJc9p
 KP27EmNlrmtt+Vevtbyuh2Y=
X-Google-Smtp-Source: ABdhPJzQjIHJUruIM2KkHbzEdXda0QfD388KbxbrZ13QLANd45lZ25YvODVMiKwOYDpH5XDKYOrf1A==
X-Received: by 2002:a0c:efd2:: with SMTP id a18mr21326933qvt.54.1600506278402; 
 Sat, 19 Sep 2020 02:04:38 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-169.002.204.pools.vodafone-ip.de. [2.204.143.169])
 by smtp.gmail.com with ESMTPSA id u18sm4057854qtk.61.2020.09.19.02.04.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 02:04:37 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: clean up block comment style issues
Date: Sat, 19 Sep 2020 11:00:39 +0200
Message-Id: <20200919090040.9613-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up block comment style issues to follow kernel coding style
and clear checkpatch warnings.

WARNING: Block comments should align the * on each line
WARNING: Block comments use a trailing */ on a separate line
WARNING: Block comments use * on subsequent lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c      |  6 +++---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  | 12 +++---------
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c   | 10 +++++-----
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 10 ++++------
 drivers/staging/rtl8188eu/os_dep/usb_intf.c    | 11 ++++++-----
 5 files changed, 21 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index d334dc335914..4e2b1ee59981 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1894,9 +1894,9 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		rtw_hal_get_def_var(padapter, HAL_DEF_MAX_RECVBUF_SZ, &max_recvbuf_sz);
 
 		/*
-		ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
-		ampdu_params_info [4:2]:Min MPDU Start Spacing
-		*/
+		 * ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
+		 * ampdu_params_info [4:2]:Min MPDU Start Spacing
+		 */
 
 		rtw_hal_get_def_var(padapter, HW_VAR_MAX_RX_AMPDU_FACTOR, &max_rx_ampdu_factor);
 		ht_cap.ampdu_params_info = max_rx_ampdu_factor & 0x03;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 4df790c83d9f..1befd297f0b9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -19,9 +19,7 @@
 
 static u8 null_addr[ETH_ALEN] = {};
 
-/**************************************************
-OUI definitions for the vendor specific IE
-***************************************************/
+/* OUI definitions for the vendor specific IE */
 const u8 RTW_WPA_OUI[] = {0x00, 0x50, 0xf2, 0x01};
 const u8 WPS_OUI[] = {0x00, 0x50, 0xf2, 0x04};
 static const u8 WMM_OUI[] = {0x00, 0x50, 0xf2, 0x02};
@@ -32,17 +30,13 @@ static const u8 WMM_PARA_OUI[] = {0x00, 0x50, 0xf2, 0x02, 0x01, 0x01};
 const u8 WPA_TKIP_CIPHER[4] = {0x00, 0x50, 0xf2, 0x02};
 const u8 RSN_TKIP_CIPHER[4] = {0x00, 0x0f, 0xac, 0x02};
 
-/********************************************************
-MCS rate definitions
-*********************************************************/
+/* MCS rate definitions */
 const u8 MCS_rate_1R[16] = {
 	0xff, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };
 
-/********************************************************
-ChannelPlan definitions
-*********************************************************/
+/* ChannelPlan definitions */
 static struct rt_channel_plan_2g RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x00, RT_CHANNEL_DOMAIN_2G_WORLD , Passive scan CH 12, 13 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x01, RT_CHANNEL_DOMAIN_2G_ETSI1 */
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index f74753c37a29..3848e695ac84 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -530,11 +530,11 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 }
 
 /*
-* rtw_pwr_wakeup - Wake the NIC up from: 1)IPS. 2)USB autosuspend
-* @adapter: pointer to struct adapter structure
-* @ips_deffer_ms: the ms will prevent from falling into IPS after wakeup
-* Return _SUCCESS or _FAIL
-*/
+ * rtw_pwr_wakeup - Wake the NIC up from: 1)IPS. 2)USB autosuspend
+ * @adapter: pointer to struct adapter structure
+ * @ips_deffer_ms: the ms will prevent from falling into IPS after wakeup
+ * Return _SUCCESS or _FAIL
+ */
 
 int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *caller)
 {
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index ba6356e0825a..152ac20918e2 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -1813,9 +1813,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 
 		break;
 	case IW_AUTH_80211_AUTH_ALG:
-		/*
-		 *  It's the starting point of a link layer connection using wpa_supplicant
-		*/
+		/* It's the starting point of a link layer connection using wpa_supplicant */
 		if (check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
 			LeaveAllPowerSaveMode(padapter);
 			rtw_disassoc_cmd(padapter, 500, false);
@@ -2775,9 +2773,9 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	/*
-	* this function is expect to call in master mode, which allows no power saving
-	* so, we just check hw_init_completed
-	*/
+	 * this function is expect to call in master mode, which allows no power saving
+	 * so, we just check hw_init_completed
+	 */
 
 	if (!padapter->hw_init_completed)
 		return -EPERM;
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index cbf82f915303..41fb850b5e3a 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -126,7 +126,8 @@ static void usb_dvobj_deinit(struct usb_interface *usb_intf)
 				 * remove/insert module, driver fails
 				 * on sitesurvey for the first time when
 				 * device is up . Reset usb port for sitesurvey
-				 * fail issue. */
+				 * fail issue.
+				 */
 				pr_debug("usb attached..., try to reset usb device\n");
 				usb_reset_device(interface_to_usbdev(usb_intf));
 			}
@@ -383,8 +384,7 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 	}
 #endif
 
-	/* 2012-07-11 Move here to prevent the 8723AS-VAU BT auto
-	 * suspend influence */
+	/* 2012-07-11 Move here to prevent the 8723AS-VAU BT auto suspend influence */
 	if (usb_autopm_get_interface(pusb_intf) < 0)
 		pr_debug("can't get autopm:\n");
 
@@ -479,8 +479,9 @@ static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device
 
 /*
  * dev_remove() - our device is being removed
-*/
-/* rmmod module & unplug(SurpriseRemoved) will call r871xu_dev_remove() => how to recognize both */
+ *
+ * rmmod module & unplug(SurpriseRemoved) will call r871xu_dev_remove() => how to recognize both
+ */
 static void rtw_dev_remove(struct usb_interface *pusb_intf)
 {
 	struct dvobj_priv *dvobj = usb_get_intfdata(pusb_intf);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
