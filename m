Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 717BA2734D8
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 14B6320523;
	Mon, 21 Sep 2020 21:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEbqd+JzI-Y7; Mon, 21 Sep 2020 21:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBB2620789;
	Mon, 21 Sep 2020 21:22:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F041BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C5CB20530
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TPVQZkN9cYo for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BD4920523
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:22:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g4so14430192wrs.5
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2WNsktcDavZk4ZN1zKc7CPJyK42SGX8N25x4feTg0UE=;
 b=XkgmdEJ+ZWBqAyrUX/UlytyqOCzWbAX69CbEIOzsrZZ9gIv1v8iPo8919WVbMwWZNg
 hdS33nOjokN0MUUOEEWlWrGOwLyD9ek2rvond8QD4NEwWFtyzUMwZ+eqqpTohtytwzyu
 loQ09JmDFFqOVaODKOJ2g97uSYuafKDFVIBs0EQspcNHiN8QHapQQGdbePiG+mTalid4
 8pmgfAGRFYy6emdBOQ7qe3QAJ785ZTTBzqOeQMXEv4Ti7p3xyq6LSTchkzJAmrwVzYlA
 xDtedEl/aHcKmZCvFG509y5rcZtv0GiW0+5szVH2vOjMiPdBPVzZNZiTi3UchvIsKJC0
 2BBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2WNsktcDavZk4ZN1zKc7CPJyK42SGX8N25x4feTg0UE=;
 b=g75p0H9+xip/wpNLNbdZabA2uJSDSmE25wfEjx08WZpTHU1s+rM6RH1RTMOSVKEoUb
 oK5UQzBvKZiue2osGcX0d2vOlu13PM7YnI8mMaddu7bPKPn2WPhOElS/pLdyQWTRllV+
 2KN8H5SKpzuuAl10WN30jK6BLoQr+491gkgOQ34biLinIL4QKFL+fcb5bo7wz6j+I6rd
 mh+NXfB4w2NtVz2kR54gNUkDEZ94/27ZM5xlild98K+ZK5GOV4lFKg9Hk0/CNW0LAZ38
 5VZb6JuUSouP616/gjUwD2EUvAVgD9PIPCZ7fAE5sai6F87vI30LbWYbTEVE6Z0htMnC
 Fj5A==
X-Gm-Message-State: AOAM532vuWWlEFOo2AXlO+kD4HkB3AbucQ41QTY8Vz2o3rWDIhh+0jAt
 XbF1tuMCBzQDcjQgw0E1ZQU=
X-Google-Smtp-Source: ABdhPJwqp8PBd7JmvKVR7T/Rn4pZpfROSAjO67YtAc+kLyiStHUwHpb/5tmZLjMmJYyYfT9LMrIO5Q==
X-Received: by 2002:a5d:554c:: with SMTP id g12mr1741476wrw.294.1600723371849; 
 Mon, 21 Sep 2020 14:22:51 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id n4sm22623562wrp.61.2020.09.21.14.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:22:51 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH v2] staging: hikey9xx: Fix incorrect assignment
Date: Mon, 21 Sep 2020 22:21:47 +0100
Message-Id: <20200921212146.34662-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921174113.19566-1-a.dewar@sussex.ac.uk>
References: <20200921174113.19566-1-a.dewar@sussex.ac.uk>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In hi3670_phy_probe(), when reading property tx-vboost-lvl fails, its
default value is assigned to priv->eye_diagram_param, rather than to
priv->tx_vboost_lvl. Fix this.

Fixes: 8971a3b880b2 ("staging: hikey9xx: add USB physical layer for Kirin 3670")
Addresses-Coverity: CID 1497107: Incorrect expression (COPY_PASTE_ERROR)
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
v2: Fix my email address and a typo in title

 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 42dbc20a0b9a..4fc013911a78 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -640,7 +640,7 @@ static int hi3670_phy_probe(struct platform_device *pdev)
 
 	if (of_property_read_u32(dev->of_node, "hisilicon,tx-vboost-lvl",
 				 &priv->tx_vboost_lvl))
-		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_VBOOST;
+		priv->tx_vboost_lvl = KIRIN970_USB_DEFAULT_PHY_VBOOST;
 
 	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
 	if (IS_ERR(phy))
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
