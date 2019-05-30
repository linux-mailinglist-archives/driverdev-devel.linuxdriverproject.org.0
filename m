Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3C303C0
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8848C86A5B;
	Thu, 30 May 2019 21:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1BVc8ztssxVK; Thu, 30 May 2019 21:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9034986A2D;
	Thu, 30 May 2019 21:04:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABD5A1BF365
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A79B88832D
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJdKknxo+g9y for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F3E58815D
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:04:15 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id e5so1304224pls.13
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 14:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vD2fLJXRnpmLTWPk2IUY5InLkt9+iHncke1FSW91ZcY=;
 b=jWK/3wgh433k10BhILFQBTdumpwnYdXDkD3FhqlmmVNdsJIG/dKvMgJpGL3M5xPYi0
 87zUTgJLmiAuoTQi9YF9NKp/rOaRx/dGgIGl0lUm4xLJ6dBEToGNQh5M0FD066HSrV/u
 OiTMgWJXMnaW33dUwAbRPH/hj1ITdza/urLkma1FzLLPILc59J4nWJ4lqXbWjQPoK4+B
 oc6ODDecHMrbtGBMYvFrJ59tU6Pq2uoptldobP7Y0zx2qigT0h4u3aOgfze/ZhJGGAZx
 HvNYK7QOEpbDHQtpeIziEu9vtjieTD6ftBqaUqXF5I4TpBfDpNmfS58dMx+UAf/EHl1z
 lOTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vD2fLJXRnpmLTWPk2IUY5InLkt9+iHncke1FSW91ZcY=;
 b=pjOLOjkU2XFRF1PrcFdXzzNLxkDByRbVN1EwaSdIAOXBQyBIdNjlMqNqiZfAbPFzQR
 p5jhgpIqrN8vtRP8d8lLmYW/xLumQpCKDLuAmC92IDKhXoXryM0/HcpYukl1nzD2RbCX
 e71mtXSRS9QnGSsKBNCuhx3kiuMiV2vhRUmEfpmDU7tzkoXIFneLKCaJnmxAk3qO7s7t
 ftqRBeJOMkRe2yzHeVUOnx2+qAOKMacHtAfQFlx3fmNcuD73U4JE7iz4FeHHL7ZdZ1RL
 UGYxE/eOabLgCoJH+U7B38f741C29JwwDyLiAdTBhcYFDrxzqV7CCb8G3obgEM7VVDPN
 CJvA==
X-Gm-Message-State: APjAAAWX+QYaqUM0HPkOHxHPaGTvluZ/L2iyn/CSJvXWFsBEyRA99Fh7
 vOiJa5WTewaw8/sZbMahjm8=
X-Google-Smtp-Source: APXvYqzHUhgye+9GCfAT+RfQLdLAofvEeKT9byV5oZx65xPL7rX+qTDN8YVOH3Fe62GBHdeaq0/Xcg==
X-Received: by 2002:a17:902:4383:: with SMTP id
 j3mr5669710pld.320.1559250254813; 
 Thu, 30 May 2019 14:04:14 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id 63sm4507267pfu.95.2019.05.30.14.04.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 14:04:14 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, colin.king@canonical.com,
 straube.linux@gmail.com, yangx92@hotmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: ieee80211.c: Remove leading p from variable
 names
Date: Fri, 31 May 2019 02:33:59 +0530
Message-Id: <20190530210359.30284-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove leading p from the names of the following pointer variables:
- pregistrypriv
- pdev_network
- pie
- pbuf.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 50 ++++++++++++++---------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 4cca7390c8ef..fe94e5c15836 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -156,13 +156,13 @@ static uint r8712_get_rateset_len(u8 *rateset)
 	return i;
 }
 
