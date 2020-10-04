Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884D72827C1
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A2DF87077;
	Sun,  4 Oct 2020 01:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpvT7oqNk--q; Sun,  4 Oct 2020 01:18:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 940AA87004;
	Sun,  4 Oct 2020 01:18:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11CA71BF95A
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F285D87008
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xw1Fvl9+f9Ka for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB6A686FF2
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id y13so5656383iow.4
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c4wxiwbrXT2JhjMEyl9nKKHVccfo3Rywbz9tPs71DLc=;
 b=UakAZm6aVrAE6zwKh02vs9NxKRFRK9eWf89sNPv1hMOZOoR8wmUr0e0uk0OssmXehm
 ndbtBupUACcYakSV4/BKwu9aoS8jCaYJ2ffkpJUsBng/lqBfI5GrpMwayl+0Pbcgw+6f
 yquGHEadSCI1mUp8mHpTRWac7heSWqmIortfPS0KtmZCv7K3WlU5bJDYx1rxaJBei9x7
 jltYK0i/AwiM07spdZuZLLPs8UeWNeSGZKZL2g2cu0688N93tWeVvYIplYFRq3VYcXJ3
 2ozR9VeW2veiSXmq1ner+frqW9b85QpsMl1F/thghxPklZq7olZWZx5zc+vJLq0iZ+KC
 GgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c4wxiwbrXT2JhjMEyl9nKKHVccfo3Rywbz9tPs71DLc=;
 b=fvGaW+H9XUvF8FWOLzXP+eH2lf1EcQgt2KKTFtPKi0HJD1afZWkKXm5HZ45GZiCoHB
 ZfHTx7RT0NMI1LrTWJhE4UZWLOIO/RRB3vWwEcJi57vK4acIKmMJ+HuQxQTQVpjvTEmR
 40N42Vs/n0btj9VM8oIZNQra5hYnObTPMBIhrFG6NFtIWYlUfTRxmKbVR7aGVoaxBwlf
 PErRqCShgPncmAHd7XPCy2le3GkI/tqiHWbYhmSikbXCcPfKMzzHmp2iASlxD4Fg/OJx
 AI5sk5nTiZttY3cQkgwU9JV1d1Yd9pTiFUdmvkl/jD3cSa5Dz9ogfNDdToUjA873yKRu
 aRGA==
X-Gm-Message-State: AOAM532IV8xVGd5djiwrK4rq6Gmsoow9u5Rsc1BZvBvBNfskNh7866Vv
 U1jtHg0QRqWaZfZkhYUWJWk=
X-Google-Smtp-Source: ABdhPJyEKhMgm6AKqiDtWQIZ4R3X6X3B6bryr8VurOm3wMLYAQfsvrDIzJU/d9jvp+f5XmYYg9e/BQ==
X-Received: by 2002:a05:6602:180f:: with SMTP id
 t15mr6490410ioh.4.1601774281986; 
 Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 8/8] staging: rtl8723bs: replace _cancel_timer with
 del_timer_sync
Date: Sat,  3 Oct 2020 20:17:43 -0500
Message-Id: <20201004011743.10750-8-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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

Replace _cancel_timer with API function del_timer_sync.

One instance of del_timer_sync is moved and an unnecessary pair of spin
locks are removed.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c         |  3 +--
 drivers/staging/rtl8723bs/core/rtw_mlme.c        | 16 ++--------------
 drivers/staging/rtl8723bs/hal/sdio_ops.c         |  3 +--
 .../rtl8723bs/include/osdep_service_linux.h      |  6 ------
 4 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 047ec5167f86..2abe205e3453 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -2034,7 +2034,6 @@ void rtw_joinbss_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 
 void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 {
-	u8 timer_cancelled;
 	struct sta_info *psta = NULL;
 	struct wlan_network *pwlan = NULL;
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -2049,7 +2048,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		_set_timer(&pmlmepriv->assoc_timer, 1);
 	}
 
-	_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
+	del_timer_sync(&pmlmepriv->assoc_timer);
 
 	spin_lock_bh(&pmlmepriv->lock);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index e65c5a870b46..9531ba54e95b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -814,7 +814,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
-	u8 timer_cancelled = false;
 	struct	mlme_priv *pmlmepriv = &(adapter->mlmepriv);
 
 	spin_lock_bh(&pmlmepriv->lock);
@@ -827,22 +826,12 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_surveydone_event_callback: fw_state:%x\n\n", get_fwstate(pmlmepriv)));
 
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) {
-		/* u8 timer_cancelled; */
-
-		timer_cancelled = true;
-		/* _cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled); */
-
+		del_timer_sync(&pmlmepriv->scan_to_timer);
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 	} else {
 
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("nic status =%x, survey done event comes too late!\n", get_fwstate(pmlmepriv)));
 	}
-	spin_unlock_bh(&pmlmepriv->lock);
-
-	if (timer_cancelled)
-		_cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled);
-
-	spin_lock_bh(&pmlmepriv->lock);
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
 
@@ -1298,7 +1287,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 {
 	static u8 retry;
-	u8 timer_cancelled;
 	struct sta_info *ptarget_sta = NULL, *pcur_sta = NULL;
 	struct	sta_priv *pstapriv = &adapter->stapriv;
 	struct	mlme_priv *pmlmepriv = &(adapter->mlmepriv);
@@ -1392,7 +1380,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			}
 
 			/* s5. Cancel assoc_timer */
-			_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
+			del_timer_sync(&pmlmepriv->assoc_timer);
 
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("Cancel assoc_timer\n"));
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 465f51b99d39..369f55d11519 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -945,8 +945,7 @@ void sd_int_dpc(struct adapter *adapter)
 	if (hal->sdio_hisr & SDIO_HISR_CPWM1) {
 		struct reportpwrstate_parm report;
 
-		u8 bcancelled;
-		_cancel_timer(&(pwrctl->pwr_rpwm_timer), &bcancelled);
+		del_timer_sync(&(pwrctl->pwr_rpwm_timer));
 
 		report.state = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_HCPWM1_8723B);
 
diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 4a5bdb93e75d..498d5474010c 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -83,12 +83,6 @@ static inline void _set_timer(_timer *ptimer, u32 delay_time)
 	mod_timer(ptimer, (jiffies + (delay_time * HZ / 1000)));
 }
 
-static inline void _cancel_timer(_timer *ptimer, u8 *bcancelled)
-{
-	del_timer_sync(ptimer);
-	*bcancelled =  true;/* true == 1; false == 0 */
-}
-
 static inline void _init_workitem(_workitem *pwork, void *pfunc, void *cntx)
 {
 	INIT_WORK(pwork, pfunc);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
