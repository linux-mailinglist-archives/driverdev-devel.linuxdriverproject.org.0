Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA2A19CBD2
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 22:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6421326781;
	Thu,  2 Apr 2020 20:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fN4Ib3+WrjtA; Thu,  2 Apr 2020 20:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF0112155D;
	Thu,  2 Apr 2020 20:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3BC71BF3E6
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 20:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0AFC883BA
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 20:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKHRGMWXHZqP for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 20:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1395B883B6
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:45:25 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p10so5853158wrt.6
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 13:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=YlSD4Lk4f6lPWhUFQ2ne86biZ/yC8yucmHDeLcuroz8=;
 b=WcH1BXGHgSoOwDNpAGxLwoMQUObcbxH48bpCbwmsD4Aje0/QKeSTyXkgBHCBQ4zgL7
 CIM44HVSdSnj7NXv4oSdlrhyaiuTSUnvoCG9wFzuqxNEhd+hVEjdtsWxEEutxEiLOBEd
 stSbvYVo2wBYfapMJBb+outBXc8Gmq8n9mwx3Tg91xtTzX4gbO6pYUfe0qjxe2ShMUwY
 PSvjKeuRwl4aE459OokRwbiOkxRjQNuDsbxY5JJLP41LimY7bPFY+54qS8/Y+kUfeLhJ
 JsjQhg/L3wxexVFuV/lu+qsI5FsgumBmgFn4/7bJ7SWD+N5c3rYqBPm4RzevTM7bS+lb
 v98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=YlSD4Lk4f6lPWhUFQ2ne86biZ/yC8yucmHDeLcuroz8=;
 b=ii+UCdPoe1xhUwAsJalvGu6nSJgOUa/3wOYrQ2X586uBJTg8vOGBDlwoEkuFq61rP0
 +2ux5YUB+r3+NjQXvutmqi1khG3Ly+2Nl2m+ttN5NlX7qNfESrwEyRI0+XaI3D57PGcj
 oGcA5ZgO10tKdqHibqbap7oWrRfMqy0Z4LRXX2k+RUofbQqWWwNKS2fQIFdgFrWQrpSR
 3teVEX7BrgMh8aW0bJ3Ofd8zmveaaerlX5CorbbvsDpNAS2r46rLbV1gSJaKMPkKzzM5
 /dEt88rrgqsFf7se/cfQ+TKlGNyqHFUDcGTiTapiQ+8TRlAmCh+TUUocEyNrFqHM+9K/
 tUlA==
X-Gm-Message-State: AGi0PubWF5dRtspngdBYcQljjbvZ5XNI3xbopmhxdCE9lmrdmTLQouae
 99dajMr8wrdSidZzIjLoR2iwLtAg
X-Google-Smtp-Source: APiQypKptHzouBDkzkNWuInsaxcIl98/BYu6yzlazLnMr8SXiVDJ1fnt5++gATFVwZI+TqFErRusmQ==
X-Received: by 2002:adf:f3d2:: with SMTP id g18mr2672777wrp.356.1585860323399; 
 Thu, 02 Apr 2020 13:45:23 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id
 o9sm3986296wru.29.2020.04.02.13.45.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 13:45:22 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: replace al2230_power_table array with
 formula.
Message-ID: <e277409a-4509-d09c-515d-59b952f8310d@gmail.com>
Date: Thu, 2 Apr 2020 21:45:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The power table can replaced with calculation 0x0404090 | (power << 12)
removing array and length macro.

variable power never goes beyond the maximum setting.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rf.c | 79 ++-----------------------------------
 1 file changed, 4 insertions(+), 75 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 43237b7e1dbe..4f9aba0f21b0 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -27,7 +27,6 @@
 #include "usbpipe.h"
 
 #define CB_AL2230_INIT_SEQ    15
-#define AL2230_PWR_IDX_LEN    64
 
 #define CB_AL7230_INIT_SEQ    16
 #define AL7230_PWR_IDX_LEN    64
@@ -518,74 +517,6 @@ static u8 vt3342_channel_table1[CB_MAX_CHANNEL][3] = {
 	{0x03, 0x00, 0x04}
 };
 
-/* Power Table */
-static const u32 al2230_power_table[AL2230_PWR_IDX_LEN] = {
-	0x04040900,
-	0x04041900,
-	0x04042900,
-	0x04043900,
-	0x04044900,
-	0x04045900,
-	0x04046900,
-	0x04047900,
-	0x04048900,
-	0x04049900,
-	0x0404a900,
-	0x0404b900,
-	0x0404c900,
-	0x0404d900,
-	0x0404e900,
-	0x0404f900,
-	0x04050900,
-	0x04051900,
-	0x04052900,
-	0x04053900,
-	0x04054900,
-	0x04055900,
-	0x04056900,
-	0x04057900,
-	0x04058900,
-	0x04059900,
-	0x0405a900,
-	0x0405b900,
-	0x0405c900,
-	0x0405d900,
-	0x0405e900,
-	0x0405f900,
-	0x04060900,
-	0x04061900,
-	0x04062900,
-	0x04063900,
-	0x04064900,
-	0x04065900,
-	0x04066900,
-	0x04067900,
-	0x04068900,
-	0x04069900,
-	0x0406a900,
-	0x0406b900,
-	0x0406c900,
-	0x0406d900,
-	0x0406e900,
-	0x0406f900,
-	0x04070900,
-	0x04071900,
-	0x04072900,
-	0x04073900,
-	0x04074900,
-	0x04075900,
-	0x04076900,
-	0x04077900,
-	0x04078900,
-	0x04079900,
-	0x0407a900,
-	0x0407b900,
-	0x0407c900,
-	0x0407d900,
-	0x0407e900,
-	0x0407f900
-};
-
 /*
  * Description: Write to IF/RF, by embedded programming
  */
@@ -685,10 +616,9 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
-		if (power >= AL2230_PWR_IDX_LEN)
-			return false;
+		power_setting = 0x0404090 | (power << 12);
 
-		ret &= vnt_rf_write_embedded(priv, al2230_power_table[power]);
+		ret &= vnt_rf_write_embedded(priv, power_setting);
 
 		if (rate <= RATE_11M)
 			ret &= vnt_rf_write_embedded(priv, 0x0001b400);
@@ -696,10 +626,9 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 			ret &= vnt_rf_write_embedded(priv, 0x0005a400);
 		break;
 	case RF_AL2230S:
-		if (power >= AL2230_PWR_IDX_LEN)
-			return false;
+		power_setting = 0x0404090 | (power << 12);
 
-		ret &= vnt_rf_write_embedded(priv, al2230_power_table[power]);
+		ret &= vnt_rf_write_embedded(priv, power_setting);
 
 		if (rate <= RATE_11M) {
 			ret &= vnt_rf_write_embedded(priv, 0x040c1400);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
