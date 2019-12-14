Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4911F4FE
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 00:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62B22204CF;
	Sat, 14 Dec 2019 23:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sicEh6VENjCQ; Sat, 14 Dec 2019 23:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08C5820115;
	Sat, 14 Dec 2019 23:06:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 300E51BF350
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 23:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1865A88188
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 23:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7gGa0ZEEFlCR for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 23:06:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41CE788187
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 23:06:17 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id z8so1469408ioh.0
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 15:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wOp75n88mMM3YUNrKjhCWhA9PYsgmXSi0rsbjs2+ri8=;
 b=V8y8pZU884AbR1LaOYpGQsw4OmzhUtnVJrIfMkPLlIc7MGL0L3FICsxxJOT1bYSJ8v
 qAratMNX39A0EtLhg9dnlHLi+KObTJvYrB7xTe2uzxCDTJUtLJru+wK6dOrKhMXQp5T6
 ExEXm9g7NGPLd+T5gfd7/bGZA7HR7/RDO6ve487aW/49/EnoZ81jdiToNS7tOq5/3u8m
 c2YXmzAeVxAH1LU+Ib02/6XgQEUEiJi3m9maoJMoeiLFWkW9e9uZis8xOtm1vIYissSB
 Xo2taoHt96wizAMoUjXsfHBFTa++U8+f0KebxcoADSWUuEf7qk5oU6x4J5CPwIh5v+j1
 igXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wOp75n88mMM3YUNrKjhCWhA9PYsgmXSi0rsbjs2+ri8=;
 b=RT5+7dmU+oXFpagQvBNkVBEv+fGzKRHs3DtpsFcN5UcPkV76TdK8Bu9QQeRZsMRkHY
 kXSFzKJ6/b2m555ahNpVsh7oZUC5XvrmFlp0vsSQmAFIT7PblCDVNbHr1ytpC2G0i5OI
 MJf/8quGUBbVTEhBSSwx4EIA/2w3rR72d+hxdP88cGnFwEJWK6i5WPluJx7g2dSSQkwm
 wBzSUYSSLQk2a1r5PRn6YXtw0LJrVqXAdebfuW6Hzu0p7vCDYnl16W3yRtp5TsGtSHVP
 4/igJWUzHX58jEyWsNtNc8Q5Jjr3tkdcPiUojJrHjGJTM8qJuabatln1LAOlC760vCFZ
 P/tA==
X-Gm-Message-State: APjAAAXl+kq02DxI+CyFrPBIhQ7KVBBPcqQWLMutPeAhYQnfENMxYDxH
 rTl1pAs3s20YOsbH+QPo1+c=
X-Google-Smtp-Source: APXvYqzv5riKF2f6s+GAiQgXDUK4PdkDbWOnQ/fIQXoMXCazqIYoWnG47zR64ADnMqBzCF0Pp0B+zA==
X-Received: by 2002:a6b:7616:: with SMTP id g22mr13753417iom.192.1576364776367; 
 Sat, 14 Dec 2019 15:06:16 -0800 (PST)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id w21sm3208834ioc.34.2019.12.14.15.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 15:06:15 -0800 (PST)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sandhya Bankar <bankarsandhya512@gmail.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 =?UTF-8?q?Hildo=20Guillardi=20J=C3=BAnior?= <hildogjr@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192e: rtllib_module: Fix memory leak in
 alloc_rtllib
Date: Sat, 14 Dec 2019 17:05:58 -0600
Message-Id: <20191214230603.15603-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: emamd001@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the implementation of alloc_rtllib() the allocated dev is leaked in
case of ieee->pHTInfo allocation failure. Release via free_netdev(dev).

Fixes: 6869a11bff1d ("Staging: rtl8192e: Use !x instead of x == NULL")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
index 64d9feee1f39..18d898714c5c 100644
--- a/drivers/staging/rtl8192e/rtllib_module.c
+++ b/drivers/staging/rtl8192e/rtllib_module.c
@@ -125,7 +125,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
 
 	ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
 	if (!ieee->pHTInfo)
-		return NULL;
+		goto failed;
 
 	HTUpdateDefaultSetting(ieee);
 	HTInitializeHTInfo(ieee);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
