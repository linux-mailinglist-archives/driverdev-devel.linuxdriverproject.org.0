Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD96A2730F3
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 19:41:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6115786429;
	Mon, 21 Sep 2020 17:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dw7fE0BZt0LT; Mon, 21 Sep 2020 17:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D0A386416;
	Mon, 21 Sep 2020 17:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19C3C1BF328
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 17:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1328A870F2
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 17:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STh0HbwuZkXb for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 17:41:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 31770870B0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 17:41:26 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z1so13712238wrt.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJBvE0A2W0OTlrwgVJMiJqMH1jsisTtDfheWFrFevdk=;
 b=Mk8oxXVjBWstfqcdMc09xnyHcvLWcVVP6apT0fZ1+4yYrhwoKhwzDa9YQjAGUQg6wc
 gzD2MJVvLIha2BK135+vhf61x4eXDPgmlYx814XNs4ISswVtaLiL725EYR+VvpzYU1A+
 D3IVBlwl6Ls7SwY1YGf/sb/guZ9JUOFpcVzjt9n8mQIjdqy1olRgJ8K2oiqb4Fx801Py
 /Us/GNHGpXw0iJZifaWZT7rLs5Xe91gVQeOAH0AfzbAvx1hmaI9ydMR5gCAvFqP2HfSn
 n7SSqNjhFRn6kBRwwJbyv33nlG3EEhavTKnT3cWTjmQQY0lHLzjT2fK137t6OMWdQamQ
 fbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJBvE0A2W0OTlrwgVJMiJqMH1jsisTtDfheWFrFevdk=;
 b=AGIUZCPpQuUCVGgoPxkygzFJjBoyFEIaNaqz+zRT58dH5LbUpUFnTtJtYXXrko3szA
 JJry/3COn5E8dmt5QSuZOTCgkFJ2idkFN5QlGgcOPKQYogZYwglq7REk6T63DCRpNhzF
 F0TjwLV6iAJehQOOQ1PB0QBuxxnF1dpRk/DVYw050NFA3W3B27j3toB7gtVD3bhDoIpg
 CvDJgwLsCD+2We6zinSmuDWqHR+pxrY5/QyNdBWfbcCKHmKpH0q3AjXjr7sS/8oI6c+1
 a4KVBS1eX0TvBEzTGbZrI6vhHOnCxT3x4S0abiNRGnu7Olk7PKmIhw1n7r6lcxb63RMK
 1wBQ==
X-Gm-Message-State: AOAM530TwcR7yn5EoOmKamuuIAs/6QMdEVfdN8nyPe/J8HYFPv2xFleW
 Zxzp6fs8F8njrsm+dH2egkQ=
X-Google-Smtp-Source: ABdhPJwi8CT2p/h0YeQ/9XzCEQ0SA2fuzhmf1Pi11eB9RCogqPc9Nu/f21jLgoLwrKslTwMyKcgh6A==
X-Received: by 2002:adf:e289:: with SMTP id v9mr956308wri.14.1600710084399;
 Mon, 21 Sep 2020 10:41:24 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id b11sm21538674wrt.38.2020.09.21.10.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 10:41:23 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <a.dewar@sussex.ac.uk>
To: 
Subject: [PATCH] staging: hikey9xx: Fix incorrect assignement
Date: Mon, 21 Sep 2020 18:41:13 +0100
Message-Id: <20200921174113.19566-1-a.dewar@sussex.ac.uk>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Alex Dewar <a.dewar@sussex.ac.uk>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In hi3670_phy_probe(), when reading property tx-vboost-lvl fails, its
default value is assigned to priv->eye_diagram_param, rather than
priv->tx_vboost_lvl. Fix this.

Fixes: 8971a3b880b2 ("staging: hikey9xx: add USB physical layer for Kirin 3670")
Addresses-Coverity: CID 1497107: Incorrect expression (COPY_PASTE_ERROR)
Signed-off-by: Alex Dewar <a.dewar@sussex.ac.uk>
---
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
