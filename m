Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EB456292
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:48:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 916F886837;
	Wed, 26 Jun 2019 06:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFt4MVOCHaAo; Wed, 26 Jun 2019 06:48:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B60F83683;
	Wed, 26 Jun 2019 06:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50FC51BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4DAE4838B8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5usjV0N8cHFu for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:48:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7E4D83683
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:48:12 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id cl9so857830plb.10
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ow74yR2DrHUWqD7HwWPyVfniysv2TTV4nCR1I8ZyQhs=;
 b=WeTiRqrhhHzaDiANHl2hnODDOyPqdBG4KLshjJNz8jeKlkvoCM6nJmPXWSYHksnKYm
 XtgGe+dJYe9OSxVhR8ysQXb39XfRrzKJaURkgRxaZhxYEYqNe4UtRmRQ6f8dvuL8gCkq
 z9Nz7HSacdSfCiK61KC3vmZMDwqXkhP2AKtgVCDgWp0VgMO41F1ze+QYl4ynVk7DdDgX
 TjcTgIh9QdnF944W7yQ8fdmpLiIHVMTWmT4erD/LEUTD+2zRWqSO/HJZVL+QXKQ9YaUt
 OmvSD4f93JaUj6Mv5KvdOGntQVE0oPpxX7SAtSrQSgPTK02EdHijZuaOLeWUB+QuhPXJ
 DwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ow74yR2DrHUWqD7HwWPyVfniysv2TTV4nCR1I8ZyQhs=;
 b=hO6VyssXxpsxzTHmnvKSHQleU2CTZ4t4Zlp4hOSTMokJqV/GoDyL15n8StH6tkdP0I
 1+WzDSW3STCT57DGf4IO1SPQy1EUCUrqQmtyloucP+IDFKc3FPxmSLLAWkArHp0glK94
 Y4mg7vzoetkomYLc+rLnBngrVL4iRXMBQvVMtlbKef1WTIcnvJHhmMMuEYsRp+H+20x6
 J1C+RChNwmfQUV9tUPfaK7+2xBTSQfq3nwrtKvli60B1Dp/RDAYlZwp1PaemVRCtMS+P
 1n1lhy9u4+gc/vdKAZjNRY4Pbbs1+wqyM/Cjkeq/8vUrdT549+EhxVaS6zJtmcz2woGY
 O/iw==
X-Gm-Message-State: APjAAAW8wCopWu35NPPopSGMi9YSFyQjMZqxiE9N1ZBb5c2Oij9Sl2ta
 vdGeyYnTp3il6UCX3tSykMo=
X-Google-Smtp-Source: APXvYqxMNM/QtkcYW21kBYmDG7fXvqBTdNUmOwa20dtkhdifoN5Tr7GLcscjrBDGIwq4DTmOzEZSFQ==
X-Received: by 2002:a17:902:a504:: with SMTP id
 s4mr3463772plq.117.1561531692599; 
 Tue, 25 Jun 2019 23:48:12 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id i123sm2765678pfe.147.2019.06.25.23.48.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:48:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/2] staging: rtl8192u: Remove function
 dm_backup_dynamic_mechanism_state()
Date: Wed, 26 Jun 2019 12:17:59 +0530
Message-Id: <20190626064759.3190-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626064759.3190-1-nishkadg.linux@gmail.com>
References: <20190626064759.3190-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function dm_backup_dynamic_mechanism_state.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 12 ------------
 drivers/staging/rtl8192u/r8192U_dm.h |  1 -
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 2ba01041406b..88cdfd05d485 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1563,18 +1563,6 @@ static void dm_bb_initialgain_restore(struct net_device *dev)
 
 }	/* dm_BBInitialGainRestore */
 
-void dm_backup_dynamic_mechanism_state(struct net_device *dev)
-{
-	struct r8192_priv *priv = ieee80211_priv(dev);
-
-	/* Fsync to avoid reset */
-	priv->bswitch_fsync  = false;
-	priv->bfsync_processing = false;
-	/* Backup BB InitialGain */
-	dm_bb_initialgain_backup(dev);
-
-}	/* DM_BackupDynamicMechanismState */
-
 static void dm_bb_initialgain_backup(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
index 0de0332906bd..0b2a1c688597 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.h
+++ b/drivers/staging/rtl8192u/r8192U_dm.h
@@ -161,7 +161,6 @@ void hal_dm_watchdog(struct net_device *dev);
 void init_rate_adaptive(struct net_device *dev);
 void dm_txpower_trackingcallback(struct work_struct *work);
 void dm_restore_dynamic_mechanism_state(struct net_device *dev);
-void dm_backup_dynamic_mechanism_state(struct net_device *dev);
 void dm_force_tx_fw_info(struct net_device *dev,
 			 u32 force_type, u32 force_value);
 void dm_init_edca_turbo(struct net_device *dev);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
