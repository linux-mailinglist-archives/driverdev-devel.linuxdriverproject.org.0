Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525C1418C5
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 18:34:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B182203FF;
	Sat, 18 Jan 2020 17:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 73g3sbXJudJC; Sat, 18 Jan 2020 17:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F11020365;
	Sat, 18 Jan 2020 17:34:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8BE1BF5F8
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5170C8487B
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iqes2WtirsKp for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 17:34:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C847084837
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 17:34:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g17so25557704wro.2
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 09:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oIUunj3lZeW9DjSCierphxgqyv71kcpV8XQp6PzbUkI=;
 b=B7FdsReiuWn850EwaK573/u1rL3IpCDMVE+/bT6UgSnaepzjfZKDzRnecVHXhhqcuj
 VreOpnXcjPHTo6ZcAKQiP6ljuedLZwyU0Ltol1zp9UBCh35f7LqNcruZ4TRPPc0JxKLf
 JcZerU97k8aFr6oqveEHwYlIxuPVKqwQbRbIEb/5RA1za07mmvskd83IWh/CIX726HRw
 JbiafZg/+1P3Y5QPo1bkkscxFDBMsit4qyWJkqV42dpGPJu0s9UrV75uB94LhGb5GUTC
 nlq0nHshQIWYgpv0cAB/yAEdbboVwJJfvx/7hn4plbDfrrjVzKQN3h2H4MY8rA2nQoFK
 pVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oIUunj3lZeW9DjSCierphxgqyv71kcpV8XQp6PzbUkI=;
 b=QcVOjN2TysVwKtOTTPzFxj2060vfaR9s8XGV6ziQt5N54CPJi7gA+4SITbQT4WeH/+
 7T1TpiBhKK91+JYsTw1Nvotp0iw1ykyW1tCSC4f/rmSmKSwa2BXl9arqrvHMpHfGOObN
 KeJ02Y1hzPgaYSQyrYa0ziypCSiamwQQM/WsjhAcwndn5PBYYuifJHlNHGoHaZ13W2WT
 uC2c95ggzMFe0i0petzLFD3CbaSouRNWFroLtJ5eFZtOfND28jUG4c/YNwbeoCb1GL6h
 ixQlnfRKd4XMJJ4+yu0/dtFvrHQXdeaXPgPVXLZUXClSF82JS01WckOEATFsjef9yIC8
 8Utw==
X-Gm-Message-State: APjAAAUoL9oB8e8avFcfnc8lLsUr+NzVvtatpfZUEv35Ixz6/QOzLapw
 5bKT5M9irVgSdHhYQuCNhCU=
X-Google-Smtp-Source: APXvYqwKT6g+h0QIfukhXjKP7KvryX8F3RrGgLU+nifSrE7UOS5vHwjQtyCGfXe8bhTc7HE0RcBmrg==
X-Received: by 2002:a05:6000:118e:: with SMTP id
 g14mr9935960wrx.39.1579368864006; 
 Sat, 18 Jan 2020 09:34:24 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id q11sm39884347wrp.24.2020.01.18.09.34.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 09:34:23 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8188eu: remove else after break or return
Date: Sat, 18 Jan 2020 18:33:41 +0100
Message-Id: <20200118173343.32405-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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

Remove unnecessary else after break or return to improve readability
and clear checkpatch warnings.

WARNING: else is not generally useful after a break or return

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c    |  9 ++--
 .../staging/rtl8188eu/core/rtw_ieee80211.c    | 18 +++----
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 49 +++++++++----------
 .../staging/rtl8188eu/core/rtw_wlan_util.c    |  8 ++-
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  4 +-
 drivers/staging/rtl8188eu/hal/odm.c           |  7 +--
 drivers/staging/rtl8188eu/hal/phy.c           | 41 ++++++++--------
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    |  6 +--
 8 files changed, 65 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 0b86ae8338d9..c525682d0edf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -497,8 +497,8 @@ static bool hal_EfuseFixHeaderProcess(struct adapter *pAdapter, u8 efuseType, st
 
 			if (!PgWriteSuccess)
 				return false;
-			else
-				efuse_addr = Efuse_GetCurrentSize(pAdapter);
+
+			efuse_addr = Efuse_GetCurrentSize(pAdapter);
 		} else {
 			efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
 		}
