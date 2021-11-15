Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79AF451A14
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Nov 2021 00:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E08F3403CE;
	Mon, 15 Nov 2021 23:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlxxwtJDIawX; Mon, 15 Nov 2021 23:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A43F2401BF;
	Mon, 15 Nov 2021 23:31:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D65B31BF8A8
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 23:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C63ED80D36
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 23:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8w5wP2EIngfo for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 23:31:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 188AF80D34
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 23:31:07 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id g14so79125911edz.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 15:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ctyJj0su4ho9haAliTo0r4ZzNB+F0CH2LjllfbRsq8Y=;
 b=JKmJo06XxcTIJxohT6P60eUnHCL4/WYeMz35K46HIp8xRg0I5Z5M8R7o4d6lmcufxb
 n7oDxvc4SqbkjR6mR+CmyHLCnYTcJYGF0CDWdYw+6bb1t4sXRjWAO4TTpjTa/mNrlJlu
 57fSW8WrJ65H67RV3DCkVMZuVMOUyiqDWtb/S0Tic7hBlDS9Aonc/s4zv5hB3mzuKFu0
 vIoFPmOWU1D/1pzrH0LC+/o6cO1/+ENZADxTAU0w3J62dT3pqYXY20wggA8bHwnfWEH5
 fPFkIXKlNjahhNF2NWyEcIqcaoNcf6Fk5DLBUHnjYsleD965zMJMKF85EWlDCmvdKIIX
 1qGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ctyJj0su4ho9haAliTo0r4ZzNB+F0CH2LjllfbRsq8Y=;
 b=o4FOePegWSWFLopnscmiu+3h1xWLT1zOvg84fn1BZGpT/+yIYM9poZZxIxGJO8SJBD
 tutoL2EcMR/QwL2graoqnumF6t92hhAAEMbRJ1QYN/NIG76XqzSTk4DELeVx+YgplD34
 KZDPoBwZFMQ8Cvqmt2WKPRsECd+xc/ZauBq/osV7JoAVWD5ZDb+72Y2kbvXZJbNRF9Jz
 F2T7SXu1BBOIgQIoUWw90VQQmwMF0xKIt1DGaaZ0TT1DBSYTFGOpUmXK3/cLyQRf4BmN
 ZtPRpokQsd630TThvymWdnLQnRVj1bZPloH1QYQ4tLATrBWTNujZgQSrGe9zAWE/xTsW
 b9gg==
X-Gm-Message-State: AOAM532L3aFJrbBYRrevnKXwh2XkFDdsPwLs14yjlJB2ZklUW8STTQ3x
 lBnjeacJKrjpHK9FU+pwQr4=
X-Google-Smtp-Source: ABdhPJxSi2SrIBCunIZMzC5kNDCHNE/9hCxmsSkGnI0HC1BHvNpS76V2Dwz2sYXQvj5U/ElKAqAuSA==
X-Received: by 2002:a17:906:579a:: with SMTP id
 k26mr3730263ejq.250.1637019065240; 
 Mon, 15 Nov 2021 15:31:05 -0800 (PST)
Received: from bulldog (host-95-252-102-163.retail.telecomitalia.it.
 [95.252.102.163])
 by smtp.gmail.com with ESMTPSA id qk7sm7302364ejc.23.2021.11.15.15.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 15:31:04 -0800 (PST)
Date: Tue, 16 Nov 2021 00:31:02 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH v2] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211115233102.GA94584@bulldog>
MIME-Version: 1.0
Content-Disposition: inline
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
 forest@alittletooquiet.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
Indicator) into linux kernel coding style equivalent
variable "current_rssi".

Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
---

v1
- remove whitespaces

 drivers/staging/vt6655/device.h      | 2 +-
 drivers/staging/vt6655/device_main.c | 4 ++--
 drivers/staging/vt6655/dpc.c         | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 29f354ced563..dffd9b2db575 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -167,7 +167,7 @@ struct vnt_private {
 	unsigned char abyCurrentNetAddr[ETH_ALEN]; __aligned(2)
 	bool bLinkPass;          /* link status: OK or fail */
 
-	unsigned int	uCurrRSSI;
+	unsigned int current_rssi;
 	unsigned char byCurrSQ;
 
 	unsigned long dwTxAntennaSel;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 41cbec4134b0..17cdb2dc0aa9 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -979,10 +979,10 @@ static void vnt_check_bb_vga(struct vnt_private *priv)
 	if (priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)
 		return;
 
-	if (!(priv->vif->bss_conf.assoc && priv->uCurrRSSI))
+	if (!(priv->vif->bss_conf.assoc && priv->current_rssi))
 		return;
 
-	RFvRSSITodBm(priv, (u8)priv->uCurrRSSI, &dbm);
+	RFvRSSITodBm(priv, (u8)priv->current_rssi, &dbm);
 
 	for (i = 0; i < BB_VGA_LEVEL; i++) {
 		if (dbm < priv->ldBmThreshold[i]) {
diff --git a/drivers/staging/vt6655/dpc.c b/drivers/staging/vt6655/dpc.c
index 52214a30e9b6..9fea1ee0d612 100644
--- a/drivers/staging/vt6655/dpc.c
+++ b/drivers/staging/vt6655/dpc.c
@@ -82,7 +82,7 @@ static bool vnt_rx_data(struct vnt_private *priv, struct sk_buff *skb,
 	RFvRSSITodBm(priv, *rssi, &rx_dbm);
 
 	priv->byBBPreEDRSSI = (u8)rx_dbm + 1;
-	priv->uCurrRSSI = *rssi;
+	priv->current_rssi = *rssi;
 
 	skb_pull(skb, 4);
 	skb_trim(skb, frame_size);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
