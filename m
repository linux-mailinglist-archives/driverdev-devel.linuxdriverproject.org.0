Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 139E1343366
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 17:21:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23324605E7;
	Sun, 21 Mar 2021 16:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWV78sUzIioK; Sun, 21 Mar 2021 16:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B356605C5;
	Sun, 21 Mar 2021 16:20:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34A401BF48D
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 16:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17AD6403BF
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 16:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FcLv6dbfLeat for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 16:20:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from viti.kaiser.cx (viti.kaiser.cx [85.214.81.225])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6165403B7
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 16:20:41 +0000 (UTC)
Received: from dslb-188-096-140-180.188.096.pools.vodafone-ip.de
 ([188.96.140.180] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1lO0oZ-0001Gp-Fx; Sun, 21 Mar 2021 17:20:31 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: use netdev routines for private data
Date: Sun, 21 Mar 2021 17:20:09 +0100
Message-Id: <20210321162009.15447-1-martin@kaiser.cx>
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
Cc: devel@driverdev.osuosl.org, Martin Kaiser <martin@kaiser.cx>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver implements its own routines to allocate, access and free the
private data of its net_device. Use the functionality from the networking
core instead.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/staging/rtl8188eu/core/rtw_debug.c    |  8 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c  |  2 +-
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  5 +-
 .../staging/rtl8188eu/include/osdep_intf.h    |  2 +-
 .../staging/rtl8188eu/include/osdep_service.h | 13 ---
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 88 +++++++++----------
 drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 22 +++--
 .../staging/rtl8188eu/os_dep/osdep_service.c  | 31 -------
 .../staging/rtl8188eu/os_dep/rtw_android.c    |  6 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c   | 27 +++---
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c |  2 +-
 11 files changed, 78 insertions(+), 128 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_debug.c b/drivers/staging/rtl8188eu/core/rtw_debug.c
index 11198d43a371..1060837fe463 100644
--- a/drivers/staging/rtl8188eu/core/rtw_debug.c
+++ b/drivers/staging/rtl8188eu/core/rtw_debug.c
@@ -33,7 +33,7 @@ int proc_set_write_reg(struct file *file, const char __user *buffer,
 		       unsigned long count, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	char tmp[32];
 	u32 addr, val, len;
 
@@ -75,7 +75,7 @@ int proc_get_read_reg(char *page, char **start,
 		      int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	int len = 0;
 
@@ -139,7 +139,7 @@ int proc_get_adapter_state(char *page, char **start,
 			   int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	int len = 0;
 
 	len += scnprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
@@ -155,7 +155,7 @@ int proc_get_best_channel(char *page, char **start,
 			  int *eof, void *data)
 {
 	struct net_device *dev = data;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	int len = 0;
 	u32 i, best_channel_24G = 1, index_24G = 0;
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 3848e695ac84..c3c1cf67cf7e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -84,7 +84,7 @@ static int rtw_hw_resume(struct adapter *padapter)
 	pwrpriv->bips_processing = true;
 	rtw_reset_drv_sw(padapter);
 
-	if (ips_netdrv_open(rtw_netdev_priv(pnetdev)) != _SUCCESS) {
+	if (ips_netdrv_open(netdev_priv(pnetdev)) != _SUCCESS) {
 		mutex_unlock(&pwrpriv->mutex_lock);
 		goto error_exit;
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 317355f830cb..ed81cbc5e191 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -44,7 +44,10 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	u32 max_xmit_extbuf_size = MAX_XMIT_EXTBUF_SZ;
 	u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
+	/*
+	 * We don't need to memset padapter->XXX to zero because adapter is
+	 * allocated by alloc_etherdev_mq, which eventually calls kvzalloc.
+	 */
 
 	spin_lock_init(&pxmitpriv->lock);
 
diff --git a/drivers/staging/rtl8188eu/include/osdep_intf.h b/drivers/staging/rtl8188eu/include/osdep_intf.h
index 5ee4ed995025..5012b9176526 100644
--- a/drivers/staging/rtl8188eu/include/osdep_intf.h
+++ b/drivers/staging/rtl8188eu/include/osdep_intf.h
@@ -23,7 +23,7 @@ void rtw_cancel_all_timer(struct adapter *padapter);
 
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
 
-struct net_device *rtw_init_netdev(struct adapter *padapter);
+struct net_device *rtw_init_netdev(void);
 u16 rtw_recv_select_queue(struct sk_buff *skb);
 
 int netdev_open(struct net_device *pnetdev);
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 56e937b26407..efd0833e28c8 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -66,19 +66,6 @@ u8 *_rtw_malloc(u32 sz);
 
 void _rtw_init_queue(struct __queue *pqueue);
 
-struct rtw_netdev_priv_indicator {
-	void *priv;
-};
-
-struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
-
-static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
-{
-	return ((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv;
-}
-
-void rtw_free_netdev(struct net_device *netdev);
-
 #define FUNC_NDEV_FMT "%s(%s)"
 #define FUNC_NDEV_ARG(ndev) __func__, ndev->name
 #define FUNC_ADPT_FMT "%s(%s)"
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 58954b88a817..c95ae4d6a3b6 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -311,7 +311,7 @@ static char *translate_scan(struct adapter *padapter,
 
 static int wpa_set_auth_algs(struct net_device *dev, u32 value)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	int ret = 0;
 
 	if ((value & AUTH_ALG_SHARED_KEY) && (value & AUTH_ALG_OPEN_SYSTEM)) {
@@ -345,7 +345,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	int ret = 0;
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep *pwep = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
@@ -617,7 +617,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	u32 ht_ielen = 0;
 	char *p;
 	u8 ht_cap = false;
@@ -669,7 +669,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -690,7 +690,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 			   union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	enum ndis_802_11_network_infra networkType;
 	int ret = 0;
 
@@ -738,7 +738,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 			   union iwreq_data *wrqu, char *b)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
@@ -760,7 +760,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			    struct iw_request_info *a,
 			    union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	u8   j, blInserted = false;
 	int  ret = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -837,7 +837,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 	struct iw_range *range = (struct iw_range *)extra;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 
 	u16 val;
@@ -925,7 +925,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 			  union iwreq_data *awrq, char *extra)
 {
 	uint ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct sockaddr *temp = (struct sockaddr *)awrq;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct list_head *phead;
@@ -990,7 +990,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 			  struct iw_request_info *info,
 			  union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1015,7 +1015,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 {
 	int ret = 0;
 	u16 reason;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 
 	if (!mlme)
@@ -1047,7 +1047,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 {
 	u8 _status = false;
 	int ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
 
@@ -1178,7 +1178,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			   union iwreq_data *wrqu, char *extra)
 {
 	struct list_head *plist, *phead;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct __queue *queue	= &pmlmepriv->scanned_queue;
 	struct	wlan_network	*pnetwork = NULL;
@@ -1246,7 +1246,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 			    struct iw_request_info *a,
 			    union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct __queue *queue = &pmlmepriv->scanned_queue;
 	struct list_head *phead;
@@ -1348,7 +1348,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 			    union iwreq_data *wrqu, char *extra)
 {
 	u32 len;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
@@ -1453,7 +1453,7 @@ static int rtw_wx_get_rate(struct net_device *dev,
 {
 	u16 max_rate = 0;
 
-	max_rate = rtw_get_cur_max_rate(rtw_netdev_priv(dev));
+	max_rate = rtw_get_cur_max_rate(netdev_priv(dev));
 
 	if (max_rate == 0)
 		return -EPERM;
@@ -1468,7 +1468,7 @@ static int rtw_wx_set_rts(struct net_device *dev,
 			  struct iw_request_info *info,
 			  union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	if (wrqu->rts.disabled) {
 		padapter->registrypriv.rts_thresh = 2347;
@@ -1489,7 +1489,7 @@ static int rtw_wx_get_rts(struct net_device *dev,
 			  struct iw_request_info *info,
 			  union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	DBG_88E("%s, rts_thresh =%d\n", __func__, padapter->registrypriv.rts_thresh);
 
@@ -1504,7 +1504,7 @@ static int rtw_wx_set_frag(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	if (wrqu->frag.disabled) {
 		padapter->xmitpriv.frag_len = MAX_FRAG_THRESHOLD;
@@ -1525,7 +1525,7 @@ static int rtw_wx_get_frag(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	DBG_88E("%s, frag_len =%d\n", __func__, padapter->xmitpriv.frag_len);
 
@@ -1556,7 +1556,7 @@ static int rtw_wx_set_enc(struct net_device *dev,
 	enum ndis_802_11_auth_mode authmode;
 
 	struct iw_point *erq = &wrqu->encoding;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	DBG_88E("+%s, flags = 0x%x\n", __func__, erq->flags);
@@ -1665,7 +1665,7 @@ static int rtw_wx_get_enc(struct net_device *dev,
 			  union iwreq_data *wrqu, char *keybuf)
 {
 	uint key;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct iw_point *erq = &wrqu->encoding;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
@@ -1740,7 +1740,7 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
 }
@@ -1749,7 +1749,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			   struct iw_request_info *info,
 			   union iwreq_data *wrqu, char *extra)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct iw_param *param = (struct iw_param *)&wrqu->param;
 	int ret = 0;
 
@@ -1919,7 +1919,7 @@ static int dummy(struct net_device *dev, struct iw_request_info *a,
 static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 {
 	uint ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	switch (name) {
 	case IEEE_PARAM_WPA_ENABLED:
@@ -1974,7 +1974,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
 {
 	int ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	switch (command) {
 	case IEEE_MLME_STA_DEAUTH:
@@ -2011,7 +2011,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 		break;
 
 	case IEEE_CMD_SET_WPA_IE:
-		ret =  rtw_set_wpa_ie(rtw_netdev_priv(dev),
+		ret =  rtw_set_wpa_ie(netdev_priv(dev),
 				      (char *)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
 		break;
 
@@ -2155,7 +2155,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	u32 wep_key_idx, wep_key_len, wep_total_len;
 	struct ndis_802_11_wep	 *pwep = NULL;
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -2381,7 +2381,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	int ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	unsigned char *pbuf = param->u.bcn_ie.buf;
@@ -2406,7 +2406,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 
 static int rtw_hostapd_sta_flush(struct net_device *dev)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	DBG_88E("%s\n", __func__);
 
@@ -2419,7 +2419,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -2472,7 +2472,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 {
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	int updated = 0;
@@ -2507,7 +2507,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct ieee_param_ex *param_ex = (struct ieee_param_ex *)param;
@@ -2563,7 +2563,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 {
 	int ret = 0;
 	struct sta_info *psta = NULL;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -2599,7 +2599,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param, int len)
 {
 	unsigned char wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	int ie_len;
@@ -2634,7 +2634,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
@@ -2663,7 +2663,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 
 static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ie_len;
 
@@ -2693,7 +2693,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 
 static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
@@ -2717,7 +2717,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2731,7 +2731,7 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
 
 static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2745,7 +2745,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
 
 static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
@@ -2760,7 +2760,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 {
 	struct ieee_param *param;
 	int ret = 0;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 
 	/*
 	 * this function is expect to call in master mode, which allows no power saving
@@ -2841,7 +2841,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 	int ret = 0;
 	int len = 0;
 	char *ext;
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct iw_point *dwrq = (struct iw_point *)awrq;
 
 	if (dwrq->length == 0)
@@ -2959,7 +2959,7 @@ static iw_handler rtw_handlers[] = {
 
 static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct iw_statistics *piwstats = &padapter->iwstats;
 	int tmp_level = 0;
 	int tmp_qual = 0;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index c80d30f31869..a826228cbbe9 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -187,7 +187,7 @@ static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 {
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 	struct sockaddr *addr = p;
 
 	if (!padapter->bup)
@@ -198,7 +198,7 @@ static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
 
 static struct net_device_stats *rtw_net_get_stats(struct net_device *pnetdev)
 {
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
@@ -248,7 +248,7 @@ static unsigned int rtw_classify8021d(struct sk_buff *skb)
 static u16 rtw_select_queue(struct net_device *dev, struct sk_buff *skb,
 			    struct net_device *sb_dev)
 {
-	struct adapter *padapter = rtw_netdev_priv(dev);
+	struct adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	skb->priority = rtw_classify8021d(skb);
@@ -296,21 +296,19 @@ static const struct device_type wlan_type = {
 	.name = "wlan",
 };
 
-struct net_device *rtw_init_netdev(struct adapter *old_padapter)
+struct net_device *rtw_init_netdev(void)
 {
 	struct adapter *padapter;
-	struct net_device *pnetdev = NULL;
+	struct net_device *pnetdev;
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+init_net_dev\n"));
 
-	if (old_padapter)
-		pnetdev = rtw_alloc_etherdev_with_old_priv((void *)old_padapter);
-
+	pnetdev = alloc_etherdev_mq(sizeof(struct adapter), 4);
 	if (!pnetdev)
 		return NULL;
 
 	pnetdev->dev.type = &wlan_type;
-	padapter = rtw_netdev_priv(pnetdev);
+	padapter = netdev_priv(pnetdev);
 	padapter->pnetdev = pnetdev;
 	DBG_88E("register rtw_netdev_ops to netdev_ops\n");
 	pnetdev->netdev_ops = &rtw_netdev_ops;
@@ -534,7 +532,7 @@ static int _netdev_open(struct net_device *pnetdev)
 {
 	uint status;
 	int err;
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - dev_open\n"));
@@ -603,7 +601,7 @@ static int _netdev_open(struct net_device *pnetdev)
 int netdev_open(struct net_device *pnetdev)
 {
 	int ret;
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 
 	if (mutex_lock_interruptible(&padapter->hw_init_mutex))
 		return -ERESTARTSYS;
@@ -689,7 +687,7 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 
 static int netdev_close(struct net_device *pnetdev)
 {
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - drv_close\n"));
 
diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index 4d6d0347ab8e..57453df0ced8 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -24,37 +24,6 @@ void _rtw_init_queue(struct __queue *pqueue)
 	spin_lock_init(&pqueue->lock);
 }
 
-struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv)
-{
-	struct net_device *netdev;
-	struct rtw_netdev_priv_indicator *pnpi;
-
-	netdev = alloc_etherdev_mq(sizeof(struct rtw_netdev_priv_indicator), 4);
-	if (!netdev)
-		return NULL;
-
-	pnpi = netdev_priv(netdev);
-	pnpi->priv = old_priv;
-
-	return netdev;
-}
-
-void rtw_free_netdev(struct net_device *netdev)
-{
-	struct rtw_netdev_priv_indicator *pnpi;
-
-	if (!netdev)
-		return;
-
-	pnpi = netdev_priv(netdev);
-
-	if (!pnpi->priv)
-		return;
-
-	vfree(pnpi->priv);
-	free_netdev(netdev);
-}
-
 void rtw_buf_free(u8 **buf, u32 *buf_len)
 {
 	*buf_len = 0;
diff --git a/drivers/staging/rtl8188eu/os_dep/rtw_android.c b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
index b5209627fd1a..f5763a9d70c5 100644
--- a/drivers/staging/rtl8188eu/os_dep/rtw_android.c
+++ b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
@@ -76,7 +76,7 @@ int rtw_android_cmdstr_to_num(char *cmdstr)
 static int rtw_android_get_rssi(struct net_device *net, char *command,
 				int total_len)
 {
-	struct adapter *padapter = rtw_netdev_priv(net);
+	struct adapter *padapter = netdev_priv(net);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct	wlan_network	*pcur_network = &pmlmepriv->cur_network;
 	int bytes_written = 0;
@@ -93,7 +93,7 @@ static int rtw_android_get_rssi(struct net_device *net, char *command,
 static int rtw_android_get_link_speed(struct net_device *net, char *command,
 				      int total_len)
 {
-	struct adapter *padapter = rtw_netdev_priv(net);
+	struct adapter *padapter = netdev_priv(net);
 	u16 link_speed;
 
 	link_speed = rtw_get_cur_max_rate(padapter) / 10;
@@ -111,7 +111,7 @@ static int rtw_android_get_macaddr(struct net_device *net, char *command,
 static int android_set_cntry(struct net_device *net, char *command,
 			     int total_len)
 {
-	struct adapter *adapter = rtw_netdev_priv(net);
+	struct adapter *adapter = netdev_priv(net);
 	char *country_code = command + strlen(android_wifi_cmd_str[ANDROID_WIFI_CMD_COUNTRY]) + 1;
 	int ret;
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index efad43d8e465..518e9feb3f46 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -326,26 +326,23 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 					struct usb_interface *pusb_intf,
 					const struct usb_device_id *pdid)
 {
-	struct adapter *padapter = NULL;
-	struct net_device *pnetdev = NULL;
+	struct adapter *padapter;
+	struct net_device *pnetdev;
 	struct net_device *pmondev;
 	int status = _FAIL;
 
-	padapter = vzalloc(sizeof(*padapter));
-	if (!padapter)
-		goto exit;
+	pnetdev = rtw_init_netdev();
+	if (!pnetdev)
+		return NULL;
+	SET_NETDEV_DEV(pnetdev, dvobj_to_dev(dvobj));
+
+	padapter = netdev_priv(pnetdev);
 	padapter->dvobj = dvobj;
 	dvobj->if1 = padapter;
 
 	padapter->bDriverStopped = true;
 	mutex_init(&padapter->hw_init_mutex);
 
-	pnetdev = rtw_init_netdev(padapter);
-	if (!pnetdev)
-		goto free_adapter;
-	SET_NETDEV_DEV(pnetdev, dvobj_to_dev(dvobj));
-	padapter = rtw_netdev_priv(pnetdev);
-
 	if (padapter->registrypriv.monitor_enable) {
 		pmondev = rtl88eu_mon_init();
 		if (!pmondev)
@@ -421,13 +418,9 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 		kfree(padapter->HalData);
 free_adapter:
 	if (status != _SUCCESS) {
-		if (pnetdev)
-			rtw_free_netdev(pnetdev);
-		else
-			vfree(padapter);
+		free_netdev(pnetdev);
 		padapter = NULL;
 	}
-exit:
 	return padapter;
 }
 
@@ -453,7 +446,7 @@ static void rtw_usb_if1_deinit(struct adapter *if1)
 	pr_debug("+r871xu_dev_remove, hw_init_completed=%d\n",
 		 if1->hw_init_completed);
 	rtw_free_drv_sw(if1);
-	rtw_free_netdev(pnetdev);
+	free_netdev(pnetdev);
 }
 
 static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index b0efa2eb705e..a9c42fb80583 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -164,7 +164,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 {
-	struct adapter *padapter = rtw_netdev_priv(pnetdev);
+	struct adapter *padapter = netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	s32 res = 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
