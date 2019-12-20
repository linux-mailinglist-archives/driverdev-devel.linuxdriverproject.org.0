Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9771283A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 22:15:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8529387463;
	Fri, 20 Dec 2019 21:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jD0ROSywPyE; Fri, 20 Dec 2019 21:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B39987440;
	Fri, 20 Dec 2019 21:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B47EF1BF358
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 958CB2578F
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONsKI6eQyFeT for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 21:15:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BC1042036C
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 21:15:36 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b6so10756020wrq.0
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 13:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=FLht3eUWNXs6lo9p5N6z2g5upmRAxQH3eB+FrBn/Kgc=;
 b=K0RdfDG6HBVHeVm4klEa3HTNSoqWmdeDnLjAZnzUMCUx6CuiRWJV33bxJLY3HAxPg3
 s/jgNAT5E3HwhA2DkToLyYDL9YeSOPtXR07In96Iwm2o7acrpKkyTexGUWY8WD3OqZA1
 oHVMCIv1X5gK6W2emDQepLJcx87Jt2Da3eKt4fM0KEkm+XTGBRn1gFaJrg6v37Bf0rWk
 ua+tc7h5irsbflU/FBP2ySKHo2cWf1ICbXaOsOweBEfmrODbdL3HXorfM8Cw5wv8wi7C
 mBP/Mn5SA3J7vW2OgljeTFv8bfAbULMHKG4KbibMJ+na0awZU1+5w9ZtyyYqsFNP8zCF
 sqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=FLht3eUWNXs6lo9p5N6z2g5upmRAxQH3eB+FrBn/Kgc=;
 b=i9uwCqyEk9Td0Z6JU6VPQXm4ElmacTxa603cnze/wn1zadoscOU2oDeAgp3OfU7iAl
 rYahu3YsKfWB8bgUleVqZnIE3tSPXfUByLLlRvJNRxZPugXIEJYH1GeUzo0dp9CoVNj6
 YGyMUx4O0NeWgs/BbNNiEX+nrRP3WEo1rpHje+5C8Wf2F0yv6zd4DgsOPFKabZNgPDIw
 JoDrbspC2Hf6K/WCkYykig9UDowj0gTRXEXRjjh5U3efmolZ3szFUekj2b8MQXuZYdE4
 F6X0xqQ0mrMfhscc2HUikZsBfWZPnBOwcKIPkBlnONIk5Dc3JttH5NVe97Y7xLHfnEMr
 ltxA==
X-Gm-Message-State: APjAAAUeN6NZznYcAtSyWQpS8XtkrC1W8g2elTyWlZF/Cu0QXLhH3vsV
 43LmRF25ZolBqbNbgRJRkRNcJ99X
X-Google-Smtp-Source: APXvYqyKMmz1OMIXF+g+uS6vq8IyZPozcmqrVQeWnM5ZH8BxmmyhbQbIi2dxgM9y8nOCUBt9wYnhlQ==
X-Received: by 2002:a5d:6211:: with SMTP id y17mr17090318wru.344.1576876535163; 
 Fri, 20 Dec 2019 13:15:35 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.136.threembb.co.uk. [92.40.248.136])
 by smtp.gmail.com with ESMTPSA id
 g199sm11800298wmg.12.2019.12.20.13.15.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 13:15:34 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 4/5] staging: vt6656: remove bool from vnt_radio_power_on ret
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <cc52b67c-9ef8-3e57-815a-44d10701919e@gmail.com>
Date: Fri, 20 Dec 2019 21:15:33 +0000
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

The driver uses logical only error checking a bool true would flag error.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 56cd77fd9ea0..7958fc165462 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -719,7 +719,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = true;
+	int ret = 0;
 
 	vnt_exit_deep_sleep(priv);
 
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
