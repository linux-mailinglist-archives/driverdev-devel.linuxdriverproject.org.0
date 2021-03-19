Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C40A341FDD
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 15:42:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 204FC83C59;
	Fri, 19 Mar 2021 14:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvjAjoE0m8hX; Fri, 19 Mar 2021 14:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5770483CC3;
	Fri, 19 Mar 2021 14:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA0B1BF29F
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 14:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84E674EE2F
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 14:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hmPiQkBysyMC for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 14:42:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 269014EE2C
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 14:42:21 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 r15-20020a05600c35cfb029010e639ca09eso7456802wmq.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 07:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XTbSIMvQ+/BtlwbF+Ev/3WZAC0rKFSDShYJoFzNVMk=;
 b=JW8Chhximx98r8yKuBtPj2rXc/iY2gKNGzzGyBm1faUdhtOCgCZRy0b+8ctz08dcYY
 LeYBh+3EURfQKWtgp5MN9bY2gvNOcwIFXW8JBq20TsQB11kUPVuvurHkclYoKGN69zeQ
 9+hHSrbZEN+t6yOBptSGds4xvI5MpJ1mEdC4PTTRT3avgmk0e4SYKVXGmPk3LgQj9ggK
 yG7inUpjoZszWjFoxrJf6YkKGbB9HVxe83u58hr8RXzlLW9cnLODxOqC9In5xz20A+ZP
 t2KkNDWbI5Gje/swr2b5hNZXLi4U9h0m/7jYqRwuMT6jDkRLLtWYKDKbxIxpXK7nCnYe
 qc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XTbSIMvQ+/BtlwbF+Ev/3WZAC0rKFSDShYJoFzNVMk=;
 b=BMwV+Nkb+uq3s48xY/wMCFVj69XoKxqwnpEuC/ELNuCe/bFK3mIVDS5FMEKIuPzON2
 1dSEbBUG6e4V+0VllRl/SoKUYeW6diU5quWRf2+oFkWsYwN04d22z2o11F5lM6BsNzyk
 LqZdNEXe8slHuLc9FM8fI3COnnlZU8qRkfpi+rink3v9Vwwj9ybl9EBsnxaig6FGY5uM
 f0icxcYZVjuh3qsnIiRrxBQC096IeKJGjEGSdLGIkO5cpiXVS/Z4Nq1DUmlEMCB5bZ0h
 hoxxmjVkxulOkA7o+/XodvmcoaMNyPWmk3Mz6tLK8WXUtMK89BpeJXSPLnYomkCzJDgj
 fw6g==
X-Gm-Message-State: AOAM532joylgr5ly5dL/4HSX9alGi+6evRkZuNGm8dm9zMsGsleLghFl
 EVz5tuJfQXhBnq3MxY4ypRU=
X-Google-Smtp-Source: ABdhPJwjGKxUSx+L6k/HH7ynujRJcepef0U/wIStL7Sy6ahIZZMV+895+W4JC2P3QTiqFtRCbvUkRQ==
X-Received: by 2002:a1c:b0c4:: with SMTP id z187mr3951369wme.81.1616164939365; 
 Fri, 19 Mar 2021 07:42:19 -0700 (PDT)
Received: from gamer-pc.Home ([78.17.243.211])
 by smtp.gmail.com with ESMTPSA id j123sm6669281wmb.1.2021.03.19.07.42.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 07:42:18 -0700 (PDT)
From: Paul McQuade <paulmcquad@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH v2] staging: rtl8188eu: Removed Unnecessary logging
Date: Fri, 19 Mar 2021 14:42:06 +0000
Message-Id: <20210319144206.23439-1-paulmcquad@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Paul McQuade <paulmcquad@gmail.com>,
 debsoumyajit100@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:
WARNING: Unnecessary ftrace-like logging - prefer using ftrace

Signed-off-by: Paul McQuade <paulmcquad@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 182bb944c9b3..008b60e72758 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -507,7 +507,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	struct ht_priv	*phtpriv_sta = &psta->htpriv;
 
 	psta->mac_id = psta->aid + 1;
-	DBG_88E("%s\n", __func__);
 
 	/* ap mode */
 	rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -571,8 +570,6 @@ static void update_hw_ht_param(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-	DBG_88E("%s\n", __func__);
-
 	/* handle A-MPDU parameter field
 	 * ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
 	 * ampdu_params_info [4:2]:Min MPDU Start Spacing
@@ -1166,8 +1163,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	unsigned char *ie = pnetwork->ies;
 	u32 ielen = pnetwork->ie_length;
 
-	DBG_88E("%s\n", __func__);
-
 	pwps_ie_src = pmlmepriv->wps_beacon_ie;
 	if (!pwps_ie_src)
 		return;
@@ -1207,7 +1202,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-	DBG_88E("%s\n", __func__);
 
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
