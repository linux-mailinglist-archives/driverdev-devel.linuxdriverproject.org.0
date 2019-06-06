Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888CD369A0
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 04:00:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A19787A80;
	Thu,  6 Jun 2019 02:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CB21-KiPShU8; Thu,  6 Jun 2019 02:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0528F81F19;
	Thu,  6 Jun 2019 01:59:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B13A51BF23F
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 01:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABA06875D6
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 01:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSYF7BOT1jF5 for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 01:59:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E185B875CD
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 01:59:55 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id f97so254653plb.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 18:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ihuU9o0Zl2KI3nbD0zaYT33XRxk7WVqlzlc7x/X37f0=;
 b=vfQngJAF7ezWRAJlfy24nqd/+e++EjO3IKe084/HH7pctHknHL0wX1i/6pJKF/XDeN
 yVrhbpBGpPYGND6QMbCXQfNj09Ua4603AIr6Ip7soE5YAPZPBaU2srxWXuYKs+Fru33b
 UnuYSQRwgBhP6bPowozYPQihg2tsOSmBvQoKjhleWHoV8KZEks9eO1dizEgjeAWAsF7S
 /PWbyPfk5yLX7Ix2jZA3eZHasDSIcy4M4kfgW1sDqzHTYuihV41Aj+4AlBPJ7hs/U5Un
 czldH6ozd2y0FxciEff8fS+IxBEua+gTob2Vfu1EGf5g1OAEf2MWcPFgmpiHT3BSF64f
 8i6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ihuU9o0Zl2KI3nbD0zaYT33XRxk7WVqlzlc7x/X37f0=;
 b=Vo1JH8csCQULdCHQn10VDsQ1cJqDoEAh49fT566Rf04TTtOukqRvI3tC0VwKI1oczI
 QT4vd1ls+FsvqaO+jd2ynylVdqC4ByVhhgM1I1xeMCIm2yPWxEfdf9YLJlk7qhZ/jWwm
 YrMKTfYC/TJpvluePOotAviOMNbr4eMZNN7Me1d8MjNh9QII9R/P/wjbFp3gtfvzgKLz
 zYztE3R9W05hfJ9SksX7r5d39I0iSrILKEc9wDuXaNLTo47wTyAIAxvBwkmP2ATSPArU
 hi4rIH0MO9lr6dHwrszS/UXklM/DECm/xO9GXIw1LiP3+WDLF4rheRkstDX26wH6o+GE
 Bk3g==
X-Gm-Message-State: APjAAAX2khaYw889NuFxnwidaY7sVEMKeNzAUqUF4yhltfbObNxTOkzr
 fOa3kX2bPDPvzJkK8Atky2UPWImdEkE=
X-Google-Smtp-Source: APXvYqz6iL57SOstwByQJwB7G/p/Z2547VWkonZ7YBzhPg2Y5xw2MOGiFbEyuyFw3gZrwv3kL58WyQ==
X-Received: by 2002:a17:902:7e0e:: with SMTP id
 b14mr22529317plm.257.1559786395303; 
 Wed, 05 Jun 2019 18:59:55 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id u2sm253814pjv.9.2019.06.05.18.59.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 18:59:54 -0700 (PDT)
Date: Wed, 5 Jun 2019 18:59:52 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hadess@hadess.net, hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: CleanUp to remove the error reported by
 checkpatch
Message-ID: <20190606015949.GA2275@t-1000>
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
Cc: shobhitkukreti@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaned up the code to remove the error "(foo*)" should be "(foo *)"
reported by checkpatch from the file rtl8723bs/os_dep/ioctl_linux.c

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
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
