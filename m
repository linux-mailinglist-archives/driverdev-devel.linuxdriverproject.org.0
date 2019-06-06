Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D9D376E1
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 16:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3856F8644F;
	Thu,  6 Jun 2019 14:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZz60cEA8dkI; Thu,  6 Jun 2019 14:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 249D586427;
	Thu,  6 Jun 2019 14:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73DF81BF2CB
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 14:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7100487B39
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 14:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GrIYjiBNAmWC for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 14:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3F5887B36
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 14:36:07 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j2so1625187pfe.6
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 07:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jXvNJlmMwTwPdGbKMyehc8PYCLGaCInId9R1IyHYjiM=;
 b=aJAkm1fvEI7//g6q0g41p6/0u0AUPs6m8ltpd0hZ+8EQ2emNsV8DapVhl4PPXNx3+4
 Bv2H2mduakfYUzApWZfjXKU52gIptJ7LbcsH9BE0kZExsIY6N0/e6HShNFUqDrK165uW
 db1KiTaOhPwEH0Wq4x5zscnZE2GJYbSfx6K7P41eMz9sem+pFrD3zUUw5CD0/LKZqtfk
 X/olQs0IFfD+cRFGgCSc/Z9G+8uqkBL7HyIIUFF4ejcI2Oa2+lGekIwFL9neA3/vXqgC
 Y11z8PDjuEdJW2IW3fUrCUPtkDoA9eO4m0uo9qjyqIm5XJBFzoPM/HFEH2GSlv7OuI0X
 CXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jXvNJlmMwTwPdGbKMyehc8PYCLGaCInId9R1IyHYjiM=;
 b=YZJR7nQ8ShuVMU8lz8JUpSzHmxrw4Bq93i1wOo2ua0uiC68Rald6O7CwO4uCBLlDfT
 Qsd3qZwZVeeDphMr/Yi3TNbEnt/ki/7y0yMyR1zud20Gx3fNpBdJrzqsiSLHhTixcOW9
 PpmlXoiA7ODkFTj7S2OCSHdzcWNsXQdvs/aUpPNm84D2hgi9hsd9gzkptjBdnzLfoIBA
 U4zBpCEegEJE1CZLwhYGPyUag1cU+HcYpsC1DvB/FQ16ywkem808sSDJXu35GZalurlC
 xRxOyWNBF8qFkteZSCSJLedvtnYnq/7NzmiPGFGbeMwffJ4YQuET+csF8SRYxfsdcIT6
 CPww==
X-Gm-Message-State: APjAAAVldqiAiIgjmD88hB/DPsU45ll3EtKzRyDB8UWbvabmlxwbazvP
 vKUOSDpIxRbHU9CgULSWKBw=
X-Google-Smtp-Source: APXvYqy91nI8EPyOXu8mD713BnqY4uW9qS79pzkXyHjXhyAs6dtYYH2oTv+Md05TJu6wVSU2VF01Dg==
X-Received: by 2002:a63:c006:: with SMTP id h6mr3622388pgg.368.1559831767213; 
 Thu, 06 Jun 2019 07:36:07 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id c10sm2014560pjq.14.2019.06.06.07.36.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Jun 2019 07:36:06 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8723bs: Resolve "(foo*)" should be "(foo *)"
 error reported by checkpatch
Date: Thu,  6 Jun 2019 07:35:40 -0700
Message-Id: <1559831740-28009-1-git-send-email-shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20190606130253.GE1140@kroah.com>
References: <20190606130253.GE1140@kroah.com>
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
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaned up the code to remove the error "(foo*)" should be "(foo *)"
reported by checkpatch from the file rtl8723bs/os_dep/ioctl_linux.c

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
Changes in v2:
 - Modified commit message to include reported ERROR by checkpatch

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 32 +++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 236a462..0be8288 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -55,7 +55,7 @@ void rtw_indicate_wx_assoc_event(struct adapter *padapter)
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex*)(&(pmlmeinfo->network));
+	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
 
 	memset(&wrqu, 0, sizeof(union iwreq_data));
 
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8          j, blInserted = false;
 	int         intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-        struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
+        struct iw_pmksa*  pPMK = (struct iw_pmksa *)extra;
         u8     strZeroMacAddress[ ETH_ALEN ] = { 0x00 };
         u8     strIssueBssid[ ETH_ALEN ] = { 0x00 };
 
