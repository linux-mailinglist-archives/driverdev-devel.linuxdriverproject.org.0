Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81262293F4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD6CB868BE;
	Tue, 20 Oct 2020 15:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYbRlqCCHjoW; Tue, 20 Oct 2020 15:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99A458688A;
	Tue, 20 Oct 2020 15:09:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 253241BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 21AE98688A
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cy-o-jhrKoOH for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17CF386885
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:09:49 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id i2so2406229ljg.4
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECKLYi4zrKN47fHOYr430dA8CasNwXAsAUTrlCAnQIs=;
 b=Sgulk7Xdcn5+frMmUuoCLMXRGGAFzGuMk/+5akpfZLDIEsrtlp5Lq+qIxGGMdiWWzj
 xesjQi6+Sr98X0iodS3dm8KYSWYQRFQSvcemvIRrm206qknfAHtviWM9wP2O/mg7nyLu
 rkQRtwE5oBLae7n70GTTAXuygwVA+luA0kL2p50wSaWhJLponohoX/UvWiI16bj8OuiC
 UelVEgh1LaUVuT7OEjnMFXkFlEhD9K84M0/N1zGli1rbWzYM67FBd/hj4mRh+wizOobI
 ZFhwWhBK2QTx0dTfNzr6/Qj9M7JpUkSSkFpE7w/AepelrXI9FZ9RxWZzjJQf4JEw+iZZ
 emsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECKLYi4zrKN47fHOYr430dA8CasNwXAsAUTrlCAnQIs=;
 b=qV2q41NGuag/Kk6DBfZSsNkHGarpFQUTuzRx6Tbp5ALQKQwu1lIe2++7ZzI/yUMkWB
 pJNp/VRKa2mcv8QygFue6ryA0dQZeV0N428aSdHF5vNXzuVTNCX5BA+Y+GQj6vJEIqdc
 1pzAQ6ZEDBCWfxNIpihI+AxCb7/HqVAI2FAB8XpmPEzbyYaJzPQZnv0XRZoTppP1zFj9
 GXFHA7aGeBkHT4CSoI2L1CRAr1n2E9pBeCqROgQ7hrOxuIezDUpKg5QTUyHZLc+Vd8e2
 nfp3fwh7/pqfFEKB8vjDlAwu4IF7S+Z6oLEMCGVIAKF3pOKCTox1VpMEJ69AteZ+A3Fm
 +IWQ==
X-Gm-Message-State: AOAM532HbdUNdYXar646uRuXVhEVZlwLl8N+vTc8Hq5Rnvp3cpAic9NR
 tlxNsMtur6bng5kK9upd+Ag=
X-Google-Smtp-Source: ABdhPJzL0VrBodXBGMYv9KjgNL6AvWg8Fd06QB6nShA/lf+g85sIt2V2957FJvZR87CAUERRdnS3aA==
X-Received: by 2002:a2e:b5c7:: with SMTP id g7mr1259974ljn.373.1603206587117; 
 Tue, 20 Oct 2020 08:09:47 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id c23sm345585lfd.231.2020.10.20.08.09.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:09:46 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
Date: Tue, 20 Oct 2020 08:08:23 -0700
Message-Id: <20201020150823.35734-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace function names with __func__ macro.
Remove unnecessary characters in error messages.
Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index bc642076b96f..f972edcde8a0 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
 	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
 
-	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
+	netdev_info(ieee->dev, "%s\n", __func__);
 }
 EXPORT_SYMBOL(rtl8192u_dot11d_init);
 
@@ -66,14 +66,14 @@ void dot11d_update_country_ie(struct ieee80211_device *dev, u8 *pTaddr,
 			/* It is not in a monotonically increasing order, so
 			 * stop processing.
 			 */
-			netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........1\n");
+			netdev_err(dev->dev, "%s: Invalid country IE, skip it 1\n", __func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->first_channel + pTriple->num_channels)) {
 			/* It is not a valid set of channel id, so stop
 			 * processing.
 			 */
-			netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........2\n");
+			netdev_err(dev->dev, "%s: Invalid country IE, skip it 2\n", __func__);
 			return;
 		}
 
@@ -105,7 +105,7 @@ u8 dot11d_get_max_tx_pwr_in_dbm(struct ieee80211_device *dev, u8 Channel)
 	u8 MaxTxPwrInDbm = 255;
 
 	if (Channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "dot11d_get_max_tx_pwr_in_dbm(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return MaxTxPwrInDbm;
 	}
 	if (dot11d_info->channel_map[Channel])
@@ -141,7 +141,7 @@ int is_legal_channel(struct ieee80211_device *dev, u8 channel)
 	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
 
 	if (channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return 0;
 	}
 	if (dot11d_info->channel_map[channel] > 0)
@@ -164,7 +164,7 @@ int to_legal_channel(struct ieee80211_device *dev, u8 channel)
 	}
 
 	if (channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return default_chn;
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
