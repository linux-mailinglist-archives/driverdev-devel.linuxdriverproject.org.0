Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A022451CA
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Aug 2020 22:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1BBFE22170;
	Sat, 15 Aug 2020 20:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzzuPmrDPLBA; Sat, 15 Aug 2020 20:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D7CB5221F5;
	Sat, 15 Aug 2020 20:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4897D1BF576
 for <devel@linuxdriverproject.org>; Sat, 15 Aug 2020 20:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F3A6C203B8
 for <devel@linuxdriverproject.org>; Sat, 15 Aug 2020 20:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omLg5n-n6rhB for <devel@linuxdriverproject.org>;
 Sat, 15 Aug 2020 20:28:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id BE57A20367
 for <devel@driverdev.osuosl.org>; Sat, 15 Aug 2020 20:28:51 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id x24so6449055lfe.11
 for <devel@driverdev.osuosl.org>; Sat, 15 Aug 2020 13:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q4LTThFPiKqmV8/KDsBZ08eFxzs++4m3D5v4S/eCzj0=;
 b=sspT4WD9j0TYIeLPY0Uj9ScR0Xh2ODPEhNoRftERSfbK0IptGckuwBg3/8bLLxxF2l
 75QATPZgBq22jCsfq+k6eptNlWyIwDH+AyAFG20wn2ef3ZJ0SHuhqzYXiGBjrLaxtja4
 KP9L/w4HAwFGc4EybWSM348RnaOj6LI85bhqmgX0+Z0saKv87MaO7Xr4eRFLAHGlYN05
 ML+YFXHcGJSjVppvcPV2H3BsTksEKLIOkgLchLRb69GtBWp/RBt/RWyPzFzVv87xs4l0
 GS/EKtYRd5KNu1DqPSpwzHD0EN934RKC/wOmKExVSNGy98ts90M4u0pMo97f7PmVKIma
 2iow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q4LTThFPiKqmV8/KDsBZ08eFxzs++4m3D5v4S/eCzj0=;
 b=cmO1ORCnEf8b5ipCYHBvaXPR4LXfvRG5BT56v1BZFhbYGpoYNnZ8m68lSzLtCN+x7g
 NrpOo/MSApoEZneKIqJvCb6iRDKs563HGl1APzjbpkpsdmFpbmN7nCn/BEgMo6M/qbTt
 c1Yt/QX+hPds6hBlDO1UupL9KtcI1l5md7HEtq1DSnxC/w9Cw+v5O045U0dm3tjz3Qoy
 8KWS8KxY3kCdYgHb5FlN4An6eQuXChN+V4TWtujpX0XSmeNnkb+OY4Bfk0JX9c0GhwNo
 bkRYpD7QUPjsI0Wf1/w8qmBJpxJeJASdDktl/VacrXA4uaM8Y7e/daz/V32OkzhRbwkr
 z+dw==
X-Gm-Message-State: AOAM530kYw2X5VrUQES18teFpUgbf5Cgs+1cWy82ncshBm0fBRWgJ8ED
 IBAvyt1v/rfwfdIv2PBvZrA=
X-Google-Smtp-Source: ABdhPJyiCDUSEt/9vGT8njPgGv5TjznoooHfWweRdkb51Hd+OfQ6eThKRyCu9kmDk3zwiLekYc4Rkw==
X-Received: by 2002:a19:c852:: with SMTP id y79mr3981505lff.37.1597523329521; 
 Sat, 15 Aug 2020 13:28:49 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id 80sm2643752ljf.38.2020.08.15.13.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Aug 2020 13:28:48 -0700 (PDT)
Received: (nullmailer pid 121097 invoked by uid 1000);
 Sat, 15 Aug 2020 20:33:43 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: remove unnecessary type cast of
 rtw_netdev_priv() result
Date: Sat, 15 Aug 2020 23:33:07 +0300
Message-Id: <20200815203306.121039-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The type cast
padapter = (struct adapter *)rtw_netdev_priv(dev);
do nothing because type of rtw_netdev_priv() result
is (struct adapter *).

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_debug.c    |  8 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c  |  2 +-
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 88 +++++++++----------
 drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 10 +--
 .../staging/rtl8188eu/os_dep/rtw_android.c    |  6 +-
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c |  2 +-
 6 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_debug.c b/drivers/staging/rtl8188eu/core/rtw_debug.c
