Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD477270EC9
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 17:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1DDF869A7;
	Sat, 19 Sep 2020 15:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hrLMliyYNzdz; Sat, 19 Sep 2020 15:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A98986915;
	Sat, 19 Sep 2020 15:12:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8511BF4D7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79C2E870FB
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-kcohW+R1o7 for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 15:12:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C486870EF
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 15:12:30 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id di5so4789500qvb.13
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9TBkjFRgkrcGIYdzMEeiMY0XW6ai13aboiZxTzrQwQQ=;
 b=Nx5lRmCofH5uOGITduJ/le8L+HDOMpkUYOW3rNeuuxf77wbaf4K4cgYHK9buUp8vsM
 +HZpFcNy5DITQFBu+SZUwBxdFsSqSixEauRiM1aPKmg64g1GJgVwZDLSZ3BrrXsea6co
 PUPK7EUNSXb7vrXQxUfwrRG4gCN2ru+297lpXKa0WIr2sJdEV6FxPCW6yqtad4q7O7T8
 wc8Fo4u2dW8rjeZnwIGRg7iV5oGWQNzG9WgoB+u4LX5dl+4pewMgUbEG4wfy449bQWt2
 ao72tNkzwBIttN3GRGLju/ZXPGixbS+E8rKuW0ujcQADlnDb2lXhzFxaXDpU8kcaP2L6
 VCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9TBkjFRgkrcGIYdzMEeiMY0XW6ai13aboiZxTzrQwQQ=;
 b=U5DEan4kiePwJceeo7izu9ZdOADb3bH2xRr1upb76MYKrv0VToqTed9PuopYI0am1b
 BzvCJNuAaRwGBYxASWr976Xa4LDiGSfARvbXgHAr4E2GUkS9wJGLTaaTbTDDt8tLFnIs
 wIQpPQSK6eWZomBH9NTLaM6VOMhnrtS1C7u40E1V5LyubWnluPtvgr2xBYNOOHSYEuAi
 auOvjmIhthrkOAnp4QHKZP76DjrM+mTQWQ2q+HBmvCJM7e+QvhAooO2lONmR+OuEQNap
 pC9Q9qXQAA/vlp6DRHo23X5e9JeKjoWqakPGF4yxiz/UlJ5e/RCFpYhQhPysaCzzGIN+
 ekbg==
X-Gm-Message-State: AOAM532Em3J/aEJboPvzHcfG+sJUysmkmuj90ReRZDwS15XiPgYwGa20
 TZ+jgp7pEGged6pSqLoW52s=
X-Google-Smtp-Source: ABdhPJwSprkg7ofmfsN8k56+Gi5fX6GNszOkTQPPu7iOv9Zgnh/6NO2t3W4viAHqbQBpnoWAF6g3ww==
X-Received: by 2002:a0c:8b02:: with SMTP id q2mr22573924qva.48.1600528349414; 
 Sat, 19 Sep 2020 08:12:29 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-206.092.073.pools.vodafone-ip.de. [92.73.54.206])
 by smtp.gmail.com with ESMTPSA id z3sm4513222qkj.0.2020.09.19.08.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 08:12:28 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8192u: clean up blank line style issues
Date: Sat, 19 Sep 2020 17:08:21 +0200
Message-Id: <20200919150823.16923-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing and remove unnecessary blank lines to clear checkpatch
issues.

CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please don't use multiple blank lines
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c          | 12 +------
 drivers/staging/rtl8192u/r8192U_hw.h          |  1 +
 drivers/staging/rtl8192u/r8192U_wx.c          | 31 ++-----------------
 drivers/staging/rtl8192u/r819xU_cmdpkt.c      |  1 -
 drivers/staging/rtl8192u/r819xU_firmware.c    |  6 ----
 .../staging/rtl8192u/r819xU_firmware_img.h    |  3 --
 drivers/staging/rtl8192u/r819xU_phy.c         | 28 -----------------
 drivers/staging/rtl8192u/r819xU_phyreg.h      |  3 --
 8 files changed, 4 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 6b301acb584e..bac402b40121 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -26,6 +26,7 @@ Major Change History:
 static u32 edca_setting_DL[HT_IOT_PEER_MAX] = {
 	0x5e4322, 0x5e4322, 0x5e4322, 0x604322, 0x00a44f, 0x5ea44f
 };
