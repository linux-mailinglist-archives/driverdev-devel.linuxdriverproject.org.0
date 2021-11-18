Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EA445640B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Nov 2021 21:27:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A50D5819FC;
	Thu, 18 Nov 2021 20:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcapXWuuHUE1; Thu, 18 Nov 2021 20:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07A9D8188B;
	Thu, 18 Nov 2021 20:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16A621BF417
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 20:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 063398188B
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 20:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iL4O9Ja1gq9v for <devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 20:27:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1392F817AF
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 20:27:23 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id x15so32571456edv.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 12:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=Bku4og72Nr6a7MbIrMa3waOOwhpR77QKOKfLXyNDkMI=;
 b=gz55aBS6TWWM8f8cXToxhgR8xwOmjROc0W/1nTZY+iQhPTAA287vRIAgOv0M6bxIrf
 MlF93ZjcBQ8ChEfaQOpVUQ8lhlIfa+kVyBK3VPKjF8Fkq6klZ7eBRzBmUb0mc8ETcOTw
 lvgj5iQeqbkHhfzn41lMrQFVaIObrIsWcW7sOaQ35EnC7uOVVCCs9Mfs0W2YjT+WHxDc
 JrmxLTHWwMeF4YIsydpvOSYpWGEf779nbhclELVi2xNgSFn2W06USnRCVxLR+ai6yeR+
 C100LnGHho1V1SgtvJ05x2dffN6qh9HWOWhMHqtYRKCbP6TXcjswaiVfqTOm/Cf9OxBm
 6nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Bku4og72Nr6a7MbIrMa3waOOwhpR77QKOKfLXyNDkMI=;
 b=pkW6QKTSFT56EMHwmQmRC5J03+bgxV+z0P3oweZ7FCsUxgFNfr8oMi+es9//z9qEhh
 rsNVAn5xYUl4zSOZ3Q2gvApclXcb9B8gPTA+boFeWx47SeEZ8wMdC9CyiZPJ4PQNOSlu
 xHm2AnPYk0niI63l8DfW9SZT2NKpfDu4VyKsZfazanpQyExzDiZeKHCv93V3A2M4vdux
 a2xu+iwcGPz0e1HZUOBmWCuV8n/LLMX3Mqd8M7S0CEhoT9Abi3OOS4UAsmK7SK95bSj/
 ZBQ/ZpARvtPHDDFGgqjTZBlrHmMqpUnPX9ZwoYNjDeUfYnea1uPVr91FCZQH/KoH9Miw
 685w==
X-Gm-Message-State: AOAM530gpFwsgMVgvVbfSEite7qr80UIffN9gbxXV3VUcc0k5E7bKdzS
 TM+OACWbc7/S/6BJHNLxtfk=
X-Google-Smtp-Source: ABdhPJzkI0oRGhLTF7LY1pLYuuYRU4I7TbFXpZA8P2q29G8RNjubd0glYxE9ZxgMs4Ubh5HXauTWmA==
X-Received: by 2002:a05:6402:51ca:: with SMTP id
 r10mr15771820edd.0.1637267240969; 
 Thu, 18 Nov 2021 12:27:20 -0800 (PST)
Received: from t470p (host-95-252-102-163.retail.telecomitalia.it.
 [95.252.102.163])
 by smtp.gmail.com with ESMTPSA id v13sm338379ejo.36.2021.11.18.12.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 12:27:20 -0800 (PST)
Date: Thu, 18 Nov 2021 21:27:18 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211118202718.GA152832@t470p>
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
 alb3rt0.m3rciai@gmail.com, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
Indicator) into linux kernel coding style equivalent
variable "current_rssi".

Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
---

v2
- correct mailing list
v1
- remove whitespaces

 drivers/staging/vt6655/device.h      | 2 +-
 drivers/staging/vt6655/device_main.c | 4 ++--
 drivers/staging/vt6655/dpc.c         | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 29f354ced563..80c9ace0d116 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -167,7 +167,7 @@ struct vnt_private {
 	unsigned char abyCurrentNetAddr[ETH_ALEN]; __aligned(2)
 	bool bLinkPass;          /* link status: OK or fail */
 
-	unsigned int	uCurrRSSI;
+	unsigned int	current_rssi;
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
