Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D2B107EF8
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 16:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FC0E876BF;
	Sat, 23 Nov 2019 15:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CappiznuAwRF; Sat, 23 Nov 2019 15:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46D7386E68;
	Sat, 23 Nov 2019 15:16:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0201BF580
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F67086ED5
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id As33-v4P9y4E for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 15:16:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D872086E68
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 15:16:48 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z7so8755293wrl.13
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 07:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k/TrPUC3MHLbDZj3FLNVhaKoasoXmU+H+GHGqM8LGHY=;
 b=GlB+0vLNG7e339zd6nPJJuCqwyuni4EvNJZq5VoGqKE3p1pbroyqhD3y6ZtqtofLtd
 eYRyt29J3ZUYmYSUl9cGBDtvNW5okUPM8fJRO1cgvCUyIcAwLoDSMQjTps/lPqLYC6+j
 0lYndECfBK4G9nbEqwG+6Rk/xoPK4TH4fJdjX59fwk7TkBRvPPr2oSTnU04hpxREB1c8
 RH8Daq/7NXRdAzGsVFl8IE/ZUIUbkXzIx3XvAmUR0ttVKehUWwHQ0/FIQIV3MFlwcCPZ
 KRem+bVv91a+Lzn6wFZhJluqye6uN3CnpJF8r2DR5NEl453J62RcSXFVeeXQZuvd78iJ
 6VKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k/TrPUC3MHLbDZj3FLNVhaKoasoXmU+H+GHGqM8LGHY=;
 b=uIeEGwPfJMZnqoWiTgHJu2jfQ2y0Vd+/Br2jiLB1ynC3yRDwsPG1XpF/5n5RQzR30l
 c4rUENZBxs5t84JLmzAdSq9ncw0Sg418m4xxOE3Blf3vXvHrxsszVj0wScvtiHCi50jo
 ruQwVWkMcWhIeeCI9YMRpp4Vfoa+FrMEt/jzZi/pp9r3W5Diy+bYvbtwHxVJ5NXvYzFI
 QFoL7iFp/ou3pQRg5nGvf5Ijsoeymk2u5I5RweQBM+RC6/1ucQAkMBZOzoLHT9shLGTN
 1RcD5zqgTKvjbHOSfEyICoHlMUZ36GjbhB/VYpvUvtcFI1ljluPtesiM9Xa8JN/If99X
 sHAQ==
X-Gm-Message-State: APjAAAVH9HDaEY3dIVBrDntViOaHJ0YcAfiKF0XtmQ1N6QkGIP+NmxKI
 I3CKVBGURLsvS1eob88s6a4=
X-Google-Smtp-Source: APXvYqyiqj4mouUcmStNAu3bkXi35knuWatKHI4lUv6tYQ2bfMpIwjsiTcICWqYerDGwJkzuywqXgA==
X-Received: by 2002:adf:ab4c:: with SMTP id r12mr22456332wrc.3.1574522207041; 
 Sat, 23 Nov 2019 07:16:47 -0800 (PST)
Received: from localhost.localdomain
 (dslb-092-073-054-228.092.073.pools.vodafone-ip.de. [92.73.54.228])
 by smtp.gmail.com with ESMTPSA id p25sm2126311wma.20.2019.11.23.07.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 07:16:46 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8188eu: remove unnecessary parentheses in
 rtw_pwrctrl.c
Date: Sat, 23 Nov 2019 16:16:33 +0100
Message-Id: <20191123151635.155138-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
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

Remove unnecessary parentheses reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 03dc7e5fcc38..010a0cdf7940 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -154,8 +154,8 @@ void ips_enter(struct adapter *padapter)
 int ips_leave(struct adapter *padapter)
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
-	struct security_priv *psecuritypriv = &(padapter->securitypriv);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct security_priv *psecuritypriv = &padapter->securitypriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int result = _SUCCESS;
 	int keyid;
 
@@ -200,7 +200,7 @@ int ips_leave(struct adapter *padapter)
 
 static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
 {
-	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	bool ret = false;
 
 	if (time_after_eq(adapter->pwrctrlpriv.ips_deny_time, jiffies))
@@ -221,7 +221,7 @@ static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
 void rtw_ps_processor(struct adapter *padapter)
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	enum rt_rf_power_state rfpwrstate;
 
 	pwrpriv->ps_processing = true;
@@ -336,7 +336,7 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 {
 	unsigned long curr_time, delta_time;
 	struct pwrctrl_priv	*pwrpriv = &padapter->pwrctrlpriv;
-	struct mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
 	curr_time = jiffies;
 	delta_time = curr_time - pwrpriv->DelayLPSLastTimeStamp;
@@ -483,7 +483,7 @@ void LPS_Leave(struct adapter *padapter)
 /*  */
 void LeaveAllPowerSaveMode(struct adapter *Adapter)
 {
-	struct mlme_priv	*pmlmepriv = &(Adapter->mlmepriv);
+	struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
 	u8	enqueue = 0;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED))
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
