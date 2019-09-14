Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1A9B2B20
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 13:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4B5220485;
	Sat, 14 Sep 2019 11:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cp0EBiKfUBDY; Sat, 14 Sep 2019 11:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE38420471;
	Sat, 14 Sep 2019 11:56:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E72EF1BF3BF
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 11:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E45602045F
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 11:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WLp216YQse7K for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 11:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B0976203E3
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 11:56:49 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id o184so5341904wme.3
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 04:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qQpCdDZTLmJVj8QmOn08OiO8kq3v3BOagLcGV6hpUg0=;
 b=ouOXyIwRLq94CyfPzMD7mQ4g9bU5gl4sgrwuUctXnXwIq+k6joclsol/8qcmn5m1WY
 p2DDxEVw9nXt08XZzu2Qcn3upCxN6KKV05Xs6XcoDCnpCAe5m8zOFhHFNIx0lmkBTSRG
 CueyPh/CITZi3PupmSq7ZPewi+Vvo26UIskjAwQb7nXzvGvEeITX0aTG48LoxKGZXUvy
 heAhs5r99oZgMT917Y42ynEA5J8VMN0j5qGRLdpln8KzjjDphPvxi+7RFwM56LoSNGxs
 J+ZrH0SE8MWxqLPKg7a7EgR2OmCg3RiBnc9tGu2o/f7pVvgHubp60UefqQWQIEcuArno
 forw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qQpCdDZTLmJVj8QmOn08OiO8kq3v3BOagLcGV6hpUg0=;
 b=fmReqW98N5mn60NBBvmozO+uXoG9l8O/AI3zy/vlwWbDcIzSC9l5ioJpxlNsYIdfgR
 T+o6qFO01Knpg4bMGuOpIhkc2cPNAuHeorEYRC66Py/95Fk/vWljO9KFbn1wCJS2Jd/1
 QjUfb0nA2BN2/5S/siMLTetjuV7d01A5ivtCOjjWXiEVkBiXsLEW0yNrM/9kw9oY1RyD
 cM59PpJH7aqB8CrsviYWIQX4K0s2iLYlNsPkQxSrHPP76+kIwfQm5aHeAKEfG7d03Myw
 G+2DgbITYI3WUl6xlzdVpkZWxur7Kwakucp7nuvph8a5EE6E4GOE+Fi85AOUZPI4o2T5
 zfhA==
X-Gm-Message-State: APjAAAXnn5b0CNZ399maJmqXzoyjsrtSX0KdpglhTXFxVsQ3oiW9q9pL
 Dl5hLJe5H/zQZT7spRN65tc=
X-Google-Smtp-Source: APXvYqzTMant0Z4zMA8ZBil0vmoz3PDqpks9wIq6Opv1wKkUCSoxVNsMDY/WSu5P9S8eMsy9jj7gQQ==
X-Received: by 2002:a7b:c758:: with SMTP id w24mr5165165wmk.148.1568462207717; 
 Sat, 14 Sep 2019 04:56:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id e20sm63466269wrc.34.2019.09.14.04.56.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 04:56:47 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove return statements from void
 functions
Date: Sat, 14 Sep 2019 13:56:34 +0200
Message-Id: <20190914115634.67874-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary return statements from void functions reported by
checkpatch.

WARNING: void function return statements are not generally useful

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c         |  5 -----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     | 10 ----------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c      |  1 -
 drivers/staging/rtl8723bs/core/rtw_security.c     |  1 -
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c    |  2 --
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  2 --
 drivers/staging/rtl8723bs/hal/odm_DIG.c           |  1 -
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c |  1 -
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c    |  2 --
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  1 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c      |  1 -
 11 files changed, 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 34adf5789c98..4000125054c3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -329,7 +329,6 @@ void rtw_generate_random_ibss(u8 *pibss)
 	pibss[3] = (u8)(curtime & 0xff) ;/* p[0]; */
 	pibss[4] = (u8)((curtime>>8) & 0xff) ;/* p[1]; */
 	pibss[5] = (u8)((curtime>>16) & 0xff) ;/* p[2]; */
-	return;
 }
 
 u8 *rtw_get_capability_from_ie(u8 *ie)
@@ -832,8 +831,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 exit:
 
 	spin_unlock_bh(&pmlmepriv->lock);
-
-	return;
 }
 
 
@@ -1840,8 +1837,6 @@ void rtw_mlme_reset_auto_scan_int(struct adapter *adapter)
 			mlme->auto_scan_int_ms = mlme->roam_scan_int_ms;
 	} else
 		mlme->auto_scan_int_ms = 0; /* disabled */
