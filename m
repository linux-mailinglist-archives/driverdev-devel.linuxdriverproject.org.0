Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC04D229280
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 09:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF610203F4;
	Wed, 22 Jul 2020 07:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8GOCWlxd-pB; Wed, 22 Jul 2020 07:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 78130203D0;
	Wed, 22 Jul 2020 07:46:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC67A1BF40D
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 07:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0EBB203BB
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 07:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLMoRApBQTgL for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 07:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 4553A20365
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 07:46:21 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id q4so1472435lji.2
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 00:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56QU0t7u7xSUiVUJIEVCoYxgh2dF48Yz7dIeyfKHZl4=;
 b=yw6QcOZjhBxpGj3jWYclmrcMKyMVfAU8yPM2O2URPQC8wN+f8dgeeVjTeIpjyYi/tf
 m78CGzw8NeOof0uwCOxS2zCNhmKa8WuOSlGuxWu+UGfT6JDZjn/dW/p2gCvuY6X8fWWZ
 b/XFg+UqpIskugYmH2pVhnIIR3XsBs2WkFBHn+5QdibWo687HYFNQ6UVKvT6YG5axGkl
 OMgaF2AmnwYQd6s7LgvlY0NUTgYVtA1pwFhdD0srBhTiV4u3L4Qd/7b8OBFwE+QcUqA6
 1akbJD/CL0/NDzoIAudWbiTUXu7WBvGYCL16dcxF2loJdAym2ld0xvwDwSX1oqLLjSDw
 N5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56QU0t7u7xSUiVUJIEVCoYxgh2dF48Yz7dIeyfKHZl4=;
 b=q5f4R9h6xZa6H1KkO2LWHVeb0yIhla4qDBT1h3SRBaqxgpqjsL3sOFHERshpH/lmKI
 wBo985sBrmW48uBXL6q3NNKuvRAca/kcYGHTMLb0p0+ugOnI5134kr1Jkp/qN5xax9l9
 BfVijBz5ksBSGS5t9kSGsHMhyqYCC3g+hBt1oBr9FGv3Kgn1XmHoTX4ob/ud3aLv2DLF
 65LYI8KAUg2GAlWYVUX0ECe3Mcf8uBmKwup8Nqc/0qnFuo514wwLWBg0QVYEXA/4xtXO
 JI/GS9ogT84gqlg0w121wKr5r4sOjWzXSBYMIOr6d8ZP8ToAJlQNfqhDOUMtxVdoIP1j
 57nA==
X-Gm-Message-State: AOAM5300OpjIolWRZq95I8JF5qy7nJimnJzHJx3s5Jbtnnz019CBFjf+
 ZyUnoF2a6WBbTJReXu2ws7Cnxw==
X-Google-Smtp-Source: ABdhPJzlgYOplXsFnI8qJUsV0WPUcaMp8arVqJKFs0Oeyop8w8nGh+iUPBccPQrMYpfZn2QhY9CuvA==
X-Received: by 2002:a05:651c:151:: with SMTP id
 c17mr13905693ljd.196.1595403979017; 
 Wed, 22 Jul 2020 00:46:19 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id y22sm2026689lfg.7.2020.07.22.00.46.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 00:46:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: gpio: Use irqchip template
Date: Wed, 22 Jul 2020 09:44:14 +0200
Message-Id: <20200722074414.48457-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 Johan Hovold <johan@kernel.org>, Nishad Kamdar <nishadkamdar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This makes the driver use the irqchip template to assign
properties to the gpio_irq_chip instead of using the
explicit calls to gpiochip_irqchip_add(). The irqchip is
instead added while adding the gpiochip.

Cc: Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Johan Hovold <johan@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/staging/greybus/gpio.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
index 36d99f9e419e..7e6347fe93f9 100644
--- a/drivers/staging/greybus/gpio.c
+++ b/drivers/staging/greybus/gpio.c
@@ -504,6 +504,7 @@ static int gb_gpio_probe(struct gbphy_device *gbphy_dev,
 	struct gb_connection *connection;
 	struct gb_gpio_controller *ggc;
 	struct gpio_chip *gpio;
+	struct gpio_irq_chip *girq;
 	struct irq_chip *irqc;
 	int ret;
 
@@ -561,6 +562,15 @@ static int gb_gpio_probe(struct gbphy_device *gbphy_dev,
 	gpio->ngpio = ggc->line_max + 1;
 	gpio->can_sleep = true;
 
+	girq = &gpio->irq;
+	girq->chip = irqc;
+	/* The event comes from the outside so no parent handler */
+	girq->parent_handler = NULL;
+	girq->num_parents = 0;
+	girq->parents = NULL;
+	girq->default_type = IRQ_TYPE_NONE;
+	girq->handler = handle_level_irq;
+
 	ret = gb_connection_enable(connection);
 	if (ret)
 		goto exit_line_free;
@@ -571,18 +581,9 @@ static int gb_gpio_probe(struct gbphy_device *gbphy_dev,
 		goto exit_line_free;
 	}
 
-	ret = gpiochip_irqchip_add(gpio, irqc, 0, handle_level_irq,
-				   IRQ_TYPE_NONE);
-	if (ret) {
-		dev_err(&gbphy_dev->dev, "failed to add irq chip: %d\n", ret);
-		goto exit_gpiochip_remove;
-	}
-
 	gbphy_runtime_put_autosuspend(gbphy_dev);
 	return 0;
 
-exit_gpiochip_remove:
-	gpiochip_remove(gpio);
 exit_line_free:
 	kfree(ggc->lines);
 exit_connection_disable:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
