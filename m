Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CD844F919
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 17:41:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 911FD606E7;
	Sun, 14 Nov 2021 16:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LsOTaLdOtt02; Sun, 14 Nov 2021 16:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2A3B60667;
	Sun, 14 Nov 2021 16:41:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D29C1BF30F
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 16:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18F8F4024B
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 16:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SwFHveYCNO92 for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 16:40:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC81B40248
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 16:40:53 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id m20so14865800edc.5
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 08:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=yH5jlMEp13Y3JSGXuU6UqW4nNJ0SyKJmoMUfJV7lpoA=;
 b=lMctiQ5i45ED6LX2Ljl+60ykbGlr4I0L0ZN7pxtV9YKu5r8TsVSK5Y8pPcZcZZ4qir
 bYvT+wHD1PfOi/BUVebTwih3rgNRzgKn5Gk/qlK4YMOYehyLuJtJEYA8UjngeVVaQshm
 6cWeiGbhpEsyOv8tx+GcFpQ5+5H/Cz9ZFbdErlc4bNsrPRRMQ0yljlrcDesVhRVo37Qi
 /9cnsw/Y9DlfsxB3+PWxYNAJlPbULyn1QLo4kXfrhcLfTNaxOkzPB78lVU0kL1de7XVB
 ior+LncdhLHJQtNCVXxwz3kDMJCE/Pc2EZaA0UdzotszEHG6DkDRQ7NPxjBGsDF2yThz
 vF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=yH5jlMEp13Y3JSGXuU6UqW4nNJ0SyKJmoMUfJV7lpoA=;
 b=lVAG2Rxn6gQX7OIYRoRaHWbj30dgxS0BjeVFKmWC1ssZ6WG1RnqtdkA8NhKFK7GuTZ
 wM5rr/pVcLnXL+K/YBZDBWXazrQhm2CWkRFxxkw95i4yhoT7U1dtE9Tc7pL+2tlf9y+5
 busPtSIossccDW7Mpa6hw6IaFmouG222slp4MNkis5+opuVbATDp1pRYvGt055FPYhgC
 +Uw94yVuIMWo1dTClbSldMig9MZzFEj8r5n4MsVj1Rpgfa35Qrj1BLRG2bJjfjR3Z8FA
 HnxgYNqgYNCfj9EAvjiMLcrnF0OLKHZcBoCFjd6rr0WpBg5ZT2mp0kNdrJfR8Lx/q9F5
 vQxA==
X-Gm-Message-State: AOAM5336II6DfyxZd1d9jFbG74IznOeToK/8Y1G2zBsniK/pTf87T5wU
 CeEamitld/5Asm+Tj2LVjBU=
X-Google-Smtp-Source: ABdhPJwzgac1nnU88FrGFgHwbEA+8xUxsXjMrkIKnfmPU1FijZFgifEw3h0FvxVR1F5AwC4uXMzfRg==
X-Received: by 2002:a17:907:7ea4:: with SMTP id
 qb36mr42466435ejc.146.1636908052034; 
 Sun, 14 Nov 2021 08:40:52 -0800 (PST)
Received: from t470p (host-82-51-109-131.retail.telecomitalia.it.
 [82.51.109.131])
 by smtp.gmail.com with ESMTPSA id x15sm2115384edq.65.2021.11.14.08.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Nov 2021 08:40:51 -0800 (PST)
Date: Sun, 14 Nov 2021 17:40:48 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH] staging: vt6655: refactor camelcase uCurrRSSI to current_rssi
Message-ID: <20211114164048.GA134727@t470p>
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
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
Indicator) into linux kernel coding style equivalent 
variable "current_rssi".

References:
https://www.kernel.org/doc/html/latest/process/coding-style.html
https://www.cse.iitk.ac.in/users/dsrkg/cs245/html/Guide.htm

---
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
