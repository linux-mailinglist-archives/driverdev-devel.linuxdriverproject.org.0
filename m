Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AFA2A7633
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16BB28704E;
	Thu,  5 Nov 2020 03:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiKM2WL611Xk; Thu,  5 Nov 2020 03:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9D1A87045;
	Thu,  5 Nov 2020 03:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 368581BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3353785CB4
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ptdhsknOhFdc for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3370D85C90
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:13 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id u21so370023iol.12
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fs58mxdUQxMlT6likcL4L12mYDuE4+TkHpkUpTJpzac=;
 b=Enwv2Szs4tgE1zyJzcDSj1a5SWBcAf4Iol79+4XzPxNUuD2uYNnbqOuAhZHaQy9dzK
 tyTFZHNDkUt31zyXYS8Ug5zSK5n9bJNpuzOiSdgcsnc89/jC7wOx/aShznUZ1Ee7KFkr
 8aV6pljiuAfu5eCsCIrSEuoe68DMBqsU6YEJJvPPI/a9O4uwx1oYraOS7+FxOvmlUgLY
 FzYH0LFACJ+b10lBN2qWJ/hx/X66ckRfDAUCVJZ+FRmanIN4YT1lPXpFx3jjAypjE+J9
 x6zso6Xcye4nUvH1I7mRgTY7pHROChVkCLLs3ufhjNj6A/ZB+PVwbbkFVh07YaDcKVDW
 8eUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fs58mxdUQxMlT6likcL4L12mYDuE4+TkHpkUpTJpzac=;
 b=YIDZ2PGUbJVPvhwDx88LsjscQ3y/sxgRSFcZG3w5tOPUBw4UzvpRP7VZA8KNxLxr8B
 5zNbOHtgl2VH8IuPVkfpIQPA1mKNz+qQ61E+EPuiDAd9HNTtIBkK/oYXxtRNxEQwUCQC
 0FBukdPlY+CBJsDuQn+zVEkYPllJv3lYUhRWGxs2Oughv7wL4xfY1xaFaPbKwIlSaF3g
 6+F4rxeEMAmGWfPEsp9FYKWP+zwKZ8FEYlCrSK8H/mbwvSZB1uuPGqUrnMcWMJvJ8TFP
 AFERH1f1NbOjIzfPzrzJJJizyTgIdd0tCQMgW3A2w7i6UdrJ+iUI/6/bA1S3WuWwwYAU
 Zu/g==
X-Gm-Message-State: AOAM531AGdHLZMdJGidBR1jupJBCMW5A3dNQ7jty+0BuVG2HkLWUTvbx
 YMd7vuPSYWP7Jp1MDentW4E=
X-Google-Smtp-Source: ABdhPJxkueNzc965S+TyU11GlPfT+C4gE2Vpd/n0weGAKXXsBOJLTokTTjeJM8Zs33DoHYPi2T451w==
X-Received: by 2002:a02:c7c1:: with SMTP id s1mr559827jao.94.1604548092463;
 Wed, 04 Nov 2020 19:48:12 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:11 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/9] staging: rtl8723bs: remove ADPT_FMT macro
Date: Wed,  4 Nov 2020 21:47:50 -0600
Message-Id: <20201105034754.12383-5-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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

