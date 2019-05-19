Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDD02275B
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 18:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9905086DDC;
	Sun, 19 May 2019 16:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8kPUcN4mRCM; Sun, 19 May 2019 16:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2957B85440;
	Sun, 19 May 2019 16:58:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 284D21BF338
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 16:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24451840F8
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 16:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QY5L1FDOHMm for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 16:58:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F01F883A58
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 16:58:04 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j26so5609551pgl.5
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 09:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=uOHbz+DwgepgwTxMGLbqewLAE0oXzfTmrvtxmoDPPc0=;
 b=nWgXoMfdrHftYK6fHFfMSoOKNLOH1lM+ykgVX+u9jyCWR1GGk1yqGG8Cx+dycje2v2
 /hUfCupLxLQOYbw/dp+cjSQDHP5bNHKmug3EuniBORbOwGWX51e8Kn2u88DbQZLQINjn
 nMrLm8+/emUYKMaN/CVozfh+DO7PZoUp8ayAwHJ+9zdWqzqnO18+dL8vWgJxV9TJMW+H
 g4642uqH2WOCCHUrAPOuxoVAuV2SLneOkZOrxihf2m1ZXhH5dyhibRNyi9aRlcgxqi4N
 ehhvFWU1lzCmaaoxVTe3QoYDBkN28FKd3BlihkBB5D2kffdZcloMvvs5OZRwAM1S4B73
 TVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=uOHbz+DwgepgwTxMGLbqewLAE0oXzfTmrvtxmoDPPc0=;
 b=EXAMsdW3DMBPqAoTqY5whvcFd/9FbABLgcZZZUk2gkE21akhkWWyivYe97Z5qIxXPU
 0QOgqkGBrZQkiQqY23SYg4tO8jIgulolZ7ZoxmzCgadTfPnsseXMA6+SPVhKDWUcNzmW
 4WZqiGapvjWJaOnWINnnUDiuEL57P5BmbXWpmFN9pLNc1ij55Y6cX5l2PEs+vNKBoihu
 r8foq1ad/5+DWnmTfHPVyQPRtzZLNI1cd6/dBKN1nnz9lHHATciAm7XVwlMbKZOKcfbb
 Wk8kONVt1IdoevJSFaOnV0wceM33H2sPd90Ao/JC0EeKfH/q20SVOdH/EUjziVeZEdu0
 lYGg==
X-Gm-Message-State: APjAAAXUZgSkpMwW6RkQUPzMNYoPDvPA9D0b8NIRoR+3PAHoCuqKgSoR
 zlacgAmXo5EVpS3ACKXtI3k=
X-Google-Smtp-Source: APXvYqyz0QIjyF3X+z2I2bbuS8+jmyk+CjlMiRgLJA/U9/2MWPtLXEYxMrTSTCsiwokGDoMYsnpjbA==
X-Received: by 2002:a63:8449:: with SMTP id k70mr69468888pgd.53.1558285084642; 
 Sun, 19 May 2019 09:58:04 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id b16sm26112273pfd.12.2019.05.19.09.58.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 09:58:04 -0700 (PDT)
Date: Sun, 19 May 2019 22:27:58 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Duyck <alexander.h.duyck@intel.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: os_intfs: fix warning Unneeded
 variable: "status". Return "_SUCCESS"
Message-ID: <20190519165758.GA6375@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below warnings reported by coccicheck

drivers/staging/rtl8723bs/os_dep/os_intfs.c:228:6-12: Unneeded variable:
"status". Return "_SUCCESS" on line 333
drivers/staging/rtl8723bs/os_dep/os_intfs.c:607:4-7: Unneeded variable:
"ret". Return "_SUCCESS" on line 669
drivers/staging/rtl8723bs/os_dep/os_intfs.c:713:4-8: Unneeded variable:
"ret8". Return "_SUCCESS" on line 743
drivers/staging/rtl8723bs/os_dep/os_intfs.c:1379:5-8: Unneeded variable:
"ret". Return "_SUCCESS" on line 1421
drivers/staging/rtl8723bs/os_dep/os_intfs.c:1429:5-8: Unneeded variable:
"ret". Return "_SUCCESS" on line 1451
drivers/staging/rtl8723bs/os_dep/os_intfs.c:1300:5-8: Unneeded variable:
"ret". Return "_SUCCESS" on line 1368

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 8a9d838..71dfac5 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -225,7 +225,6 @@ static int netdev_close (struct net_device *pnetdev);
 
 static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 {
-	uint status = _SUCCESS;
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
 	registry_par->chip_version = (u8)rtw_chip_version;
@@ -330,7 +329,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->qos_opt_enable = (u8)rtw_qos_opt_enable;
 
 	registry_par->hiq_filter = (u8)rtw_hiq_filter;
-	return status;
+	return _SUCCESS;
 }
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
@@ -603,7 +602,6 @@ void rtw_stop_drv_threads (struct adapter *padapter)
 
 static u8 rtw_init_default_value(struct adapter *padapter)
 {
-	u8 ret  = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -665,7 +663,7 @@ static u8 rtw_init_default_value(struct adapter *padapter)
 	padapter->driver_ampdu_spacing = 0xFF;
 	padapter->driver_rx_ampdu_factor =  0xFF;
 
-	return ret;
+	return _SUCCESS;
 }
 
 struct dvobj_priv *devobj_init(void)
@@ -709,7 +707,6 @@ void devobj_deinit(struct dvobj_priv *pdvobj)
 
 u8 rtw_reset_drv_sw(struct adapter *padapter)
 {
-	u8 ret8 = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);
 
@@ -739,7 +736,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
 
 	rtw_set_signal_stat_timer(&padapter->recvpriv);
 
-	return ret8;
+	return _SUCCESS;
 }
 
 
@@ -1296,7 +1293,6 @@ int rtw_suspend_wow(struct adapter *padapter)
 	struct net_device *pnetdev = padapter->pnetdev;
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct wowlan_ioctl_param poidparam;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
@@ -1364,7 +1360,7 @@ int rtw_suspend_wow(struct adapter *padapter)
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
+	return _SUCCESS;
 }
 #endif /* ifdef CONFIG_WOWLAN */
 
@@ -1375,7 +1371,6 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 	struct net_device *pnetdev = padapter->pnetdev;
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct wowlan_ioctl_param poidparam;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 
@@ -1417,7 +1412,7 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 	rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0, "AP-WOWLAN");
 
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
+	return _SUCCESS;
 }
 #endif /* ifdef CONFIG_AP_WOWLAN */
 
@@ -1425,7 +1420,6 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 static int rtw_suspend_normal(struct adapter *padapter)
 {
 	struct net_device *pnetdev = padapter->pnetdev;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 	if (pnetdev) {
@@ -1447,7 +1441,7 @@ static int rtw_suspend_normal(struct adapter *padapter)
 		padapter->intf_deinit(adapter_to_dvobj(padapter));
 
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
+	return _SUCCESS;
 }
 
 int rtw_suspend_common(struct adapter *padapter)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
