Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFECB456460
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Nov 2021 21:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D459F61BB5;
	Thu, 18 Nov 2021 20:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pn12GZoxX-nd; Thu, 18 Nov 2021 20:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 424596062B;
	Thu, 18 Nov 2021 20:37:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1467F1BF417
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 20:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03EB46062B
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 20:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Ov082l2c7BL for <devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 20:37:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FB9660602
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 20:37:30 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id x15so32681798edv.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 12:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=36yDFfopFxLjWle4SmTLXk2V2L53KBUrQboPtECnYtY=;
 b=obMz6oFHTTLVG5qY2Yuc7yLU3xWHtKWptUTb535fFFrUZ+VKDUN7vAW9We/CacgC7p
 9prEXwwOvyzmw+NHgkvZPBIdCjglPqhqDPXvBTxGLTEEm2h1TQ5v67Zsa8DTO2MN/IkO
 2NBKMCDUxFhEMBEzkjViK1taRRhhIEuNTsK7wyBCkfM3BFM2cAaAgyeM/VRbrH0ixkYa
 F8CFDX14975QYxzxRl3kRv6hHtL5OEpXoGrIRKa5YXRTPtH6vFUezKGieWHPyu6KRdij
 L1yfUt7yC5981C2SiNNj56BmbxJMrjIaEuTrc4PHF1JmnJWJ6L43ObYrUd7DEMWH+9UQ
 zAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=36yDFfopFxLjWle4SmTLXk2V2L53KBUrQboPtECnYtY=;
 b=q/Vxa8P5XLWJZBnrrapn6JSSZPjVlEV2nNdZK+vNxbCtLIhtI3vyJKaAFFpADc0ohb
 xraNSlwK58JtUp2F8UnoRCvCxS5+6xmQ2CLpUgSqctUx0GuhZGh6wszo4mGA0Eem6SB8
 R964VGrqnFm08tSA+/7OVmqA+9Ip2f9eAiZNmvkd63LJ4QM14cz40QUBdT6M+MBhQmSc
 NxA8hKKplgkJxE+Z8LcggosLn63KhlPLavem0p1YDq+G8ctWc+KG3t3gYqvkdhNj4m8a
 U2ZfpACu+N+2ZkZdmcA0BlX43yPmqyX10r0/UnEQGbZoUEhjx3aCUI7oEMs4NY33r48t
 6eWQ==
X-Gm-Message-State: AOAM531r9MnDWDRS3taMCTsL/dQ6uukozr1G2CZpIk8KlZsv8Dd4iuiY
 7Wm4rXeQHbBhGV57g7ua9tw=
X-Google-Smtp-Source: ABdhPJzLGaZxEFji+evDgg1a0q3AnGcBOQ/5/amRQ/lYQ8YYb0v3EwteCZ8yK1F7XOL2jgWeJnTcDA==
X-Received: by 2002:a17:906:309b:: with SMTP id
 27mr368490ejv.129.1637267848608; 
 Thu, 18 Nov 2021 12:37:28 -0800 (PST)
Received: from t470p (host-95-252-102-163.retail.telecomitalia.it.
 [95.252.102.163])
 by smtp.gmail.com with ESMTPSA id gz26sm334052ejc.100.2021.11.18.12.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 12:37:28 -0800 (PST)
Date: Thu, 18 Nov 2021 21:37:26 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH v4] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211118203726.GA153646@t470p>
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

v3
- change tab with whitespace next to current_rssi
v2
- correct mailing list
v1
- remove whitespaces

 drivers/staging/vt6654/device.h      | 2 +-
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