@@ -713,10 +713,9 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 				if (ALL_WORDS_DISABLED(efuse_data)) {
 					ret = false;
 					break;
-				} else {
-					curPkt.offset = ((cur_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
-					curPkt.word_en = efuse_data & 0x0F;
 				}
+				curPkt.offset = ((cur_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
+				curPkt.word_en = efuse_data & 0x0F;
 			} else {
 				cur_header  =  efuse_data;
 				curPkt.offset = (cur_header >> 4) & 0x0F;
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 1344d369e05d..29f615443e8f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -157,11 +157,10 @@ u8 *rtw_get_ie(u8 *pbuf, int index, uint *len, int limit)
 		if (*p == index) {
 			*len = *(p + 1);
 			return p;
-		} else {
-			tmp = *(p + 1);
-			p += (tmp + 2);
-			i += (tmp + 2);
 		}
+		tmp = *(p + 1);
+		p += (tmp + 2);
+		i += (tmp + 2);
 		if (i >= limit)
 			break;
 	}
@@ -295,10 +294,9 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 				goto check_next_ie;
 			*wpa_ie_len = *(pbuf + 1);
 			return pbuf;
-		} else {
-			*wpa_ie_len = 0;
-			return NULL;
 		}
+		*wpa_ie_len = 0;
+		return NULL;
 
 check_next_ie:
 		limit_new = limit - (pbuf - pie) - 2 - len;
@@ -596,9 +594,8 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
 			cnt += in_ie[cnt + 1] + 2;
 
 			break;
-		} else {
-			cnt += in_ie[cnt + 1] + 2; /* goto next */
 		}
+		cnt += in_ie[cnt + 1] + 2; /* goto next */
 	}
 	return wpsie_ptr;
 }
@@ -642,9 +639,8 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_att
 			if (len_attr)
 				*len_attr = attr_len;
 			break;
-		} else {
-			attr_ptr += attr_len; /* goto next */
 		}
+		attr_ptr += attr_len; /* goto next */
 	}
 	return target_attr_ptr;
 }
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 16cb5b31a31d..36841d20c3c1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1865,6 +1865,7 @@ unsigned int send_beacon(struct adapter *padapter)
 	int issue = 0;
 	int poll = 0;
 	unsigned long start = jiffies;
+	u32 passing_time;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_BCN_VALID, NULL);
 	do {
@@ -1883,15 +1884,14 @@ unsigned int send_beacon(struct adapter *padapter)
 		DBG_88E("%s fail! %u ms\n", __func__,
 			jiffies_to_msecs(jiffies - start));
 		return _FAIL;
-	} else {
-		u32 passing_time = jiffies_to_msecs(jiffies - start);
-
-		if (passing_time > 100 || issue > 3)
-			DBG_88E("%s success, issue:%d, poll:%d, %u ms\n",
-				__func__, issue, poll,
-				jiffies_to_msecs(jiffies - start));
-		return _SUCCESS;
 	}
+	passing_time = jiffies_to_msecs(jiffies - start);
+
+	if (passing_time > 100 || issue > 3)
+		DBG_88E("%s success, issue:%d, poll:%d, %u ms\n",
+			__func__, issue, poll,
+			jiffies_to_msecs(jiffies - start));
+	return _SUCCESS;
 }
 
 /****************************************************************************
@@ -2864,10 +2864,9 @@ static unsigned int OnAuthClient(struct adapter *padapter,
 			set_link_timer(pmlmeext, REAUTH_TO);
 
 			return _SUCCESS;
-		} else {
-			/*  open system */
-			go2asoc = 1;
 		}
+		/*  open system */
+		go2asoc = 1;
 	} else if (seq == 4) {
 		if (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared)
 			go2asoc = 1;
@@ -3453,14 +3452,13 @@ static unsigned int OnDeAuth(struct adapter *padapter,
 		}
 
 		return _SUCCESS;
-	} else
+	}
 #endif
-	{
-		DBG_88E_LEVEL(_drv_always_, "sta recv deauth reason code(%d) sta:%pM\n",
-			      reason, GetAddr3Ptr(pframe));
+	DBG_88E_LEVEL(_drv_always_, "sta recv deauth reason code(%d) sta:%pM\n",
+		      reason, GetAddr3Ptr(pframe));
+
+	receive_disconnect(padapter, GetAddr3Ptr(pframe), reason);
 
-		receive_disconnect(padapter, GetAddr3Ptr(pframe), reason);
-	}
 	pmlmepriv->LinkDetectInfo.bBusyTraffic = false;
 	return _SUCCESS;
 }
@@ -3507,14 +3505,13 @@ static unsigned int OnDisassoc(struct adapter *padapter,
 		}
 
 		return _SUCCESS;
-	} else
+	}
 #endif
-	{
-		DBG_88E_LEVEL(_drv_always_, "ap recv disassoc reason code(%d) sta:%pM\n",
-			      reason, GetAddr3Ptr(pframe));
+	DBG_88E_LEVEL(_drv_always_, "ap recv disassoc reason code(%d) sta:%pM\n",
+		      reason, GetAddr3Ptr(pframe));
+
+	receive_disconnect(padapter, GetAddr3Ptr(pframe), reason);
 
-		receive_disconnect(padapter, GetAddr3Ptr(pframe), reason);
-	}
 	pmlmepriv->LinkDetectInfo.bBusyTraffic = false;
 	return _SUCCESS;
 }
@@ -5277,10 +5274,10 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 			write_cam(padapter, cam_id, ctrl, pparm->addr, pparm->key);
 
 			return H2C_SUCCESS_RSP;
