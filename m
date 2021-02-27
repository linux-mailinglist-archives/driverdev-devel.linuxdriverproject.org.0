Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B951A326F21
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4ABA24F0DF;
	Sat, 27 Feb 2021 22:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyYMsZJSw7QP; Sat, 27 Feb 2021 22:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09A104EEF9;
	Sat, 27 Feb 2021 22:23:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 239071BF41C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20B478405E
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svnKI-YcFGHm for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 380108409A
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:23:15 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id q14so14894645ljp.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uXpwxr7TUV/Z8qxPoO7S8pXAiEh9GOQdULn01SJ7/aA=;
 b=OPI1+PcrKi44YAcLvqwdQdka3HgLn2m9DT7mfN6zEfyDtfVepi3YJqYQnM9kDJn8gO
 E6BVfD4s/PCS/kdYtGWI9VKwtYmyMRZ575Ph4V/zKW11PkXTsM+ZvDHTTl6bEkBEQpQ8
 FRh9UEVje1e9rFiH57Cm8yWx7cH3jvSdYKREyQBe+c6spcrggCSmLuB4vV/b1tGs7zqc
 r7MheP4ZdGC+XULMKoo+XTBjagCxfDTzNZxPEIt3yxJG09UCMIM9ecaJkAVH+alRkUCN
 PttlloI8EPod3BgZHXM/oEUB0uUALGIVMYDE9+UJckvrQmdkW4iTRYdvIS4Zyn/DleAE
 onNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uXpwxr7TUV/Z8qxPoO7S8pXAiEh9GOQdULn01SJ7/aA=;
 b=I0V1VJtoxTES2dCHhVIqLniM7MrByxDGM6LEAWa6a5soDzi3i2vhhZHtZsFVeoXdOE
 dcr37hocz6jocBM+085x5Ne/8f32KRy0oY5gZKjCmvr/V9FkXGKsC7mm/3TN9F+b427A
 keltacgqbgVy5FjDvIhe3thwG0TpLormnbim1GymSj9NvDmlMVdwp+niru1X0Yinv/JX
 RVyRLfF8RI+PQzgGosU923mOUd+zdN6CubpDrEPruaZ2/RGyv8NrF+s6qkfzsNScyibf
 z68GtGelMy75JIjPexPnw5k3LgzQbBBjSgIR1nIq5hF4oewHcjLeoyctVFProEIHKU0X
 6otw==
X-Gm-Message-State: AOAM531zSgfOekogHav73+3XDG/aIvzbMzJ4F3CKa9TIxvM1zBI/9Vhi
 vcK15sYGjX4T0NuQneTnhP2iNBOyBW8=
X-Google-Smtp-Source: ABdhPJx8aVQD4DqxYHTK8wfmhRUMM2i2v1zYuvkrIYYWJOyURiVtKEGMbuYLiPX1J4e9bsEefNkTsw==
X-Received: by 2002:a2e:81cd:: with SMTP id s13mr5127919ljg.323.1614464592994; 
 Sat, 27 Feb 2021 14:23:12 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id k10sm835923lfo.75.2021.02.27.14.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:23:12 -0800 (PST)
Received: (nullmailer pid 581549 invoked by uid 1000);
 Sat, 27 Feb 2021 22:23:10 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] staging:rtl8712: use IEEE80211_FCTL_* kernel definitions
Date: Sun, 28 Feb 2021 01:22:36 +0300
Message-Id: <20210227222236.581490-4-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210227222236.581490-1-insafonov@gmail.com>
References: <20210227222236.581490-1-insafonov@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 linux-kernel@vger.kernel.org, Pascal Terjan <pterjan@google.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

_TO_DS_, _FROM_DS_, _MORE_FRAG_, _RETRY_, _PWRMGT_, _MORE_DATA_,
_PRIVACY_, _ORDER_ definitions are duplicate IEEE80211_FCTL_*
kernel definitions.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 52 ++++++++++++++--------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 11fba6f9e721..b7889ac3dce9 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -15,6 +15,7 @@
 #define _WIFI_H_
 
 #include <linux/compiler.h>
+#include <linux/ieee80211.h>
 
 #define WLAN_HDR_A3_LEN		24
 #define WLAN_HDR_A3_QOS_LEN	26
@@ -74,33 +75,24 @@ enum WIFI_REG_DOMAIN {
 	DOMAIN_MAX
 };
 
-#define _TO_DS_		BIT(8)
-#define _FROM_DS_	BIT(9)
-#define _MORE_FRAG_	BIT(10)
-#define _RETRY_		BIT(11)
-#define _PWRMGT_	BIT(12)
-#define _MORE_DATA_	BIT(13)
-#define _PRIVACY_	BIT(14)
-#define _ORDER_		BIT(15)
-
 #define SetToDs(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_TO_DS_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_TODS); \
 })
 
-#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_TO_DS_)) != 0)
+#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_TODS)) != 0)
 
 #define ClearToDs(pbuf)	({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_TO_DS_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_TODS)); \
 })
 
 #define SetFrDs(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_FROM_DS_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_FROMDS); \
 })
 
-#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_FROM_DS_)) != 0)
+#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_FROMDS)) != 0)
 
 #define ClearFrDs(pbuf)	({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_FROM_DS_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_FROMDS)); \
 })
 
 static inline unsigned char get_tofr_ds(unsigned char *pframe)
@@ -109,56 +101,56 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 }
 
 #define SetMFrag(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_FRAG_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_MOREFRAGS); \
 })
 
-#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
+#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_MOREFRAGS)) != 0)
 
 #define ClearMFrag(pbuf) ({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_FRAG_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_MOREFRAGS)); \
 })
 
 #define SetRetry(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_RETRY_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_RETRY); \
 })
 
-#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_RETRY_)) != 0)
+#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_RETRY)) != 0)
 
 #define ClearRetry(pbuf) ({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_RETRY_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_RETRY)); \
 })
 
 #define SetPwrMgt(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PWRMGT_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_PM); \
 })
 
 #define GetPwrMgt(pbuf)	(((*(__le16 *)(pbuf)) & \
-			cpu_to_le16(_PWRMGT_)) != 0)
+			cpu_to_le16(IEEE80211_FCTL_PM)) != 0)
 
 #define ClearPwrMgt(pbuf) ({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PWRMGT_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_PM)); \
 })
 
 #define SetMData(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_DATA_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_MOREDATA); \
 })
 
 #define GetMData(pbuf)	(((*(__le16 *)(pbuf)) & \
-			cpu_to_le16(_MORE_DATA_)) != 0)
+			cpu_to_le16(IEEE80211_FCTL_MOREDATA)) != 0)
 
 #define ClearMData(pbuf) ({ \
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_DATA_)); \
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_MOREDATA)); \
 })
 
 #define SetPrivacy(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PRIVACY_); \
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_PROTECTED); \
 })
 
 #define GetPrivacy(pbuf)	(((*(__le16 *)(pbuf)) & \
-				cpu_to_le16(_PRIVACY_)) != 0)
+				cpu_to_le16(IEEE80211_FCTL_PROTECTED)) != 0)
 
 #define GetOrder(pbuf)	(((*(__le16 *)(pbuf)) & \
-			cpu_to_le16(_ORDER_)) != 0)
+			cpu_to_le16(IEEE80211_FCTL_ORDER)) != 0)
 
 #define GetFrameType(pbuf)	(le16_to_cpu(*(__le16 *)(pbuf)) & \
 				(BIT(3) | BIT(2)))
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
