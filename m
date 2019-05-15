Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D95A41F93E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9834D86FF2;
	Wed, 15 May 2019 17:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n8IsEHtuKAjf; Wed, 15 May 2019 17:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 422EE86EC2;
	Wed, 15 May 2019 17:19:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF9011BF3A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED020860F6
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNOAv-RhZ2L0 for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7327C8625E
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:19:06 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id n8so176845plp.10
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nZxdjC3oJ+11W/48SJWAc/YEk4fPGeqztupTNMHhLOg=;
 b=ftVgiVkTlXrq4sN2Ya3RweX5kgdDXKN9CWl4StixHkBvRixv/6AoIo4qKErWKh2VBx
 EWSOeGw5+FcFxt9dVjbpAcqgz1sr1StR3/HBhAHQXYD8Muzn0UbJ+08HvjVy4xxBbh3V
 EbH792MFpk7c1+JlW4swUCZAlDrM/trK417EnhULSxWM8s0KeYIJ2XoT1W/cig3epozN
 /+1C0siHWLEcxw8c30qCksNPRaO29onBPVn2kb8/JhxuYm7+ddRo/qEAE0KiITsMkLPT
 gz9l2j3C4LhXTvoV2err9UqdouMkBTyb39JSKYNP2/Hc7yIqHLrbO2NgBpb3FAVTd8GP
 BgZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nZxdjC3oJ+11W/48SJWAc/YEk4fPGeqztupTNMHhLOg=;
 b=IqhOPwxtZsv/aFnqKCzPrMHl98y+djezlKlzX1c6BJKT3sh8+/XN93VNdri91mEVx/
 uJCQeRpaCmgLDkwW0aNaTMsE7ApZbp4V7hH5D1phJChZBsJvwJ6NVsDRELjuULRKAIl9
 SecIPN0RNZNQ/kUol04WFa4QkZU5QMSpvsQfL4qvharcmnCPgn0rbsWFSeald7zAJCVB
 FYNMwajen7dZhgbZplUxsymyY/UeQojIX7asKt3OnFHcRYzz9xq8cmjK/abzwizcLu0p
 0Saq5PYBTSieqoo9KgnnJtYIZbm+BdGyObbGAFClbAlE5nxObaTzcgMlvLDkyMI2LV/N
 4fAQ==
X-Gm-Message-State: APjAAAXH5Fr2o45OCArkbl1nTKJiICVc8zKKKdi8dzcmJWYWOubDmeZO
 3LbbZYf6AU7tLulgIrF2aTw=
X-Google-Smtp-Source: APXvYqwE9tSiQgniNPqwo5FJrrHF/FygDVkDix2IaOyUlESj48MWFT4U2TiLeYtZ7+Q0Ut1ouxSFJw==
X-Received: by 2002:a17:902:b40b:: with SMTP id
 x11mr46167589plr.265.1557940745628; 
 Wed, 15 May 2019 10:19:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cf:c592:16fc:ceef:f8b3:1624])
 by smtp.googlemail.com with ESMTPSA id
 d186sm5012505pfd.183.2019.05.15.10.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:19:05 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8188eu: os_dep: Use %s and __func__ in strings
Date: Wed, 15 May 2019 22:48:44 +0530
Message-Id: <20190515171844.14685-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix following checkpatch.pl warnings by using %s and __func__
in strings instead of function names.

WARNING: Prefer using '"%s...", __func__' to using 'rtw_report_sec_ie', this function's name, in a string
and other similar warning.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 9db11b16cb93..e660bd4d91ef 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -93,11 +93,11 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	union iwreq_data wrqu;
 
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
-		 ("+rtw_report_sec_ie, authmode=%d\n", authmode));
+		 ("+%s, authmode=%d\n", __func__, authmode));
 	buff = NULL;
 	if (authmode == _WPA_IE_ID_) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
-			 ("rtw_report_sec_ie, authmode=%d\n", authmode));
+			 ("%s, authmode=%d\n", __func__, authmode));
 		buff = rtw_malloc(IW_CUSTOM_MAX);
 		if (!buff)
 			return;
@@ -149,7 +149,7 @@ void rtw_indicate_sta_assoc_event(struct adapter *padapter, struct sta_info *pst
 
 	memcpy(wrqu.addr.sa_data, psta->hwaddr, ETH_ALEN);
 
-	DBG_88E("+rtw_indicate_sta_assoc_event\n");
+	DBG_88E("+%s\n", __func__);
 
 	wireless_send_event(padapter->pnetdev, IWEVREGISTERED, &wrqu, NULL);
 }
@@ -172,7 +172,7 @@ void rtw_indicate_sta_disassoc_event(struct adapter *padapter, struct sta_info *
 
 	memcpy(wrqu.addr.sa_data, psta->hwaddr, ETH_ALEN);
 
-	DBG_88E("+rtw_indicate_sta_disassoc_event\n");
+	DBG_88E("+%s\n", __func__);
 
 	wireless_send_event(padapter->pnetdev, IWEVEXPIRED, &wrqu, NULL);
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
