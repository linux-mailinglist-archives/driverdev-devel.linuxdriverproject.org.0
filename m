Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D651283A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 22:15:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CC0287425;
	Fri, 20 Dec 2019 21:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bc1a_WqrV1EI; Fri, 20 Dec 2019 21:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6248187434;
	Fri, 20 Dec 2019 21:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 557E41BF358
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37D05259CB
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CypfVdBnB-L9 for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 21:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F8AD2578F
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 21:15:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b6so10755231wrq.0
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 13:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=xm/1NCEN0WBASiVxwgcAUKEJS4gfbf7QTfNIN9Q2FH8=;
 b=QxkJ+N8ws2ERonW6n0Bdw/Y6VsPa9S3i+m74t9EVBP0SGJp9yZSO7zQ0P9Ho/LIhG6
 YKQjf1AsZzSQ+qCDKwMAuSHDNXyB8CCyaSc2+yvlynEL073xIbqRgbeHfEp0L3YdYzuo
 evTiDoAYCp/aAmgRBsEFuSu+t/IfxWwQDUQA16xZezlvOro2FdRJII3qb1WH5JzUf1gp
 s2qZIiLzt1t+VNcLC4DvFO4u7hsffwjDCyA2MrQYJ/IoqjZ8ivAzFiloOSW1UCMO34Ke
 TyqQFinb+F2Wqpu/8w1KeTCB+LegQ6T0jkUBjF7mjGomn3qjTApfcfPGn25PDCAR09Bz
 RpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=xm/1NCEN0WBASiVxwgcAUKEJS4gfbf7QTfNIN9Q2FH8=;
 b=mJa7Wb7PelhENBWk3/q06L00LJFLJIodPsg2Vo+a3NnGDEzsuS5Tn8I+CcJFTslBhn
 FVr9BFK6gAy8I/y+n1Nl95PAVs56sGDSjeTHtvqD61JiV9h0znpFaa+hNNYPs8453t9H
 W1nQWo8D7laeVCnUCrE+giWMxaOqS130tWmcXsehZsraH6e6pKg2lvGAxau3tpsqWtYG
 SSJs3qXmI5pSBaQKIx97r7HFauyWm/2+Cswre80r1bhUPwDbswMrQzSinY5XGDfbJwIA
 tlAqFj45z68BK0rAZgMXWO2LJUJRyETQo9KprXf/8Cz8WDmzeJkQS48D0l5rR9PcPNLl
 cA3g==
X-Gm-Message-State: APjAAAVqU56ctNcR4zMq5YnZj4WG55zzOcr1mmVs0xyx/H8x4SDhJHV5
 3rvWzFb/saEX7sqhm0XFJjXVp12o
X-Google-Smtp-Source: APXvYqyXOlZ5NdiKayWNhpOl7zVteEv8mq3tLWSZfWSlZkuRt3Nc6To9J7Y9XBqxhT//6LGmlWX7YA==
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr16957653wre.156.1576876510628; 
 Fri, 20 Dec 2019 13:15:10 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.136.threembb.co.uk. [92.40.248.136])
 by smtp.gmail.com with ESMTPSA id
 k11sm10865818wmc.20.2019.12.20.13.15.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 13:15:10 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/5] staging: vt6656: correct return of vnt_init_registers.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <072ec0b3-425f-277e-130c-1e3a116c90d6@gmail.com>
Date: Fri, 20 Dec 2019 21:15:09 +0000
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

The driver standard error returns remove bool false conditions.

Cc: stable <stable@vger.kernel.org> # v5.3+
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 4ac85ecb0921..4a5d741f94f5 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -949,7 +949,7 @@ static const struct ieee80211_ops vnt_mac_ops = {
 
 int vnt_init(struct vnt_private *priv)
 {
-	if (!(vnt_init_registers(priv)))
+	if (vnt_init_registers(priv))
 		return -EAGAIN;
 
 	SET_IEEE80211_PERM_ADDR(priv->hw, priv->permanent_net_addr);
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
