Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0662D8E9A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9497C8740B;
	Sun, 13 Dec 2020 16:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIhIex0EEKxW; Sun, 13 Dec 2020 16:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0954987396;
	Sun, 13 Dec 2020 16:17:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D39501BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE9AD86D93
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2jCIB0i3ptc for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F66986D0F
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:31 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r7so13981492wrc.5
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d+qBYzhMTB1Wzp8xi32BRlc6s23LYHlnQSW4DIZrTQE=;
 b=ZEIbaQwK4Eg+4j8a01m4Enb6LHDVS2HC/cI7yynOS9U2GqeZfdNYe26GdbmYgDa8EN
 UYBnO937i/xRSXVo8WGE9qZMn7eKdwRLB/qPLQ4v6oI8K1mXrkcGE+hSnZ4dzd7u+8qN
 r7CdiNX2SF+gL/ztuE4+I7qYctMD7XYEUYa0yZksUDG9sZnaEIx0rcZnENezTCfgvXnJ
 RUIIMds0Hx1wbzkrtcNW0q2Nc2IKH+H4ab9t0uHKSVbPMXMGlEkEVPRQXFOrRDZvHGbw
 yGeEuBgw3wAZw3A/qLzSfrTbBONIDs+2tZiu5zy5rHH7t7Ouv6G3AjgCNr58XJd39PdB
 2ejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d+qBYzhMTB1Wzp8xi32BRlc6s23LYHlnQSW4DIZrTQE=;
 b=SHqVPc3CmbmUxTKmf3sRebCEXsXIDNCAK90prvzZxgyPxj84fZqKYn+t7QY5f9Cbrk
 N8JVOsmElnRendLEa6J0bEtfY5zFHgkz6w75h8usc3zxk+ZahGoqIN+FSePvT7NclxZy
 iwNBRfz9dB5cvaVeX/xwRAzvGxuUt/kBoZvJyMBskttdUDEb0d9ohY80a5it8D7cXdfk
 cFpBMFCQo9paGF7L2lvSoTEQMOJ9DhglwPw0bhtthW7DZZKqK52jXX5mTU8ljprImF/w
 4zCa3z85XhRmRnhWkt9/o9Xed4K2BQR5t65IR98W2aU48JnsaBaIbu1oA4fkxP3JGdP9
 YZxg==
X-Gm-Message-State: AOAM530FuENikAr6ogO4s7n/nRXWhjQQsLBBvZA6Xu4pOjU2BlkpfXhD
 MLggF4QydpqO8/3v/7+/hTw=
X-Google-Smtp-Source: ABdhPJyvY3ww7ODL0QierPoakFmNPsYRid6N4+4QjmL2PI8Bb4wlecxAnlQjp8AZ11Ms1rSaPEKjRw==
X-Received: by 2002:adf:a3ca:: with SMTP id m10mr24759846wrb.228.1607876249739; 
 Sun, 13 Dec 2020 08:17:29 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:29 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 5/8] pinctrl: ralink: rt2880: delete not needed error message
Date: Sun, 13 Dec 2020 17:17:18 +0100
Message-Id: <20201213161721.6514-6-sergio.paracuellos@gmail.com>
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

When '-ENOMEM' is returned there is not need at all to
add custom error messages. Hence delete it.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 3c3336b724ca..4725aa34328a 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -279,10 +279,8 @@ static int rt2880_pinmux_pins(struct rt2880_priv *p)
 	/* the pads needed to tell pinctrl about our pins */
 	p->pads = devm_kcalloc(p->dev, p->max_pins,
 			       sizeof(struct pinctrl_pin_desc), GFP_KERNEL);
-	if (!p->pads || !p->gpio) {
-		dev_err(p->dev, "Failed to allocate gpio data\n");
+	if (!p->pads || !p->gpio)
 		return -ENOMEM;
-	}
 
 	memset(p->gpio, 1, sizeof(u8) * p->max_pins);
 	for (i = 0; i < p->func_count; i++) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
