Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4244D134F03
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 22:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4BF185E06;
	Wed,  8 Jan 2020 21:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QzPCvX9Cdw9m; Wed,  8 Jan 2020 21:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B36284595;
	Wed,  8 Jan 2020 21:41:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E00F1BF5AD
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8AA6587A80
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZUX4oGdIFfx for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 21:41:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C039C87A52
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 21:41:07 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g17so5081014wro.2
 for <devel@driverdev.osuosl.org>; Wed, 08 Jan 2020 13:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=7+8JHSset24mhA/88SWEN9HFbCXPNWcTigvJqDJedwE=;
 b=qm3VxBLZ9/6v3TazvqBYgZC2+lDnerm4FH2s+56j16uQHOSfdKVp++eAYkghvVpGdL
 WGpevaI6i4NELoLoTf0n+DD735BCk1xmxmbbk3ZImZ8ziq4IhLS5c70myhHNK1eWwkKq
 038RZ8Zqta5pd26HK3tZlyfUyu/lanwtPHcFP8Z6VnrFwLKM5b/HcR2FF3lOLluAgM4w
 T3eLjulldYgVjU9t58x6ct1tFiLjEOpQqv/cgP903pWx3Ipd5sC+JH+NgT2N5TGVeGBc
 cZtkKhpuDx9TwgB6xj4AhZ8arucL0WUS7FQKLUw/jGVX1bX7ZErSFyg7O52KoPyytF61
 dVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=7+8JHSset24mhA/88SWEN9HFbCXPNWcTigvJqDJedwE=;
 b=pbA+gc5YyUu0xD1uFh2a3Wnu6ukoWHyTb7cZ6oHv3Bx+X3bRbLpqolFfkygjKUFJGJ
 YeM+6/v6+fe6iTce/iXxsSRbk7J75YNWPWypI01vZDtnv7PxjmQiBAjBjRP4WUzA2VRC
 Rbdow5NzVTfkZyiEAEYdABuhSmRja1byXDLcF8+9bDyyucfvOl1l9qsf3CQCWRwRSFaF
 FZuR9TSdbwDXi8ezZK11HE9PiJeiXIcu3qb+Oa6x/HMEtEX6BRJ+J8iCdjxcmdgyJVnF
 3kvL9kZXz54sjDs7Ct0TU5s1X8WbWL9VZ2a+QEns1OYwQUJyZIoHaoQy89E8T8Gtqttc
 IXSA==
X-Gm-Message-State: APjAAAXg7IOMWsrRX7yjKFFOL3tYjQhaBYbCZxjN5fj0+dft/TaLNmYB
 jU5jqWQTuRWw3a8FguokZV1rHiPQ
X-Google-Smtp-Source: APXvYqwu/Un1pMoCKMP1Pk2xBL7bX9PuyMR0hbQkeXl++dAhIk6rOURPrz+1hyayj1ZTbS+GcOoVjA==
X-Received: by 2002:a05:6000:11c3:: with SMTP id
 i3mr6888946wrx.244.1578519665869; 
 Wed, 08 Jan 2020 13:41:05 -0800 (PST)
Received: from [192.168.43.18] (188.29.164.206.threembb.co.uk.
 [188.29.164.206])
 by smtp.gmail.com with ESMTPSA id c2sm5694770wrp.46.2020.01.08.13.41.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:41:05 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/4] staging: vt6656: correct packet types for CTS protect,
 mode.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <9c1323ff-dbb3-0eaa-43e1-9453f7390dc0@gmail.com>
Date: Wed, 8 Jan 2020 21:40:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


It appears that the driver still transmits in CTS protect mode even
though it is not enabled in mac80211.

That is both packet types PK_TYPE_11GA and PK_TYPE_11GB both use CTS protect.
The only difference between them GA does not use B rates.

Find if only B rate in GB or GA in protect mode otherwise transmit packets
as PK_TYPE_11A.

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h |  2 ++
 drivers/staging/vt6656/rxtx.c   | 12 ++++++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 50e1c8918040..e2fabe818b19 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -52,6 +52,8 @@
 #define RATE_AUTO	12
 
 #define MAX_RATE			12
+#define VNT_B_RATES	(BIT(RATE_1M) | BIT(RATE_2M) |\
+			BIT(RATE_5M) | BIT(RATE_11M))
 
 /*
  * device specific
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index f9020a4f7bbf..39b557511b24 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -815,10 +815,14 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 		if (info->band == NL80211_BAND_5GHZ) {
 			pkt_type = PK_TYPE_11A;
 		} else {
-			if (tx_rate->flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
-				pkt_type = PK_TYPE_11GB;
-			else
-				pkt_type = PK_TYPE_11GA;
+			if (tx_rate->flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
+				if (priv->basic_rates & VNT_B_RATES)
+					pkt_type = PK_TYPE_11GB;
+				else
+					pkt_type = PK_TYPE_11GA;
+			} else {
+				pkt_type = PK_TYPE_11A;
+			}
 		}
 	} else {
 		pkt_type = PK_TYPE_11B;
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