+
 static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
 	0x5e4322, 0x00a44f, 0x5e4322, 0x604322, 0x5ea44f, 0x5ea44f
 };
@@ -599,7 +600,6 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 					priv->rfa_txpowertrackingindex++;
 					priv->rfa_txpowertrackingindex_real++;
 					rtl8192_setBBreg(dev, rOFDM0_XATxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfa_txpowertrackingindex_real].txbbgain_value);
-
 				}
 			}
 			priv->cck_present_attenuation_difference
@@ -1268,7 +1268,6 @@ static void dm_InitializeTXPowerTracking_TSSI(struct net_device *dev)
 	priv->btxpower_tracking = true;
 	priv->txpower_count       = 0;
 	priv->btxpower_trackingInit = false;
-
 }
 
 static void dm_InitializeTXPowerTracking_ThermalMeter(struct net_device *dev)
@@ -1773,7 +1772,6 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 		/* 1.5 Higher EDCCA. */
 		/*PlatformEFIOWrite4Byte(pAdapter, rOFDM0_ECCAThreshold, 0x325);*/
 		return;
-
 	}
 
 	/* 2. When RSSI increase, We have to judge if it is larger than a threshold
@@ -1836,7 +1834,6 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 
 		/* 2.5 DIG On. */
 		rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x1);	/*  Only clear byte 1 and rewrite. */
-
 	}
 
 	dm_ctrl_initgain_byrssi_highpwr(dev);
@@ -2157,7 +2154,6 @@ static void dm_check_edca_turbo(
 				write_nic_dword(dev, EDCAPARA_BE, edca_setting_UL[pHTInfo->IOTPeer]);
 				priv->bis_cur_rdlstate = false;
 			}
-
 		}
 
 		priv->bcurrent_turbo_EDCA = true;
@@ -2191,7 +2187,6 @@ static void dm_check_edca_turbo(
 
 			write_nic_dword(dev, EDCAPARA_BE, u4bAcParam);
 
-
 			/* Check ACM bit.
 			 * If it is set, immediately set ACM control bit to downgrading AC for passing WMM testplan. Annie, 2005-12-13.
 			 */
@@ -2296,7 +2291,6 @@ static	void	dm_check_pbc_gpio(struct net_device *dev)
 		RT_TRACE(COMP_IO, "CheckPbcGPIO - PBC is pressed\n");
 		priv->bpbc_pressed = true;
 	}
-
 }
 
 /*-----------------------------------------------------------------------------
@@ -2495,7 +2489,6 @@ static void dm_rxpath_sel_byrssi(struct net_device *dev)
 						cck_rx_ver2_min_index = i;
 					}
 				}
-
 			}
 		}
 	}
@@ -2715,7 +2708,6 @@ static void dm_EndSWFsync(struct net_device *dev)
 
 	priv->ContinueDiffCount = 0;
 	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c52cd);
-
 }
 
 static void dm_StartSWFsync(struct net_device *dev)
@@ -2751,7 +2743,6 @@ static void dm_StartSWFsync(struct net_device *dev)
 	add_timer(&priv->fsync_timer);
 
 	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c12cd);
-
 }
 
 static void dm_EndHWFsync(struct net_device *dev)
@@ -2759,7 +2750,6 @@ static void dm_EndHWFsync(struct net_device *dev)
 	RT_TRACE(COMP_HALDM, "%s\n", __func__);
 	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c52cd);
 	write_nic_byte(dev, 0xc3b, 0x49);
-
 }
 
 void dm_check_fsync(struct net_device *dev)
diff --git a/drivers/staging/rtl8192u/r8192U_hw.h b/drivers/staging/rtl8192u/r8192U_hw.h
index 95a2d2ee3c65..8d3a592f1c35 100644
--- a/drivers/staging/rtl8192u/r8192U_hw.h
+++ b/drivers/staging/rtl8192u/r8192U_hw.h
@@ -239,6 +239,7 @@ enum _RTL8192Usb_HW {
 #define EPROM_W_BIT  BIT(1)
 #define EPROM_R_BIT  BIT(0)
 };
+
 //----------------------------------------------------------------------------
 //       818xB AnaParm & AnaParm2 Register
 //----------------------------------------------------------------------------
diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 100532598781..4ac0baf8be83 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -138,7 +138,6 @@ static int r8192_wx_force_reset(struct net_device *dev,
 	priv->force_reset = *extra;
 	mutex_unlock(&priv->wx_mutex);
 	return 0;
-
 }
 
 static int r8192_wx_set_rawtx(struct net_device *dev,
@@ -155,7 +154,6 @@ static int r8192_wx_set_rawtx(struct net_device *dev,
 	mutex_unlock(&priv->wx_mutex);
 
 	return ret;
-
 }
 
 static int r8192_wx_set_crcmon(struct net_device *dev,
@@ -218,6 +216,7 @@ struct  iw_range_with_scan_capa {
 	/* Scan capabilities */
 	__u8            scan_capa;
 };
