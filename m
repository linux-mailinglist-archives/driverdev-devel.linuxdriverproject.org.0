Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CDF2D8E9D
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3180B85E28;
	Sun, 13 Dec 2020 16:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZl3zWFZ8fMJ; Sun, 13 Dec 2020 16:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32FFD85C54;
	Sun, 13 Dec 2020 16:17:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B87A51BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B576987352
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wM73tAOKPeUO for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 45F75871C6
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:33 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id d26so772020wrb.12
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3TZb1oXr2CFfySaD0gQhDI23CCFyEFYHoaiVTmK47IU=;
 b=fSjuQqegVO2OnTO2KpRl8gXR23wJ0b9x5sI6nLyKMWm8wQqWJLwpm7J/o3N0PsF9gM
 P0IrEgBGIDUcfsA77w4gQb11yL79yeQ0v3Cabf3yppxl4PwirG+7w6P5l+bB4fzV/iiP
 1glOboCcOUkGs4sNKEzP//eow5rkiD19sstzJQyDTnmELy66XPsKQoAjIw+IBODrFOLI
 O9B5U79RG8xNSojjteJKU8+WRVfISCOu1EWZdlv3hsvAvAO2LmmNJdsfQ00sBB1x0gBx
 opwmUNYrbFelHliABo8W0QM9/3hZaHmMyodW4KJ9RTAdrlwPaN+DJakFJXLU9s8+xGIf
 RJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3TZb1oXr2CFfySaD0gQhDI23CCFyEFYHoaiVTmK47IU=;
 b=WpNlwf3W7pO/kqzSA0KelgwhG/E4dSuvgVF6wdZM8ZAEPIWGMeB5UAEmD+vEFOqDGN
 a2XBRo5JOS9L1yC8/b7L8bYT95PSCBmcSJfSG610sWDBJnGuiCsR335gVX7CAM7QrTJ4
 lDi9CPKzsimrJx8vOZoHmlnKS47tXObcDDRJlT8sU8DWy509vhtaY62Iet1brHBeEp7K
 LJvs6MSOcSc7JQKfqMnh+u5pgfimNB5inOh+sS9OUa9E3F2F793/KnSHGoPWSHF7739B
 8dlx/+0TlfeVj0ECaGC1MmbBTEPlrMerxYDqo0Hdz91KlTNwm5HfztjKgGs8KPQnqXCx
 SfGw==
X-Gm-Message-State: AOAM532oEwoUIt4/iId5wbhp341I50qS2YGCKjV3xREtCB2n/+Wrb4a9
 dFQ9E7m8ZFL5gyK+vIiQsEI=
X-Google-Smtp-Source: ABdhPJz9L0Im5swqMG5cHeuSZzXmHd5yDHRImptEViZ08Hl/+enm94hZujAc0lmCHqupqDdviczkbw==
X-Received: by 2002:adf:ef06:: with SMTP id e6mr17984953wro.231.1607876251826; 
 Sun, 13 Dec 2020 08:17:31 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:31 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 7/8]  pinctrl: ralink: rt2880: use 'PTR_ERR_OR_ZERO'
Date: Sun, 13 Dec 2020 17:17:20 +0100
Message-Id: <20201213161721.6514-8-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 Avoid some boilerplate code using 'PTR_ERR_OR_ZERO'
 in probe function.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 5af1c8a20322..983da62ff3be 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -343,10 +343,8 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 		return err;
 	}
 	dev = pinctrl_register(p->desc, &pdev->dev, p);
-	if (IS_ERR(dev))
-		return PTR_ERR(dev);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(dev);
 }
 
 static const struct of_device_id rt2880_pinmux_match[] = {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
