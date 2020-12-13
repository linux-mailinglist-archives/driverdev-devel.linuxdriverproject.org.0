Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E752D8E9C
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C77648741E;
	Sun, 13 Dec 2020 16:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qgb09icgtCS7; Sun, 13 Dec 2020 16:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F7AE871D4;
	Sun, 13 Dec 2020 16:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7581BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B3AB85E28
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ulonEplktjhg for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3431385DE1
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id q75so13041585wme.2
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w9VFIJdHj+SJxF4z+WgbqJ8x7eNPsM9DBQcH2wJnArM=;
 b=DgvvQc0NAh1OKOf+xsxZRjBpmVYIChLVpTygScao4JsyKQZOXnJ995flh2Z2WHhXjS
 VU/iMisOaB4SSkMVJ64YnxbYHFcBhhgHnBSWQ0qBOqmg64ucF0sTz89qTDee+v3/FwiT
 WuoMfkWSGEz8J5H4wSIBSk9rnCtdBM/yH3U/TLLWJHV7PNnYKhWyd+qcr1s/l9zmK/sg
 RI7aD+YPTWWVZPrHNVa/GakA3b798KuLaSScKfbCCCB45BhFr/yBSMg7YcnX7MfUEvXd
 r6j/lDdOzcOf267FQjO2UJwx17Mp6zPsKm9bIvIeaozT50bW+fA4B/FbivMZQOQTaw/F
 UBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w9VFIJdHj+SJxF4z+WgbqJ8x7eNPsM9DBQcH2wJnArM=;
 b=haHtV18/uh/8GET6CZEzh3wcnaqzXVVWWj0pMt6JYGxycdQGxQsQ3HnlLOQRm+aQgy
 r1EC8pFj6EopxWcmiBj8+s6nplBORDeKzizsGI1iQbuwnb4j4z0DhhdLuVmBUgazdeSE
 ipv+bwaeF0zYE/2NtIt4OVA7wdeyNbptgfTuk8QyO+mOauIOsorBjqMS8gwQD/rut+YT
 ya0+TTUd71Oxl9cqcHpbxZ3q0Kigpg4ZK+Ij4E0EXtyvNgwpq2oktvy8n3K24PMJHXcs
 8Oww0rrRZHkVL0aQw1jlxWjH3PxPHvbZbNycBRWKRARQJ79Vqt5M4SIwvsiOlPJFKKcw
 kTig==
X-Gm-Message-State: AOAM531YGMqBkgcrg+rkJ58OeA4UER+rNuPb51w7nJcnJn/7UjF3etPV
 XgNT1G10gcMPiqn2EuhkWPM=
X-Google-Smtp-Source: ABdhPJyTeWtycO/1IXRhvCbaw1614hdJtEa+J6vkyRpI4RbtVAsHskSG3As8u1WNf7N78Tpig7KSGw==
X-Received: by 2002:a7b:c751:: with SMTP id w17mr23205450wmk.121.1607876250816; 
 Sun, 13 Dec 2020 08:17:30 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:30 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 6/8] pinctrl: ralink: rt2880: preserve error codes
Date: Sun, 13 Dec 2020 17:17:19 +0100
Message-Id: <20201213161721.6514-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some paths in probe function are returning '-EINVAL'
instead of preserve original code from called functions.
Change them to preserve all of them.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 4725aa34328a..5af1c8a20322 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -315,6 +315,7 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 {
 	struct rt2880_priv *p;
 	struct pinctrl_dev *dev;
+	int err;
 
 	if (!rt2880_pinmux_data)
 		return -ENOTSUPP;
@@ -330,13 +331,16 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, p);
 
 	/* init the device */
-	if (rt2880_pinmux_index(p)) {
+	err = rt2880_pinmux_index(p);
+	if (err) {
 		dev_err(&pdev->dev, "failed to load index\n");
-		return -EINVAL;
+		return err;
 	}
-	if (rt2880_pinmux_pins(p)) {
+
+	err = rt2880_pinmux_pins(p);
+	if (err) {
 		dev_err(&pdev->dev, "failed to load pins\n");
-		return -EINVAL;
+		return err;
 	}
 	dev = pinctrl_register(p->desc, &pdev->dev, p);
 	if (IS_ERR(dev))
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
