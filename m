Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6769C8A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 07:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B86AD204C2;
	Mon, 26 Aug 2019 05:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RhvargyRI9s; Mon, 26 Aug 2019 05:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F5BB20427;
	Mon, 26 Aug 2019 05:20:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3BD01BF44C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE135871E0
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5iVRURsr3bl9 for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 05:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E55B87117
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 05:20:37 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so9401378pls.8
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 22:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lrkJNuUkgZRa9WqgJTpr+iClIcHwYAMNxN4El98MH8c=;
 b=WdHGwU5jJ9Luz0P67oqquA4qjczFDzuzvcS66PA1Rof+b8+VmQNBcUxNP3ET3zXBNM
 0gHssR4AJaaQISyj1+okpELnS4C3ngkt/GQ3hMVUq/Y/wr/Y4MuAhTFUGgBtjSTkLOo7
 PkOufDp+wVAUSumq0YA3rcynpkAITSZePwQog3KC7JAIrsfKz1J7gWT6Dj4ZJzo0JtoN
 j/4QZH1HFCpfMzM2IGmZ8t1DufebidQ+YTGZAQRNS/8tOJ3NCApdQnvtaHkWE56pMSE4
 QzAvSKgKqEWFXnp3ssy4XSyw3AAKEErrFGGnC1NrqUp9QYEbL6hAp+PIFA7CfBVO2+6j
 zR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lrkJNuUkgZRa9WqgJTpr+iClIcHwYAMNxN4El98MH8c=;
 b=Q80+9liumfVvQEWZomHVZTf8WH0JvauCkjsnFX1ublH8srhgG8pU/qWav1e9sRdyoB
 09aAIySOvwHg/p/FOTVrD0K+kul3wF6X0HvRWAduk40l3F8xrJeeC5k9OiYGMtWaTykG
 DwfUMgIKUXnNMbzwRYmDxSTIGK+ysNAPpjjN8WXaEUcBPwuZ/aQqg9405gLiH7L5jWID
 ZSASCytHvCouk6CrFLxkuoopTwyAZkH+YsnP/11h01q/XV42k7pht/dFy7VUOsDPejpS
 TmhEg9T6sbkw8hVgUyIJabn1znM9bcZpQbQD9Y+32o7uTPINjlOxIx/Ur3MrcWt9XQ3R
 pyfw==
X-Gm-Message-State: APjAAAUWU6b2qsOiuFbmoTg2EJ4+xAZcYCVMpvDRroAnLNEai1eFqnXL
 Lm6Z78SHiKzWlYnTNP+VsDI=
X-Google-Smtp-Source: APXvYqwpKo0msETO1B3V2SRW7R9j2UAJvAjWnkPNOLo8sclbJrIrlSjEi6AhH05kSX2vWbu/FoTNsA==
X-Received: by 2002:a17:902:7b97:: with SMTP id
 w23mr3666860pll.283.1566796836919; 
 Sun, 25 Aug 2019 22:20:36 -0700 (PDT)
Received: from localhost.localdomain (61-220-137-38.HINET-IP.hinet.net.
 [61.220.137.38])
 by smtp.gmail.com with ESMTPSA id c12sm13916626pfc.22.2019.08.25.22.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 25 Aug 2019 22:20:36 -0700 (PDT)
From: "Taihsiang Ho (tai271828)" <tai271828@gmail.com>
To: straube.linux@gmail.com
Subject: [PATCH] staging: rtl8712: wifi: checkpatch style fix
Date: Mon, 26 Aug 2019 13:20:18 +0800
Message-Id: <20190826052018.18649-1-tai271828@gmail.com>
X-Mailer: git-send-email 2.23.0
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
 "Taihsiang Ho \(tai271828\)" <tai271828@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove multiple blank lines.

Signed-off-by: Taihsiang Ho (tai271828) <tai271828@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 1a5b966a167e..be731f1a2209 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -300,7 +300,6 @@ static inline unsigned char *get_da(unsigned char *pframe)
 	return da;
 }
 
-
 static inline unsigned char *get_sa(unsigned char *pframe)
 {
 	unsigned char	*sa;
@@ -346,8 +345,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 	return sa;
 }
 
-
-
 /*-----------------------------------------------------------------------------
  *		Below is for the security related definition
  *-----------------------------------------------------------------------------
@@ -392,7 +389,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 
 #define	_RESERVED47_		47
 
-
 /* ---------------------------------------------------------------------------
  *			Below is the fixed elements...
  * ---------------------------------------------------------------------------
@@ -436,7 +432,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define _WMM_IE_Length_				7  /* for WMM STA */
 #define _WMM_Para_Element_Length_		24
 
-
 /*-----------------------------------------------------------------------------
  *			Below is the definition for 802.11n
  *------------------------------------------------------------------------------
@@ -456,7 +451,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define GetOrderBit(pbuf)	(((*(__le16 *)(pbuf)) & \
 				le16_to_cpu(_ORDER_)) != 0)
 
-
 /**
  * struct ieee80211_bar - HT Block Ack Request
  *
@@ -476,7 +470,6 @@ struct ieee80211_bar {
 #define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
 #define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
 
-
 /*
  * struct ieee80211_ht_cap - HT capabilities
  *
@@ -552,7 +545,6 @@ struct ieee80211_ht_addt_info {
  */
 #define IEEE80211_MIN_AMPDU_BUF 0x8
 
-
 /* Spatial Multiplexing Power Save Modes */
 #define WLAN_HT_CAP_SM_PS_STATIC		0
 #define WLAN_HT_CAP_SM_PS_DYNAMIC	1
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