-		} else {
-			DBG_88E("r871x_set_stakey_hdl(): sta has been free\n");
-			return H2C_REJECTED;
 		}
+
+		DBG_88E("r871x_set_stakey_hdl(): sta has been free\n");
+		return H2C_REJECTED;
 	}
 
 	/* below for sta mode */
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index af8a79ce8736..6df873e4c2ed 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1247,9 +1247,8 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 				if (ralink_vendor_flag) {
 					DBG_88E("link to Tenda W311R AP\n");
 					return HT_IOT_PEER_TENDA;
-				} else {
-					DBG_88E("Capture EPIGRAM_OUI\n");
 				}
+				DBG_88E("Capture EPIGRAM_OUI\n");
 			} else {
 				break;
 			}
@@ -1266,10 +1265,9 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 	} else if (ralink_vendor_flag && epigram_vendor_flag) {
 		DBG_88E("link to Tenda W311R AP\n");
 		return HT_IOT_PEER_TENDA;
-	} else {
-		DBG_88E("link to new AP\n");
-		return HT_IOT_PEER_UNKNOWN;
 	}
+	DBG_88E("link to new AP\n");
+	return HT_IOT_PEER_UNKNOWN;
 }
 
 void update_IOT_info(struct adapter *padapter)
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index c37591657bac..258531bc1408 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1022,10 +1022,10 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 			ClearMFrag(mem_start);
 
 			break;
-		} else {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
 		}
 
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
+
 		addr = (size_t)(pframe);
 
 		mem_start = (unsigned char *)round_up(addr, 4) + hw_hdr_offset;
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 4e2f6cb55a75..7489491f5aaa 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -967,10 +967,11 @@ void ODM_TXPowerTrackingCheck(struct odm_dm_struct *pDM_Odm)
 
 		pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
 		return;
-	} else {
-		rtl88eu_dm_txpower_tracking_callback_thermalmeter(Adapter);
-		pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
 	}
+
+	rtl88eu_dm_txpower_tracking_callback_thermalmeter(Adapter);
+	pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
+
 }
 
 /* 3============================================================ */
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 51c40abfafaa..afaf9e55195a 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -923,27 +923,27 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 			}
 		}
 		return result;
-	} else {
-		if (!(sim_bitmap & 0x03)) {		   /* path A TX OK */
-			for (i = 0; i < 2; i++)
-				resulta[3][i] = resulta[c1][i];
-		}
-		if (!(sim_bitmap & 0x0c)) {		   /* path A RX OK */
-			for (i = 2; i < 4; i++)
-				resulta[3][i] = resulta[c1][i];
-		}
+	}
 
-		if (!(sim_bitmap & 0x30)) { /* path B TX OK */
-			for (i = 4; i < 6; i++)
-				resulta[3][i] = resulta[c1][i];
-		}
+	if (!(sim_bitmap & 0x03)) {		   /* path A TX OK */
+		for (i = 0; i < 2; i++)
+			resulta[3][i] = resulta[c1][i];
+	}
+	if (!(sim_bitmap & 0x0c)) {		   /* path A RX OK */
+		for (i = 2; i < 4; i++)
+			resulta[3][i] = resulta[c1][i];
+	}
 
-		if (!(sim_bitmap & 0xc0)) { /* path B RX OK */
-			for (i = 6; i < 8; i++)
-				resulta[3][i] = resulta[c1][i];
-		}
-		return false;
+	if (!(sim_bitmap & 0x30)) { /* path B TX OK */
+		for (i = 4; i < 6; i++)
+			resulta[3][i] = resulta[c1][i];
+	}
+
+	if (!(sim_bitmap & 0xc0)) { /* path B RX OK */
+		for (i = 6; i < 8; i++)
+			resulta[3][i] = resulta[c1][i];
 	}
+	return false;
 }
 
 static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
@@ -1053,10 +1053,9 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 				result[t][3] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2,
 								 bMaskDWord)&0x3FF0000)>>16;
 			break;
-		} else {
-			ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
-				     ("Path A Rx IQK Fail!!\n"));
 		}
+		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
+			     ("Path A Rx IQK Fail!!\n"));
 	}
 
 	if (path_a_ok == 0x00) {
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 47f4cc6a19a9..9b6ea86d1dcf 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -596,9 +596,8 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 					set_fwstate(&padapter->mlmepriv, WIFI_UNDER_WPS);
 					cnt += buf[cnt+1]+2;
 					break;
-				} else {
-					cnt += buf[cnt+1]+2; /* goto next */
 				}
+				cnt += buf[cnt+1]+2; /* goto next */
 			}
 		}
 	}
@@ -773,8 +772,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		DBG_88E("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
 		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
 			return ret;
-		else
-			ret = true;
+		ret = true;
 		blInserted = false;
 
 		/* overwrite PMKID */
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