index fcc8bd1011e1..3c0d20cb9c6a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_debug.c
+++ b/drivers/staging/rtl8188eu/core/rtw_debug.c
@@ -33,7 +33,7 @@ int proc_set_write_reg(struct file *file, const char __user *buffer,
 		       unsigned long count, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	char tmp[32];
 	u32 addr, val, len;
 
@@ -75,7 +75,7 @@ int proc_get_read_reg(char *page, char **start,
 		      int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	int len = 0;
 
@@ -135,7 +135,7 @@ int proc_get_adapter_state(char *page, char **start,
 			   int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	int len = 0;
 
 	len += scnprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
@@ -150,7 +150,7 @@ int proc_get_best_channel(char *page, char **start,
 			  int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	int len = 0;
 	u32 i, best_channel_24G = 1, index_24G = 0;
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 39ca97411fd5..f74753c37a29 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -84,7 +84,7 @@ static int rtw_hw_resume(struct adapter *padapter)
 	pwrpriv->bips_processing = true;
 	rtw_reset_drv_sw(padapter);
 
-	if (ips_netdrv_open((struct adapter *)rtw_netdev_priv(pnetdev)) != _SUCCESS) {
+	if (ips_netdrv_open(rtw_netdev_priv(pnetdev)) != _SUCCESS) {
 		mutex_unlock(&pwrpriv->mutex_lock);
 		goto error_exit;
 	}
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 2e83d24fcb09..13f12edd81cd 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -310,7 +310,7 @@ static char *translate_scan(struct adapter *padapter,
 
 static int wpa_set_auth_algs(struct net_device *dev, u32 value)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	int ret = 0;
 
 	if ((value & AUTH_ALG_SHARED_KEY) && (value & AUTH_ALG_OPEN_SYSTEM)) {
@@ -344,7 +344,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep	 *pwep = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
@@ -616,7 +616,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 ht_ielen = 0;
 	char *p;
 	u8 ht_cap = false;
@@ -668,7 +668,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -689,7 +689,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	enum ndis_802_11_network_infra networkType;
 	int ret = 0;
 
@@ -737,7 +737,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));
@@ -759,7 +759,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			    struct iw_request_info *a,
 			    union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	u8   j, blInserted = false;
 	int  ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -836,7 +836,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 				union iwreq_data *wrqu, char *extra)
 {
 	struct iw_range *range = (struct iw_range *)extra;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 
 	u16 val;
@@ -936,7 +936,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 			 char *extra)
 {
 	uint ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct sockaddr *temp = (struct sockaddr *)awrq;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct list_head *phead;
@@ -1001,7 +1001,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 			    struct iw_request_info *info,
 			    union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1026,7 +1026,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 {
 	int ret = 0;
 	u16 reason;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 
 	if (!mlme)
@@ -1058,7 +1058,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 {
 	u8 _status = false;
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
 
@@ -1187,7 +1187,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct list_head *plist, *phead;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct __queue *queue	= &pmlmepriv->scanned_queue;
 	struct	wlan_network	*pnetwork = NULL;
@@ -1255,7 +1255,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 			      struct iw_request_info *a,
 			      union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct __queue *queue = &pmlmepriv->scanned_queue;
 	struct list_head *phead;
@@ -1357,7 +1357,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 			      union iwreq_data *wrqu, char *extra)
 {
 	u32 len;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1462,7 +1462,7 @@ static int rtw_wx_get_rate(struct net_device *dev,
 {
 	u16 max_rate = 0;
 
-	max_rate = rtw_get_cur_max_rate((struct adapter *)rtw_netdev_priv(dev));
+	max_rate = rtw_get_cur_max_rate(rtw_netdev_priv(dev));
 
 	if (max_rate == 0)
 		return -EPERM;
@@ -1477,7 +1477,7 @@ static int rtw_wx_set_rts(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	if (wrqu->rts.disabled) {
 		padapter->registrypriv.rts_thresh = 2347;
@@ -1498,7 +1498,7 @@ static int rtw_wx_get_rts(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_88E("%s, rts_thresh =%d\n", __func__, padapter->registrypriv.rts_thresh);
 
@@ -1513,7 +1513,7 @@ static int rtw_wx_set_frag(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	if (wrqu->frag.disabled) {
 		padapter->xmitpriv.frag_len = MAX_FRAG_THRESHOLD;
@@ -1534,7 +1534,7 @@ static int rtw_wx_get_frag(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_88E("%s, frag_len =%d\n", __func__, padapter->xmitpriv.frag_len);
 
@@ -1565,7 +1565,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	enum ndis_802_11_auth_mode authmode;
 
 	struct iw_point *erq = &wrqu->encoding;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	DBG_88E("+rtw_wx_set_enc, flags = 0x%x\n", erq->flags);
@@ -1674,7 +1674,7 @@ static int rtw_wx_get_enc(struct net_device *dev,
 			    union iwreq_data *wrqu, char *keybuf)
 {
 	uint key;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_point *erq = &wrqu->encoding;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
@@ -1749,7 +1749,7 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
 }
@@ -1758,7 +1758,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_param *param = (struct iw_param *)&wrqu->param;
 	int ret = 0;
 
@@ -1930,7 +1930,7 @@ static int dummy(struct net_device *dev, struct iw_request_info *a,
 static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 {
 	uint ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	switch (name) {
 	case IEEE_PARAM_WPA_ENABLED:
@@ -1985,7 +1985,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	switch (command) {
 	case IEEE_MLME_STA_DEAUTH:
@@ -2022,7 +2022,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 		break;
 
 	case IEEE_CMD_SET_WPA_IE:
-		ret =  rtw_set_wpa_ie((struct adapter *)rtw_netdev_priv(dev),
+		ret =  rtw_set_wpa_ie(rtw_netdev_priv(dev),
 				      (char *)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
 		break;
 
@@ -2166,7 +2166,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep	 *pwep = NULL;
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -2392,7 +2392,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	unsigned char *pbuf = param->u.bcn_ie.buf;
@@ -2417,7 +2417,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 
 static int rtw_hostapd_sta_flush(struct net_device *dev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	DBG_88E("%s\n", __func__);
 
@@ -2430,7 +2430,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -2483,7 +2483,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 {
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	int updated = 0;
@@ -2518,7 +2518,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct ieee_param_ex *param_ex = (struct ieee_param_ex *)param;
@@ -2574,7 +2574,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -2610,7 +2610,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	int ie_len;
@@ -2645,7 +2645,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
@@ -2674,7 +2674,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 
 static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
@@ -2704,7 +2704,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 
 static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
@@ -2728,7 +2728,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2742,7 +2742,7 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 
 static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2756,7 +2756,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 
 static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2771,7 +2771,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 {
 	struct ieee_param *param;
 	int ret = 0;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 
 	/*
 	* this function is expect to call in master mode, which allows no power saving
@@ -2853,7 +2853,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 	int ret = 0;
 	int len = 0;
 	char *ext;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_point *dwrq = (struct iw_point *)awrq;
 
 	if (dwrq->length == 0)
@@ -2971,7 +2971,7 @@ static iw_handler rtw_handlers[] = {
 
 static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
+	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_statistics *piwstats = &padapter->iwstats;
 	int tmp_level = 0;
 	int tmp_qual = 0;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 8907bf6bb7ff..de16db16d473 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -187,7 +187,7 @@ static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct sockaddr *addr = p;
 
 	if (!padapter->bup)
@@ -198,7 +198,7 @@ static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 
 static struct net_device_stats *rtw_net_get_stats(struct net_device *pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
@@ -543,7 +543,7 @@ static int _netdev_open(struct net_device *pnetdev)
 {
 	uint status;
 	int err;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - dev_open\n"));
@@ -612,7 +612,7 @@ static int _netdev_open(struct net_device *pnetdev)
 int netdev_open(struct net_device *pnetdev)
 {
 	int ret;
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 
 	if (mutex_lock_interruptible(&padapter->hw_init_mutex))
 		return -ERESTARTSYS;
@@ -698,7 +698,7 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 
 static int netdev_close(struct net_device *pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - drv_close\n"));
 
diff --git a/drivers/staging/rtl8188eu/os_dep/rtw_android.c b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
index bf86d03820ca..9fe15dbe8133 100644
--- a/drivers/staging/rtl8188eu/os_dep/rtw_android.c
+++ b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
@@ -76,7 +76,7 @@ int rtw_android_cmdstr_to_num(char *cmdstr)
 static int rtw_android_get_rssi(struct net_device *net, char *command,
 				int total_len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(net);
+	struct adapter *padapter = rtw_netdev_priv(net);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct	wlan_network	*pcur_network = &pmlmepriv->cur_network;
 	int bytes_written = 0;
@@ -93,7 +93,7 @@ static int rtw_android_get_rssi(struct net_device *net, char *command,
 static int rtw_android_get_link_speed(struct net_device *net, char *command,
 				      int total_len)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(net);
+	struct adapter *padapter = rtw_netdev_priv(net);
 	u16 link_speed;
 
 	link_speed = rtw_get_cur_max_rate(padapter) / 10;
@@ -111,7 +111,7 @@ static int rtw_android_get_macaddr(struct net_device *net, char *command,
 static int android_set_cntry(struct net_device *net, char *command,
 			     int total_len)
 {
-	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(net);
+	struct adapter *adapter = rtw_netdev_priv(net);
 	char *country_code = command + strlen(android_wifi_cmd_str[ANDROID_WIFI_CMD_COUNTRY]) + 1;
 	int ret;
 
diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index a73313cf6a75..c22ddeb9a56b 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -164,7 +164,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 {
-	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	s32 res = 0;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
