Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3852ACE67
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7B83869FD;
	Tue, 10 Nov 2020 04:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_-yOEji3vnb; Tue, 10 Nov 2020 04:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D3F286A24;
	Tue, 10 Nov 2020 04:10:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91A141BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D4B0866AB
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7J59KP0PLAFc for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBC9586246
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:30 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id p10so10529159ile.3
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=URaf68lAYo+ZaDEToPZX/uqKN/VjHuBVv8pd0QncFx0=;
 b=QHuq7z+R+XpgCJRof0KVttEN08LdNP15vn/AVFyIphfe6+NEKDLyvVHLnBmqLTmYSk
 deGXaidC6argTUT/iCWH/0KjJJ0wRn5VNUUfd3h66FsQkXDJ9DjinqiBoiA4T9jEG2+3
 ABZ5uSXVJzSwlgkaYzvMxjEmjLoysv059aBAR31yoFHdTaTfQ6trc2E+TQMgKqxHOEwx
 lnQdy/jiSr7z7yVKKaUUoPBrWOuRdQXOZaWD/qVMEvLrvxpOocXlJDv1XRJcAj8xCcE5
 sSF58uF3ZpOFVZjOrbY5RIUjS5t29si4kfTD9AXuWnyyAeGq9VrDNKxXqdnQuJg+/tRu
 Qkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=URaf68lAYo+ZaDEToPZX/uqKN/VjHuBVv8pd0QncFx0=;
 b=Xn7D8vNi+5PFhWxFOPOD1B0woHQV6H2PcBmC1IV/yG4haj2ajgqDhmPkQs2ZwLjE6D
 02dOtUlpQSQCK0Erbibr2R0LaylchTNjbUhHyqhWqc+slUGLLiIShyuozX11KpksqK9M
 tT/x135UXElGMKtQ9LNlVlJn7ZH6Dy5wBUVIJxfc9hZRgG+lWYLkHZ+H57el8llxogn6
 ksa4mubQTp9+AxJ83n3TAkjoewiVvlkoAmTQdutgBAWlaye8/ts2PXnYpt82ID1NSydk
 x1eVQtmQCNOzHCXG5cfJb/t29oD0hrwrlbBe8zEBLTKGsCdqHDIkxVZy3YWe8RiRqXC2
 9ntg==
X-Gm-Message-State: AOAM532UCtSbwXrk13OeW/uHIHmAet36IgUY41xWkWFtR+zFDt5W+Nag
 kXEm3/TUu/WGS9WN8BVSCyI=
X-Google-Smtp-Source: ABdhPJylhnYKcukqRX+wuTikJC6+MBuNQUURgrDwertAeIKcw0iDCcXibzmNWV2hXtnz/YVglR8VFg==
X-Received: by 2002:a92:1f8d:: with SMTP id f13mr13512381ilf.77.1604981430333; 
 Mon, 09 Nov 2020 20:10:30 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:29 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/10] staging: rtl8723bs: clean up leading space
Date: Mon,  9 Nov 2020 22:10:08 -0600
Message-Id: <20201110041008.15847-10-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert spaces to tabs to fix coding style issues and clear checkpatch
warnings.

WARNING: please, no spaces at the start of a line

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 80 +++++++++----------
 .../staging/rtl8723bs/os_dep/osdep_service.c  |  2 +-
 2 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 294c4f406fcc..6c38eb239381 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -985,23 +985,23 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		    if (psecuritypriv->PMKIDIndex == 16)
 		        psecuritypriv->PMKIDIndex = 0;
 		}
-        } else if (pPMK->cmd == IW_PMKSA_REMOVE) {
-                DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
-                intReturn = true;
+	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
+		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
+		intReturn = true;
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
 			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-                                eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
-                                psecuritypriv->PMKIDList[j].bUsed = false;
+				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
+				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
 	        }
-        } else if (pPMK->cmd == IW_PMKSA_FLUSH) {
-            DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-            memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
-            psecuritypriv->PMKIDIndex = 0;
-            intReturn = true;
-        }
+	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
+		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
+		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		psecuritypriv->PMKIDIndex = 0;
+		intReturn = true;
+	}
 	return intReturn;
 }
 
@@ -2222,8 +2222,8 @@ static int rtw_wx_get_nick(struct net_device *dev,
 }
 
 static int rtw_wx_read32(struct net_device *dev,
-                            struct iw_request_info *info,
-                            union iwreq_data *wrqu, char *extra)
+			 struct iw_request_info *info,
+			 union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter;
 	struct iw_point *p;