+
 static int rtl8180_wx_get_range(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
@@ -294,7 +293,6 @@ static int rtl8180_wx_get_range(struct net_device *dev,
 	/* range->max_r_time; */	/* Maximal retry lifetime */
 
 	for (i = 0, val = 0; i < 14; i++) {
-
 		/* Include only legal frequencies for some countries */
 		if ((GET_DOT11D_INFO(priv->ieee80211)->channel_map)[i+1]) {
 			range->freq[val].i = i + 1;
@@ -350,11 +348,9 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	return ret;
 }
 
-
 static int r8192_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			     union iwreq_data *wrqu, char *b)
 {
-
 	int ret;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -444,7 +440,6 @@ static int r8192_wx_set_frag(struct net_device *dev,
 	return 0;
 }
 
-
 static int r8192_wx_get_frag(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
@@ -458,13 +453,11 @@ static int r8192_wx_get_frag(struct net_device *dev,
 	return 0;
 }
 
-
 static int r8192_wx_set_wap(struct net_device *dev,
 			 struct iw_request_info *info,
 			 union iwreq_data *awrq,
 			 char *extra)
 {
-
 	int ret;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	/* struct sockaddr *temp = (struct sockaddr *)awrq; */
@@ -475,7 +468,6 @@ static int r8192_wx_set_wap(struct net_device *dev,
 	mutex_unlock(&priv->wx_mutex);
 
 	return ret;
-
 }
 
 static int r8192_wx_get_wap(struct net_device *dev,
@@ -522,11 +514,8 @@ static int r8192_wx_set_enc(struct net_device *dev,
 
 	mutex_unlock(&priv->wx_mutex);
 
-
-
 	/* sometimes, the length is zero while we do not type key value */
 	if (wrqu->encoding.length != 0) {
-
 		for (i = 0; i < 4; i++) {
 			hwkey[i] |=  key[4*i+0]&mask;
 			if (i == 1 && (4*i+1) == wrqu->encoding.length)
@@ -572,7 +561,6 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				zero_addr[key_idx],
 				0,                      /* DefaultKey */
 				hwkey);                 /* KeyContent */
-
 		}
 
 		else if (wrqu->encoding.length == 0xd) {
@@ -586,21 +574,17 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				zero_addr[key_idx],
 				0,                      /* DefaultKey */
 				hwkey);                 /* KeyContent */
-
 		} else {
 			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");
 		}
-
 	}
 
 	return ret;
 }
 
-
 static int r8192_wx_set_scan_type(struct net_device *dev, struct iw_request_info *aa,
 					union iwreq_data *wrqu, char *p)
 {
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	int *parms = (int *)p;
 	int mode = parms[0];
@@ -610,8 +594,6 @@ static int r8192_wx_set_scan_type(struct net_device *dev, struct iw_request_info
 	return 1;
 }
 
-
-
 static int r8192_wx_set_retry(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
@@ -663,7 +645,6 @@ static int r8192_wx_get_retry(struct net_device *dev,
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-
 	wrqu->retry.disabled = 0; /* can't be disabled */
 
 	if ((wrqu->retry.flags & IW_RETRY_TYPE) ==
@@ -697,7 +678,6 @@ static int r8192_wx_set_sens(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
 {
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	short err = 0;
 
@@ -726,7 +706,6 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	struct ieee80211_device *ieee = priv->ieee80211;
 
-
 	mutex_lock(&priv->wx_mutex);
 	ret = ieee80211_wx_set_encode_ext(priv->ieee80211, info, wrqu, extra);
 
@@ -758,7 +737,6 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 		memcpy((u8 *)key, ext->key, 16); /* we only get 16 bytes key.why? WB 2008.7.1 */
 
 		if ((alg & KEY_TYPE_WEP40) && (ieee->auth_mode != 2)) {
-
 			setKey(dev,
 					idx,	/* EntryNao */
 					idx,	/* KeyIndex */
@@ -784,16 +762,14 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 					0,			/* DefaultKey */
 					key);			/* KeyContent */
 		}
-
-
 	}
 
 end_hw_sec:
 
 	mutex_unlock(&priv->wx_mutex);
 	return ret;
-
 }
+
 static int r8192_wx_set_auth(struct net_device *dev,
 					struct iw_request_info *info,
 					union iwreq_data *data, char *extra)
@@ -811,7 +787,6 @@ static int r8192_wx_set_mlme(struct net_device *dev,
 					struct iw_request_info *info,
 					union iwreq_data *wrqu, char *extra)
 {
-
 	int ret = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -833,8 +808,6 @@ static int r8192_wx_set_gen_ie(struct net_device *dev,
 	ret = ieee80211_wx_set_gen_ie(priv->ieee80211, extra, data->data.length);
 	mutex_unlock(&priv->wx_mutex);
 	return ret;
-
-
 }
 
 static int dummy(struct net_device *dev, struct iw_request_info *a,
diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index bc98cdaf61ec..c58c9cac2599 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -336,7 +336,6 @@ static void cmpk_count_tx_status(struct net_device *dev,
 	priv->stats.txretrycount	+= pstx_status->txretry;
 	priv->stats.txfeedbackretry	+= pstx_status->txretry;
 
-
 	priv->stats.txmulticast		+= pstx_status->txmcok;
 	priv->stats.txbroadcast		+= pstx_status->txbcok;
 	priv->stats.txunicast		+= pstx_status->txucok;
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index dd81d210bd49..4f8629e47e82 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -54,11 +54,9 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 		if ((buffer_len - frag_offset) > frag_threshold) {
 			frag_length = frag_threshold;
 			bLastIniPkt = 0;
-
 		} else {
 			frag_length = buffer_len - frag_offset;
 			bLastIniPkt = 1;
-
 		}
 
 		/* Allocate skb buffer to contain firmware info and tx descriptor info
@@ -104,7 +102,6 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 	} while (frag_offset < buffer_len);
 
 	return rt_status;
-
 }
 
 /*
@@ -172,7 +169,6 @@ static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 
 static bool CPUcheck_firmware_ready(struct net_device *dev)
 {
-
 	bool		rt_status = true;
 	int		check_time = 200000;
 	u32		CPU_status = 0;
@@ -197,7 +193,6 @@ static bool CPUcheck_firmware_ready(struct net_device *dev)
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
 	rt_status = false;
 	return rt_status;
-
 }
 
 bool init_firmware(struct net_device *dev)
@@ -338,7 +333,6 @@ bool init_firmware(struct net_device *dev)
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
 	rt_status = false;
 	return rt_status;
-
 }
 
 MODULE_FIRMWARE("RTL8192U/boot.img");
diff --git a/drivers/staging/rtl8192u/r819xU_firmware_img.h b/drivers/staging/rtl8192u/r819xU_firmware_img.h
index 355da9157be1..61585a72465e 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware_img.h
+++ b/drivers/staging/rtl8192u/r819xU_firmware_img.h
@@ -13,7 +13,6 @@
 #define RadioD_ArrayLength 1
 #define PHY_REGArrayLength 1
 
-
 extern u32 Rtl8192UsbPHY_REGArray[];
 extern u32 Rtl8192UsbPHY_REG_1T2RArray[];
 extern u32 Rtl8192UsbRadioA_Array[];
@@ -24,6 +23,4 @@ extern u32 Rtl8192UsbMACPHY_Array[];
 extern u32 Rtl8192UsbMACPHY_Array_PG[];
 extern u32 Rtl8192UsbAGCTAB_Array[];
 
-
-
 #endif
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 37b99cf4b35f..aa71ea97a179 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -67,7 +67,6 @@ u8 rtl8192_phy_CheckIsLegalRFPath(struct net_device *dev, u32 e_rfpath)
 void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bitmask,
 		      u32 data)
 {
-
 	u32 reg, bitshift;
 
 	if (bitmask != bMaskDWord) {
@@ -169,14 +168,12 @@ static u32 rtl8192_phy_RFSerialRead(struct net_device *dev,
 	rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x0);
 	rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x1);
 
-
 	/* TODO: we should not delay such a long time. Ask for help from SD3 */
 	usleep_range(1000, 1000);
 
 	ret = rtl8192_QueryBBReg(dev, pPhyReg->rfLSSIReadBack,
 				 bLSSIReadBackData);
 
-
 	/* Switch back to Reg_Mode0 */
 	if (priv->rf_chip == RF_8256) {
 		priv->RfReg0Value[e_rfpath] &= 0xebf;
@@ -219,7 +216,6 @@ static void rtl8192_phy_RFSerialWrite(struct net_device *dev,
 
 	offset &= 0x3f;
 	if (priv->rf_chip == RF_8256) {
-
 		if (offset >= 31) {
 			priv->RfReg0Value[e_rfpath] |= 0x140;
 			rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset,
@@ -248,7 +244,6 @@ static void rtl8192_phy_RFSerialWrite(struct net_device *dev,
 	/* Write operation */
 	rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
 
-
 	if (offset == 0x0)
 		priv->RfReg0Value[e_rfpath] = data;
 
@@ -330,7 +325,6 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev,
 	u32 reg, bitshift;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-
 	if (!rtl8192_phy_CheckIsLegalRFPath(dev, e_rfpath))
 		return 0;
 	if (priv->Rf_Mode == RF_OP_By_FW) {
@@ -342,7 +336,6 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev,
 	bitshift =  ffs(bitmask) - 1;
 	reg = (reg & bitmask) >> bitshift;
 	return reg;
-
 }
 
 /******************************************************************************
@@ -700,7 +693,6 @@ u8 rtl8192_phy_checkBBAndRF(struct net_device *dev, enum hw90_block_e CheckBlock
 	WriteAddr[HW90_BLOCK_RF] = 0x3;
 	RT_TRACE(COMP_PHY, "%s(), CheckBlock: %d\n", __func__, CheckBlock);
 	for (i = 0; i < CheckTimes; i++) {
-
 		/* Write data to register and readback */
 		switch (CheckBlock) {
 		case HW90_BLOCK_MAC:
@@ -735,7 +727,6 @@ u8 rtl8192_phy_checkBBAndRF(struct net_device *dev, enum hw90_block_e CheckBlock
 			break;
 		}
 
-
 		/* Check whether readback data is correct */
 		if (reg != WriteData[i]) {
 			RT_TRACE((COMP_PHY|COMP_ERR),
@@ -844,7 +835,6 @@ void rtl8192_BBConfig(struct net_device *dev)
 	rtl8192_BB_Config_ParaFile(dev);
 }
 
-
 /******************************************************************************
  * function:  This function obtains the initialization value of Tx power Level
  *            offset
@@ -961,13 +951,11 @@ void rtl8192_phy_updateInitGain(struct net_device *dev)
 u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 				      enum rf90_radio_path_e	e_rfpath)
 {
-
 	int i;
 
 	switch (e_rfpath) {
 	case RF90_PATH_A:
 		for (i = 0; i < RadioA_ArrayLength; i = i+2) {
-
 			if (Rtl8192UsbRadioA_Array[i] == 0xfe) {
 				mdelay(100);
 				continue;
@@ -977,12 +965,10 @@ u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 					     bMask12Bits,
 					     Rtl8192UsbRadioA_Array[i+1]);
 			mdelay(1);
-
 		}
 		break;
 	case RF90_PATH_B:
 		for (i = 0; i < RadioB_ArrayLength; i = i+2) {
-
 			if (Rtl8192UsbRadioB_Array[i] == 0xfe) {
 				mdelay(100);
 				continue;
@@ -992,12 +978,10 @@ u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 					     bMask12Bits,
 					     Rtl8192UsbRadioB_Array[i+1]);
 			mdelay(1);
-
 		}
 		break;
 	case RF90_PATH_C:
 		for (i = 0; i < RadioC_ArrayLength; i = i+2) {
-
 			if (Rtl8192UsbRadioC_Array[i] == 0xfe) {
 				mdelay(100);
 				continue;
@@ -1007,12 +991,10 @@ u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 					     bMask12Bits,
 					     Rtl8192UsbRadioC_Array[i+1]);
 			mdelay(1);
-
 		}
 		break;
 	case RF90_PATH_D:
 		for (i = 0; i < RadioD_ArrayLength; i = i+2) {
-
 			if (Rtl8192UsbRadioD_Array[i] == 0xfe) {
 				mdelay(100);
 				continue;
@@ -1022,7 +1004,6 @@ u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 					     bMask12Bits,
 					     Rtl8192UsbRadioD_Array[i+1]);
 			mdelay(1);
-
 		}
 		break;
 	default:
@@ -1030,7 +1011,6 @@ u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device *dev,
 	}
 
 	return 0;
-
 }
 
 /******************************************************************************
@@ -1225,7 +1205,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 	}
 	/* FIXME: need to check whether channel is legal or not here */
 
-
 	/* <1> Fill up pre common command. */
 	PreCommonCmdCnt = 0;
 	rtl8192_phy_SetSwChnlCmdArray(PreCommonCmd, PreCommonCmdCnt++,
@@ -1286,7 +1265,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 		return true;
 	}
 
-
 	do {
 		switch (*stage) {
 		case 0:
@@ -1378,13 +1356,11 @@ static void rtl8192_phy_FinishSwChnlNow(struct net_device *dev, u8 channel)
  *****************************************************************************/
 void rtl8192_SwChnl_WorkItem(struct net_device *dev)
 {
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
 	RT_TRACE(COMP_CH, "==> SwChnlCallback819xUsbWorkItem(), chan:%d\n",
 		 priv->chan);
 
-
 	rtl8192_phy_FinishSwChnlNow(dev, priv->chan);
 
 	RT_TRACE(COMP_CH, "<== SwChnlCallback819xUsbWorkItem()\n");
@@ -1459,14 +1435,12 @@ u8 rtl8192_phy_SwChnl(struct net_device *dev, u8 channel)
  *****************************************************************************/
 void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 {
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u8 regBwOpMode;
 
 	RT_TRACE(COMP_SWBW, "%s()  Switch to %s bandwidth\n", __func__,
 		 priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20?"20MHz":"40MHz");
 
-
 	if (priv->rf_chip == RF_PSEUDO_11N) {
 		priv->SetBWModeInProgress = false;
 		return;
@@ -1563,7 +1537,6 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 			 "SetChannelBandwidth819xUsb(): unknown Bandwidth: %#X\n",
 			 priv->CurrentChannelBW);
 		break;
-
 	}
 	/* Skip over setting of J-mode in BB register here.
 	 * Default value is "None J mode".
@@ -1624,7 +1597,6 @@ void rtl8192_SetBWMode(struct net_device *dev,
 		priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	rtl8192_SetBWModeWorkItem(dev);
-
 }
 
 void InitialGain819xUsb(struct net_device *dev,	u8 Operation)
diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
index dc9ddf100eab..c9669821b278 100644
--- a/drivers/staging/rtl8192u/r819xU_phyreg.h
+++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
@@ -2,7 +2,6 @@
 #ifndef _R819XU_PHYREG_H
 #define _R819XU_PHYREG_H
 
-
 #define   RF_DATA				0x1d4					/* FW will write RF data in the register.*/
 
 /* page8 */
@@ -81,7 +80,6 @@
 #define rOFDM0_XDTxIQImbalance		0xc98
 #define rOFDM0_XDTxAFE				0xc9c
 
-
 /* page d */
 #define rOFDM1_LSTF				0xd00
 #define rOFDM1_TRxPathEnable		0xd04
@@ -95,7 +93,6 @@
 #define rTxAGC_Mcs11_Mcs08			0xe18
 #define rTxAGC_Mcs15_Mcs12			0xe1c
 
-
 /* RF
  * Zebra1
  */
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