-
-	return;
 }
 
 static void rtw_auto_scan_handler(struct adapter *padapter)
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 2128886c9924..4f812cd19b31 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3086,8 +3086,6 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 	rtw_wep_encrypt(padapter, (u8 *)pmgntframe);
 	DBG_871X("%s\n", __func__);
 	dump_mgntframe(padapter, pmgntframe);
-
-	return;
 }
 
 
@@ -3405,8 +3403,6 @@ void issue_assocreq(struct adapter *padapter)
 		rtw_buf_update(&pmlmepriv->assoc_req, &pmlmepriv->assoc_req_len, (u8 *)pwlanhdr, pattrib->pktlen);
 	else
 		rtw_buf_free(&pmlmepriv->assoc_req, &pmlmepriv->assoc_req_len);
-
-	return;
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
@@ -5260,8 +5256,6 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	DBG_871X("report_del_sta_event: delete STA, mac_id =%d\n", mac_id);
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
-
-	return;
 }
 
 void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int cam_idx)
@@ -5306,8 +5300,6 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	DBG_871X("report_add_sta_event: add STA\n");
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
-
-	return;
 }
 
 /****************************************************************************
@@ -5869,8 +5861,6 @@ void link_timer_hdl(struct timer_list *t)
 		issue_assocreq(padapter);
 		set_link_timer(pmlmeext, REASSOC_TO);
 	}
-
-	return;
 }
 
 void addba_timer_hdl(struct timer_list *t)
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 4075de07e0a9..30137f0bd984 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -190,7 +190,6 @@ void rtw_ps_processor(struct adapter *padapter)
 	}
 exit:
 	pwrpriv->ps_processing = false;
-	return;
 }
 
 static void pwr_state_check_handler(struct timer_list *t)
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 57cfe06d7d73..5ffaf9bfa6e8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -309,7 +309,6 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 
 		WEP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
 	}
-	return;
 }
 
 /* 3		=====TKIP related ===== */
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index ea3ea2a6b314..5ab98f3e722e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1170,8 +1170,6 @@ void HT_info_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE)
 
 	pmlmeinfo->HT_info_enable = 1;
 	memcpy(&(pmlmeinfo->HT_info), pIE->data, pIE->Length);
-
-	return;
 }
 
 void HTOnAssocRsp(struct adapter *padapter)
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 3239d37087c8..1ca9063a269f 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -402,8 +402,6 @@ static void GetDeltaSwingTable_8723B(
 		*TemperatureUP_B   = (u8 *)DeltaSwingTableIdx_2GA_P_8188E;
 		*TemperatureDOWN_B = (u8 *)DeltaSwingTableIdx_2GA_N_8188E;
 	}
-
-	return;
 }
 
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 70d98c58ca97..40fe43c62c45 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -1074,7 +1074,6 @@ void odm_FAThresholdCheck(
 		dm_FA_thres[1] = 4000;
 		dm_FA_thres[2] = 5000;
 	}
-	return;
 }
 
 u8 odm_ForbiddenIGICheck(void *pDM_VOID, u8 DIG_Dynamic_MIN, u8 CurrentIGI)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index faeaf24fa833..87535a4c2e14 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3773,7 +3773,6 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 
 	process_c2h_event(padapter, &C2hEvent, tmpBuf);
 	/* c2h_handler_8723b(padapter,&C2hEvent); */
-	return;
 }
 
 void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 0f3301091258..e8577c084bbd 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -179,8 +179,6 @@ static void rtl8723bs_c2h_packet_handler(struct adapter *padapter,
 		kfree(tmp);
 
 	/* DBG_871X("-%s res(%d)\n", __func__, res); */
-
-	return;
 }
 
 static inline union recv_frame *try_alloc_recvframe(struct recv_priv *precvpriv,
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index f819abb756dc..67d56f3c0717 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1422,7 +1422,6 @@ void rtw_cfg80211_unlink_bss(struct adapter *padapter, struct wlan_network *pnet
 		DBG_8192C("%s(): cfg80211_unlink %s!! () ", __func__, select_network.Ssid.Ssid);
 		cfg80211_put_bss(padapter->rtw_wdev->wiphy, bss);
 	}
-	return;
 }
 
 void rtw_cfg80211_surveydone_event_callback(struct adapter *padapter)
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index d3784c44f6d0..12f683e2e0e2 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -281,7 +281,6 @@ static void sdio_dvobj_deinit(struct sdio_func *func)
 		sdio_deinit(dvobj);
 		devobj_deinit(dvobj);
 	}
-	return;
 }
 
 void rtw_set_hal_ops(struct adapter *padapter)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