-int r8712_generate_ie(struct registry_priv *pregistrypriv)
+int r8712_generate_ie(struct registry_priv *registrypriv)
 {
 	int rate_len;
 	uint sz = 0;
-	struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
-	u8 *ie = pdev_network->IEs;
-	u16 beaconPeriod = (u16)pdev_network->Configuration.BeaconPeriod;
+	struct wlan_bssid_ex *dev_network = &registrypriv->dev_network;
+	u8 *ie = dev_network->IEs;
+	u16 beaconPeriod = (u16)dev_network->Configuration.BeaconPeriod;
 
 	/*timestamp will be inserted by hardware*/
 	sz += 8;
@@ -174,65 +174,65 @@ int r8712_generate_ie(struct registry_priv *pregistrypriv)
 	/*capability info*/
 	*(u16 *)ie = 0;
 	*(__le16 *)ie |= cpu_to_le16(cap_IBSS);
-	if (pregistrypriv->preamble == PREAMBLE_SHORT)
+	if (registrypriv->preamble == PREAMBLE_SHORT)
 		*(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
-	if (pdev_network->Privacy)
+	if (dev_network->Privacy)
 		*(__le16 *)ie |= cpu_to_le16(cap_Privacy);
 	sz += 2;
 	ie += 2;
 	/*SSID*/
-	ie = r8712_set_ie(ie, _SSID_IE_, pdev_network->Ssid.SsidLength,
-			  pdev_network->Ssid.Ssid, &sz);
+	ie = r8712_set_ie(ie, _SSID_IE_, dev_network->Ssid.SsidLength,
+			  dev_network->Ssid.Ssid, &sz);
 	/*supported rates*/
-	set_supported_rate(pdev_network->rates, pregistrypriv->wireless_mode);
-	rate_len = r8712_get_rateset_len(pdev_network->rates);
+	set_supported_rate(dev_network->rates, registrypriv->wireless_mode);
+	rate_len = r8712_get_rateset_len(dev_network->rates);
 	if (rate_len > 8) {
 		ie = r8712_set_ie(ie, _SUPPORTEDRATES_IE_, 8,
-				  pdev_network->rates, &sz);
+				  dev_network->rates, &sz);
 		ie = r8712_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8),
-				  (pdev_network->rates + 8), &sz);
+				  (dev_network->rates + 8), &sz);
 	} else {
 		ie = r8712_set_ie(ie, _SUPPORTEDRATES_IE_,
-				  rate_len, pdev_network->rates, &sz);
+				  rate_len, dev_network->rates, &sz);
 	}
 	/*DS parameter set*/
 	ie = r8712_set_ie(ie, _DSSET_IE_, 1,
-			  (u8 *)&pdev_network->Configuration.DSConfig, &sz);
+			  (u8 *)&dev_network->Configuration.DSConfig, &sz);
 	/*IBSS Parameter Set*/
 	ie = r8712_set_ie(ie, _IBSS_PARA_IE_, 2,
-			  (u8 *)&pdev_network->Configuration.ATIMWindow, &sz);
+			  (u8 *)&dev_network->Configuration.ATIMWindow, &sz);
 	return sz;
 }
 
-unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
+unsigned char *r8712_get_wpa_ie(unsigned char *ie, uint *wpa_ie_len, int limit)
 {
 	u32 len;
 	u16 val16;
 	unsigned char wpa_oui_type[] = {0x00, 0x50, 0xf2, 0x01};
-	u8 *pbuf = pie;
+	u8 *buf = ie;
 
 	while (1) {
-		pbuf = r8712_get_ie(pbuf, _WPA_IE_ID_, &len, limit);
-		if (pbuf) {
+		buf = r8712_get_ie(buf, _WPA_IE_ID_, &len, limit);
+		if (buf) {
 			/*check if oui matches...*/
-			if (memcmp((pbuf + 2), wpa_oui_type,
+			if (memcmp((buf + 2), wpa_oui_type,
 				   sizeof(wpa_oui_type)))
 				goto check_next_ie;
 			/*check version...*/
-			memcpy((u8 *)&val16, (pbuf + 6), sizeof(val16));
+			memcpy((u8 *)&val16, (buf + 6), sizeof(val16));
 			le16_to_cpus(&val16);
 			if (val16 != 0x0001)
 				goto check_next_ie;
-			*wpa_ie_len = *(pbuf + 1);
-			return pbuf;
+			*wpa_ie_len = *(buf + 1);
+			return buf;
 		}
 		*wpa_ie_len = 0;
 		return NULL;
 check_next_ie:
-		limit = limit - (pbuf - pie) - 2 - len;
+		limit = limit - (buf - ie) - 2 - len;
 		if (limit <= 0)
 			break;
-		pbuf += (2 + len);
+		buf += (2 + len);
 	}
 	*wpa_ie_len = 0;
 	return NULL;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