Remove unnecessary macro for %s and call it directly.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c             |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c        |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_security.c        |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c       |  6 +++---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c         | 12 ++++++------
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c       |  2 +-
 .../staging/rtl8723bs/include/osdep_service_linux.h  |  1 -
 7 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 4e11cd97cc01..d0772b4fe15d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -503,7 +503,7 @@ int rtw_cmd_thread(void *context)
 
 		cmd_process_time = jiffies_to_msecs(jiffies - cmd_start_time);
 		if (cmd_process_time > 1000) {
-			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
+			DBG_871X("%s cmd= %d process_time= %lu > 1 sec\n",
 				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
 				 cmd_process_time);
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index f81ab2541554..a0bb25031f1a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -5108,7 +5108,7 @@ void report_surveydone_event(struct adapter *padapter)
 	psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 	psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;
 
-	DBG_871X("survey done event(%x) band:%d for "ADPT_FMT"\n", psurveydone_evt->bss_cnt, padapter->setband, ADPT_ARG(padapter));
+	DBG_871X("survey done event(%x) band:%d for %s\n", psurveydone_evt->bss_cnt, padapter->setband, ADPT_ARG(padapter));
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
 
@@ -5585,7 +5585,7 @@ void _linked_info_dump(struct adapter *padapter)
 
 	if (padapter->bLinkInfoDump) {
 
-		DBG_871X("\n ============["ADPT_FMT"] linked status check ===================\n", ADPT_ARG(padapter));
+		DBG_871X("\n ============[%s] linked status check ===================\n", ADPT_ARG(padapter));
 
 		if ((pmlmeinfo->state&0x03) == WIFI_FW_STATION_STATE) {
 			rtw_hal_get_def_var(padapter, HAL_DEF_UNDERCORATEDSMOOTHEDPWDB, &UndecoratedSmoothedPWDB);
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 82e26acb772c..81c15895f646 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -2372,12 +2372,12 @@ u8 rtw_handle_tkip_countermeasure(struct adapter *adapter, const char *caller)
 	if (securitypriv->btkip_countermeasure) {
 		unsigned long passing_ms = jiffies_to_msecs(jiffies - securitypriv->btkip_countermeasure_time);
 		if (passing_ms > 60*1000) {
-			DBG_871X_LEVEL(_drv_always_, "%s("ADPT_FMT") countermeasure time:%lus > 60s\n",
+			DBG_871X_LEVEL(_drv_always_, "%s(%s) countermeasure time:%lus > 60s\n",
 				caller, ADPT_ARG(adapter), passing_ms/1000);
 			securitypriv->btkip_countermeasure = false;
 			securitypriv->btkip_countermeasure_time = 0;
 		} else {
-			DBG_871X_LEVEL(_drv_always_, "%s("ADPT_FMT") countermeasure time:%lus < 60s\n",
+			DBG_871X_LEVEL(_drv_always_, "%s(%s) countermeasure time:%lus < 60s\n",
 				caller, ADPT_ARG(adapter), passing_ms/1000);
 			status = _FAIL;
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index e1c278501779..eda91b78a543 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -304,7 +304,7 @@ inline void rtw_set_oper_ch(struct adapter *adapter, u8 ch)
 
 		for (i = 0; i < dvobj->iface_nums; i++) {
 			struct adapter *iface = dvobj->padapters[i];
-			cnt += scnprintf(msg+cnt, len-cnt, " ["ADPT_FMT":", ADPT_ARG(iface));
+			cnt += scnprintf(msg+cnt, len-cnt, " [%s:", ADPT_ARG(iface));
 			if (iface->mlmeextpriv.cur_channel == ch)
 				cnt += scnprintf(msg+cnt, len-cnt, "C");
 			else
@@ -1431,11 +1431,11 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 		pmlmepriv->timeBcnInfoChkStart = jiffies;
 
 	pmlmepriv->NumOfBcnInfoChkFail++;
-	DBG_871X("%s by "ADPT_FMT" - NumOfChkFail = %d (SeqNum of this Beacon frame = %d).\n", __func__, ADPT_ARG(Adapter), pmlmepriv->NumOfBcnInfoChkFail, GetSequence(pframe));
+	DBG_871X("%s by %s - NumOfChkFail = %d (SeqNum of this Beacon frame = %d).\n", __func__, ADPT_ARG(Adapter), pmlmepriv->NumOfBcnInfoChkFail, GetSequence(pframe));
 
 	if ((pmlmepriv->timeBcnInfoChkStart != 0) && (jiffies_to_msecs(jiffies - pmlmepriv->timeBcnInfoChkStart) <= DISCONNECT_BY_CHK_BCN_FAIL_OBSERV_PERIOD_IN_MS)
 		&& (pmlmepriv->NumOfBcnInfoChkFail >= DISCONNECT_BY_CHK_BCN_FAIL_THRESHOLD)) {
-		DBG_871X("%s by "ADPT_FMT" - NumOfChkFail = %d >= threshold : %d (in %d ms), return FAIL.\n", __func__, ADPT_ARG(Adapter), pmlmepriv->NumOfBcnInfoChkFail,
+		DBG_871X("%s by %s - NumOfChkFail = %d >= threshold : %d (in %d ms), return FAIL.\n", __func__, ADPT_ARG(Adapter), pmlmepriv->NumOfBcnInfoChkFail,
 			DISCONNECT_BY_CHK_BCN_FAIL_THRESHOLD, jiffies_to_msecs(jiffies - pmlmepriv->timeBcnInfoChkStart));
 		pmlmepriv->timeBcnInfoChkStart = 0;
 		pmlmepriv->NumOfBcnInfoChkFail = 0;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 93c93cdaadaf..56fea55513ba 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1993,12 +1993,12 @@ void rtl8723b_download_rsvd_page(struct adapter *padapter, u8 mstatus)
 
 		if (padapter->bSurpriseRemoved || padapter->bDriverStopped) {
 		} else if (!bcn_valid)
-			DBG_871X(ADPT_FMT": 1 DL RSVD page failed! DLBcnCount:%u, poll:%u\n",
+			DBG_871X("%s: 1 DL RSVD page failed! DLBcnCount:%u, poll:%u\n",
 				ADPT_ARG(padapter), DLBcnCount, poll);
 		else {
 			struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
 			pwrctl->fw_psmode_iface_id = padapter->iface_id;
-			DBG_871X(ADPT_FMT": 1 DL RSVD page success! DLBcnCount:%u, poll:%u\n",
+			DBG_871X("%s: 1 DL RSVD page success! DLBcnCount:%u, poll:%u\n",
 				ADPT_ARG(padapter), DLBcnCount, poll);
 		}
 
@@ -2290,14 +2290,14 @@ void rtl8723b_download_BTCoex_AP_mode_rsvd_page(struct adapter *padapter)
 	if (bcn_valid) {
 		struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
 		pwrctl->fw_psmode_iface_id = padapter->iface_id;
-		DBG_8192C(ADPT_FMT": DL RSVD page success! DLBcnCount:%d, poll:%d\n",
+		DBG_8192C("%s: DL RSVD page success! DLBcnCount:%d, poll:%d\n",
 			ADPT_ARG(padapter), DLBcnCount, poll);
 	} else {
-		DBG_8192C(ADPT_FMT": DL RSVD page fail! DLBcnCount:%d, poll:%d\n",
+		DBG_8192C("%s: DL RSVD page fail! DLBcnCount:%d, poll:%d\n",
 			ADPT_ARG(padapter), DLBcnCount, poll);
-		DBG_8192C(ADPT_FMT": DL RSVD page fail! bSurpriseRemoved =%d\n",
+		DBG_8192C("%s: DL RSVD page fail! bSurpriseRemoved =%d\n",
 			ADPT_ARG(padapter), padapter->bSurpriseRemoved);
-		DBG_8192C(ADPT_FMT": DL RSVD page fail! bDriverStopped =%d\n",
+		DBG_8192C("%s: DL RSVD page fail! bDriverStopped =%d\n",
 			ADPT_ARG(padapter), padapter->bDriverStopped);
 	}
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 44799c4a9f35..6f9d082be7f3 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -482,7 +482,7 @@ int rtl8723bs_xmit_thread(void *context)
 	padapter = context;
 	pxmitpriv = &padapter->xmitpriv;
 
-	rtw_sprintf(thread_name, 20, "RTWHALXT-" ADPT_FMT, ADPT_ARG(padapter));
+	rtw_sprintf(thread_name, 20, "RTWHALXT-%s", ADPT_ARG(padapter));
 	thread_enter(thread_name);
 
 	DBG_871X("start "FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(padapter));
diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 24386aa9ee1b..8608bc251eea 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -124,7 +124,6 @@ static inline void rtw_netif_stop_queue(struct net_device *pnetdev)
 #define rtw_signal_process(pid, sig) kill_pid(find_vpid((pid)), (sig), 1)
 
 #define NDEV_ARG(ndev) ndev->name
-#define ADPT_FMT "%s"
 #define ADPT_ARG(adapter) adapter->pnetdev->name
 #define FUNC_NDEV_FMT "%s(%s)"
 #define FUNC_NDEV_ARG(ndev) __func__, ndev->name
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