@@ -2054,7 +2054,7 @@ static int rtw_wx_set_auth(struct net_device *dev,
 			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_param *param = (struct iw_param*)&(wrqu->param);
+	struct iw_param *param = (struct iw_param *)&(wrqu->param);
 	int ret = 0;
 
 	switch (param->flags & IW_AUTH_INDEX) {
@@ -2337,8 +2337,8 @@ static int rtw_wx_read_rf(struct net_device *dev,
 	u32 path, addr, data32;
 
 
-	path = *(u32*)extra;
-	addr = *((u32*)extra + 1);
+	path = *(u32 *)extra;
+	addr = *((u32 *)extra + 1);
 	data32 = rtw_hal_read_rfreg(padapter, path, addr, 0xFFFFF);
 	/*
 	 * IMPORTANT!!
@@ -2358,9 +2358,9 @@ static int rtw_wx_write_rf(struct net_device *dev,
 	u32 path, addr, data32;
 
 
-	path = *(u32*)extra;
-	addr = *((u32*)extra + 1);
-	data32 = *((u32*)extra + 2);
+	path = *(u32 *)extra;
+	addr = *((u32 *)extra + 1);
+	data32 = *((u32 *)extra + 2);
 /* 	DBG_871X("%s: path =%d addr = 0x%02x data = 0x%05x\n", __func__, path, addr, data32); */
 	rtw_hal_write_rfreg(padapter, path, addr, 0xFFFFF, data32);
 
@@ -2584,7 +2584,7 @@ static int rtw_wps_start(struct net_device *dev,
 		goto exit;
 	}
 
-	uintRet = copy_from_user((void*)&u32wps_start, pdata->pointer, 4);
+	uintRet = copy_from_user((void *)&u32wps_start, pdata->pointer, 4);
 	if (u32wps_start == 0)
 		u32wps_start = *extra;
 
@@ -2694,7 +2694,7 @@ static int rtw_dbg_port(struct net_device *dev,
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 
-	pdata = (u32*)&wrqu->data;
+	pdata = (u32 *)&wrqu->data;
 
 	val32 = *pdata;
 	arg = (u16)(val32&0x0000ffff);
@@ -3420,7 +3420,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 
 	case IEEE_CMD_SET_WPA_IE:
 		/* ret = wpa_set_wpa_ie(dev, param, p->length); */
-		ret =  rtw_set_wpa_ie((struct adapter *)rtw_netdev_priv(dev), (char*)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
+		ret =  rtw_set_wpa_ie((struct adapter *)rtw_netdev_priv(dev), (char *)param->u.wpa_ie.data, (u16)param->u.wpa_ie.len);
 		break;
 
 	case IEEE_CMD_SET_ENCRYPTION:
@@ -3824,7 +3824,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 		if (WLAN_STA_HT&flags) {
 			psta->htpriv.ht_option = true;
 			psta->qos_option = 1;
-			memcpy((void*)&psta->htpriv.ht_cap, (void*)&param->u.add_sta.ht_cap, sizeof(struct rtw_ieee80211_ht_cap));
+			memcpy((void *)&psta->htpriv.ht_cap, (void *)&param->u.add_sta.ht_cap, sizeof(struct rtw_ieee80211_ht_cap));
 		} else {
 			psta->htpriv.ht_option = false;
 		}
@@ -4368,7 +4368,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 	char *ext;
 
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	struct iw_point *dwrq = (struct iw_point*)awrq;
+	struct iw_point *dwrq = (struct iw_point *)awrq;
 
 	/* RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_notice_, ("+rtw_wx_set_priv\n")); */
 	if (dwrq->length == 0)
@@ -4540,7 +4540,7 @@ static int rtw_test(
 	}
 	DBG_871X("%s: string =\"%s\"\n", __func__, pbuf);
 
-	ptmp = (char*)pbuf;
+	ptmp = (char *)pbuf;
 	pch = strsep(&ptmp, delim);
 	if ((pch == NULL) || (strlen(pch) == 0)) {
 		kfree(pbuf);
@@ -5038,7 +5038,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 				str = strsep(&ptr, delim);
 				if (NULL == str) break;
 				sscanf(str, "%i", &temp);
-				((s32*)buffer)[count++] = (s32)temp;
+				((s32 *)buffer)[count++] = (s32)temp;
 			} while (1);
 			buffer_len = count * sizeof(s32);
 
@@ -5177,7 +5177,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		case IW_PRIV_TYPE_INT:
 			/* Display args */
 			for (j = 0; j < n; j++) {
-				sprintf(str, "%d  ", ((__s32*)extra)[j]);
+				sprintf(str, "%d  ", ((__s32 *)extra)[j]);
 				len = strlen(str);
 				output_len = strlen(output);
 				if ((output_len + len + 1) > 4096) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