@@ -2282,8 +2282,8 @@ static int rtw_wx_read32(struct net_device *dev,
 }
 
 static int rtw_wx_write32(struct net_device *dev,
-                            struct iw_request_info *info,
-                            union iwreq_data *wrqu, char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
@@ -2319,8 +2319,8 @@ static int rtw_wx_write32(struct net_device *dev,
 }
 
 static int rtw_wx_read_rf(struct net_device *dev,
-                            struct iw_request_info *info,
-                            union iwreq_data *wrqu, char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 path, addr, data32;
@@ -2340,8 +2340,8 @@ static int rtw_wx_read_rf(struct net_device *dev,
 }
 
 static int rtw_wx_write_rf(struct net_device *dev,
-                            struct iw_request_info *info,
-                            union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 path, addr, data32;
@@ -2375,8 +2375,8 @@ static int dummy(struct net_device *dev, struct iw_request_info *a,
 }
 
 static int rtw_wx_set_channel_plan(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+				   struct iw_request_info *info,
+				   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	u8 channel_plan_req = (u8)(*((int *)wrqu));
@@ -2425,8 +2425,8 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
 }
 
 static int rtw_get_ap_info(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
 	int wpa_ielen;
@@ -2523,8 +2523,8 @@ static int rtw_get_ap_info(struct net_device *dev,
 }
 
 static int rtw_set_pid(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+		       struct iw_request_info *info,
+		       union iwreq_data *wrqu, char *extra)
 {
 
 	int ret = 0;
@@ -2552,8 +2552,8 @@ static int rtw_set_pid(struct net_device *dev,
 }
 
 static int rtw_wps_start(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+			 struct iw_request_info *info,
+			 union iwreq_data *wrqu, char *extra)
 {
 
 	int ret = 0;
@@ -2582,8 +2582,8 @@ static int rtw_wps_start(struct net_device *dev,
 }
 
 static int rtw_p2p_set(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+		       struct iw_request_info *info,
+		       union iwreq_data *wrqu, char *extra)
 {
 
 	return 0;
@@ -2591,8 +2591,8 @@ static int rtw_p2p_set(struct net_device *dev,
 }
 
 static int rtw_p2p_get(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+		       struct iw_request_info *info,
+		       union iwreq_data *wrqu, char *extra)
 {
 
 	return 0;
@@ -2609,8 +2609,8 @@ static int rtw_p2p_get2(struct net_device *dev,
 }
 
 static int rtw_rereg_nd_name(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -2658,8 +2658,8 @@ static int rtw_rereg_nd_name(struct net_device *dev,
 }
 
 static int rtw_dbg_port(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+			struct iw_request_info *info,
+			union iwreq_data *wrqu, char *extra)
 {
 	u8 major_cmd, minor_cmd;
 	u16 arg;
@@ -3014,7 +3014,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							pregistrypriv->ldpc_cap = (u8)(extra_arg&0x33);
 						}
 					}
-                                        break;
+					break;
 				case 0x1a:
 					{
 						struct registry_priv *pregistrypriv = &padapter->registrypriv;
@@ -3029,7 +3029,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							pregistrypriv->stbc_cap = (u8)(extra_arg&0x33);
 						}
 					}
-                                        break;
+					break;
 				case 0x1b:
 					{
 						struct registry_priv *pregistrypriv = &padapter->registrypriv;
@@ -3065,7 +3065,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							}
 						}
 					}
-                                        break;
+					break;
 				case 0x1c: /* enable/disable driver control AMPDU Density for peer sta's rx */
 					{
 						if (arg == 0) {
@@ -4409,8 +4409,8 @@ static int rtw_wx_set_priv(struct net_device *dev,
 }
 
 static int rtw_pm_set(struct net_device *dev,
-                               struct iw_request_info *info,
-                               union iwreq_data *wrqu, char *extra)
+		      struct iw_request_info *info,
+		      union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
 	unsigned	mode = 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index f61ad9200960..3c71d2fafabf 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -272,7 +272,7 @@ void *rtw_cbuf_pop(struct rtw_cbuf *cbuf)
 	if (rtw_cbuf_empty(cbuf))
 		return NULL;
 
-        DBG_871X("%s on %u\n", __func__, cbuf->read);
+	DBG_871X("%s on %u\n", __func__, cbuf->read);
 	buf = cbuf->bufs[cbuf->read];
 	cbuf->read = (cbuf->read + 1) % cbuf->size;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
