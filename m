Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3522F123A5C
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 23:58:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5429D87E79;
	Tue, 17 Dec 2019 22:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhvgA8l6AAOs; Tue, 17 Dec 2019 22:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91F0A875AD;
	Tue, 17 Dec 2019 22:58:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1191BF3E3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 22:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1804F20479
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 22:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ye+MObSUL-xq for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 22:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mta-p6.oit.umn.edu (mta-p6.oit.umn.edu [134.84.196.206])
 by silver.osuosl.org (Postfix) with ESMTPS id BBAB12041A
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 22:58:40 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p6.oit.umn.edu (Postfix) with ESMTP id 47ctq41H10z9vZ1f
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 22:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p6.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p6.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fbR2PsCJokmx for <devel@driverdev.osuosl.org>;
 Tue, 17 Dec 2019 16:58:40 -0600 (CST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com
 [209.85.219.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p6.oit.umn.edu (Postfix) with ESMTPS id 47ctq40DqVz9vYVL
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:58:39 -0600 (CST)
Received: by mail-yb1-f199.google.com with SMTP id 132so43164ybd.3
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 14:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o+DniVWRQRuuRULTt2ujrzvnukyX1kBCOSc7XPdFvCE=;
 b=VYt6Pe/ibVhF8EwUqqP2ezD/BN0JKQLt50DbeCujZ7gLON92O9gMCRaGKpaSWEaTP4
 GDDDjBBmQya7oN/wrQsp0uvpjtB74TjKXWiyU5x9Y12zN1fRY7ndAes0zEZ3GuEQB3qD
 Gw3WWShH2yyJ9Q8U+Lro+3tdvjMWdxwQYJoMtY+X4jhTmNIBnhu4ObdUTDVYXoU7dJ4i
 bQF331CLPi5BBk4MOOXSwDyG0t40V+Fy5hjshWeCbNJ+x8/bh2DJHus1DbvqeEFv59+/
 Em05MaPtSXOI2qbLmg7T9U9aN0iaJxjsH7F/kAaIOP/UWyw+JwtLC92Vs1zb/yn4UbIU
 WjIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o+DniVWRQRuuRULTt2ujrzvnukyX1kBCOSc7XPdFvCE=;
 b=npmcPvfJ8K1aGiNaUjpzt1WS2HNxFzBiZoxgIw5TweQZPysStg02rBXg3YwU0WAm5U
 XGdt4OhjXx7OOXZ4wPcOeYWdNI2YHCTybbLwClEUkO7IvFEE0z+p+J6gw9IdZuTS2QOO
 mHLYrJ2Q6Ad5vbkeph1pM4rJowiQHK19L5/eZQRv2PNgeH1kCuu9UpqmGdc8Z/dxdS+c
 U4y3XXmpvhloCuTCv2T2KnA6qGYC3Jz4iWdy0Jg/SJFTnPRmagiIBIzDSx9aFu51Arw4
 hNkO5B1LX3WfQObooIXUV4hHV0t0RIarkShlewdJE931jPitz6VrvNgN1M+08s987CR1
 57Pw==
X-Gm-Message-State: APjAAAWq5hVEdF7xnru862lr0eFXfAkylmi5k3HGm8OFob6+QnNMRox+
 MVEJcmjP6SCR4WdNIWV0k0H+zAxnffeKWSjNdx9QpQiyZaJIYxcg154qLJC6VwZoqiK7eSE6kQE
 V8Xa3CECz4Xb7p52aQCcaRCy7ag==
X-Received: by 2002:a0d:d58d:: with SMTP id x135mr1006463ywd.3.1576623519536; 
 Tue, 17 Dec 2019 14:58:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqzmX6D7gn9+9Ql2XJypQv6Pffkm1nQ5KJROMUeXRvP4hpQREmfGhm2eszWNkQ688r6A4W3lPQ==
X-Received: by 2002:a0d:d58d:: with SMTP id x135mr1006450ywd.3.1576623519311; 
 Tue, 17 Dec 2019 14:58:39 -0800 (PST)
Received: from cs-u-syssec1.dtc.umn.edu (cs-u-syssec1.cs.umn.edu.
 [128.101.106.66])
 by smtp.gmail.com with ESMTPSA id e76sm140926ywe.25.2019.12.17.14.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 14:58:39 -0800 (PST)
From: Aditya Pakki <pakki001@umn.edu>
To: pakki001@umn.edu
Subject: [PATCH v2] staging: kpc2000: remove unnecessary assertion on priv
Date: Tue, 17 Dec 2019 16:58:24 -0600
Message-Id: <20191217225830.4018-1-pakki001@umn.edu>
X-Mailer: git-send-email 2.20.1
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
Cc: Bharath Vedartham <linux.bhar@gmail.com>, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Harsh Jain <harshjain32@gmail.com>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>,
 devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In kpc_dma_transfer(), the assertion that priv is NULL is never
satisfied. The two callers of the function, dereference the priv
pointer before the call is executed. This patch removes the
unnecessary BUG_ON call.

Signed-off-by: Aditya Pakki <pakki001@umn.edu>
---
v1: Replace the recovery code by removing the assertion, as suggested
by Greg Kroah-Hartman.
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index cb52bd9a6d2f..61d762535823 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -49,7 +49,6 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	u64 dma_addr;
 	u64 user_ctl;
 
-	BUG_ON(priv == NULL);
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
