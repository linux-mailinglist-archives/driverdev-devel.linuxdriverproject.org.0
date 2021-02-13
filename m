Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD531AB91
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 14:16:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36EF58766D;
	Sat, 13 Feb 2021 13:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UVGkxdLTuZJr; Sat, 13 Feb 2021 13:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B93787729;
	Sat, 13 Feb 2021 13:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04A071BF228
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 13:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F40606F5B3
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 13:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwZ6xlZVTyLT for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 13:16:33 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 232EB6F5CA; Sat, 13 Feb 2021 13:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81EC86F5B3
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 13:16:31 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id b2so3546611lfq.0
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 05:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1IwuTREhFP8d9ZWKkA5JdYA4S8M6KiAe3Ff0MI1TUoM=;
 b=NgAgtxrEUm9ITgTHJj0GiOn1zOWEy/HFxLmf1EFIg6/d+/sVEG3GObVARsQu9rNti8
 u7Mf/C4xe50kxW6jKQhAIHWEfXsMu5R0Ew0ahObfJIQjxX1Jys4XYAtbhm70aYKvqKcJ
 Ib59T/l+76kgo/6nBg8960HyaY+cV6KBcWrB1YmBJgMDBRb1Knt2el3e+HgkB5L7ZjQe
 NYqgz4RC0qgyeyvyVL1XOEEFEs6T1ZXDMEk9Z7LOpn3la/KL5ESdPPSQHIFj4qJL15Bc
 rEaDoBHbyCDUMCPjKj6MHStTkMNfRjrQqhpNoVpcmFT3LXjSnAFZRvjyGjABlOLEx8Rg
 0XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1IwuTREhFP8d9ZWKkA5JdYA4S8M6KiAe3Ff0MI1TUoM=;
 b=N71JRxFS6WQbBq+r59l2fnn/7CfzxDRdRTQMU51c9LrRffeGBJ/s6AI/o38u7RqElt
 UQnd5wBbc+YkVjN9G+AADADt0xiw9w2RcBQM86KhQP2zv6BluFlv8O4DhNDXgfvkV6zo
 i27CP1CXRSRbisDQLCwm4DQz3jTb4eruuoEwRQQNHn4f8QDzkNDD8Sff/Qvs3vb4SgVE
 4JosZPZktewu5RECqrgr4jwYfCX4RTwGD8iMHeGB6QwrSwgonisXBTnUyuv3N86kD/uB
 7Bl7uTbTBLbO+edu6EsEzo/7SlBa+q4TrhZ0+PC24k/CPfY0oQ/66Cq1G1DJeJJ0Cw68
 HIgA==
X-Gm-Message-State: AOAM5323AGFo1HNQlGP+x2UAJMjSMIXq/QCYwr5SGYFs8jVaWz8FjoLt
 cPq62FAnOkt6aC8MB7X40SRx7w8oGsI=
X-Google-Smtp-Source: ABdhPJzEVQ1wpZr4fBxdHTc5Yy0aYa9wxrH0QX12OI8rH4V7QRx0LpioWap+nT9kKnkZOE8bOtu5cA==
X-Received: by 2002:ac2:5d51:: with SMTP id w17mr3850510lfd.343.1613222189270; 
 Sat, 13 Feb 2021 05:16:29 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id k9sm1875142lfm.224.2021.02.13.05.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Feb 2021 05:16:28 -0800 (PST)
Received: (nullmailer pid 458778 invoked by uid 1000);
 Sat, 13 Feb 2021 13:12:52 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:r8188eu: use IEEE80211_FCTL_* kernel definitions
Date: Sat, 13 Feb 2021 16:11:50 +0300
Message-Id: <20210213131148.458582-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Ivan Safonov <insafonov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

_TO_DS_, _FROM_DS_, _MORE_FRAG_, _RETRY_, _PWRMGT_, _MORE_DATA_,
_PRIVACY_, _ORDER_ definitions are duplicate IEEE80211_FCTL_*
kernel definitions.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/include/wifi.h | 51 ++++++++++--------------
 1 file changed, 21 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index d0380f7f1bab..1b9006879a11 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -88,73 +88,64 @@ enum WIFI_REG_DOMAIN {
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
 #define SetToDs(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_TO_DS_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_TODS)
 
-#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_TO_DS_)) != 0)
+#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_TODS)) != 0)
 
 #define ClearToDs(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_TO_DS_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_TODS))
 
 #define SetFrDs(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_FROM_DS_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_FROMDS)
 
-#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_FROM_DS_)) != 0)
+#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_FROMDS)) != 0)
 
 #define ClearFrDs(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_FROM_DS_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_FROMDS))
 
 #define get_tofr_ds(pframe)	((GetToDs(pframe) << 1) | GetFrDs(pframe))
 
 #define SetMFrag(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_FRAG_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_MOREFRAGS)
 
-#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
+#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_MOREFRAGS)) != 0)
 
 #define ClearMFrag(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_FRAG_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_MOREFRAGS))
 
 #define SetRetry(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_RETRY_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_RETRY)
 
-#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_RETRY_)) != 0)
+#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_RETRY)) != 0)
 
 #define ClearRetry(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_RETRY_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_RETRY))
 
 #define SetPwrMgt(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PWRMGT_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_PM)
 
-#define GetPwrMgt(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PWRMGT_)) != 0)
+#define GetPwrMgt(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_PM)) != 0)
 
 #define ClearPwrMgt(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PWRMGT_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_PM))
 
 #define SetMData(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_DATA_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_MOREDATA)
 
-#define GetMData(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_DATA_)) != 0)
+#define GetMData(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_MOREDATA)) != 0)
 
 #define ClearMData(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_DATA_))
+	*(__le16 *)(pbuf) &= (~cpu_to_le16(IEEE80211_FCTL_MOREDATA))
 
 #define SetPrivacy(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PRIVACY_)
+	*(__le16 *)(pbuf) |= cpu_to_le16(IEEE80211_FCTL_PROTECTED)
 
 #define GetPrivacy(pbuf)					\
-	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PRIVACY_)) != 0)
+	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_PROTECTED)) != 0)
 
 #define GetOrder(pbuf)					\
-	(((*(__le16 *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
+	(((*(__le16 *)(pbuf)) & cpu_to_le16(IEEE80211_FCTL_ORDER)) != 0)
 
 #define GetFrameType(pbuf)				\
 	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(3) | BIT(2)))
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
