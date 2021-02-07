Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E61E93122DA
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 09:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E3C386126;
	Sun,  7 Feb 2021 08:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qA6NBXgI9FHZ; Sun,  7 Feb 2021 08:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED61285FB9;
	Sun,  7 Feb 2021 08:47:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945521BF966
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90E0285FB9
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uW7OkHLQzAxr for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 08:47:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F30185FA5
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 08:47:19 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id w18so7733619pfu.9
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 00:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MSOtbkRts0dq72rCJZ6QlGW7loNrEWjczBlotgsaBB0=;
 b=XFxOhEMTTe33pjj2QaXwOpFkSitvEgDrNFDrY/Cl7on2fv7sryeOSZjFWFD4RwEYYV
 hwSKp3TpiG6HfoO8hUTcRGqHR5T6IkvHzdCbt4t4w1n8mwvfdUdl5pnVNymNMwuzz6Sp
 i3On5hW4ZyR7y5Z0/7kDcIgytYsoocq/OQWQsbeLKzOQEeiiohnsuwT5g8nVqFdZ9YGN
 UBswNGhOSVAcuMSA4t28jrURzv3iiBVmZ+P0A3VMhNG9LrFdSV8tgTzJ7kzm7Ht/ZVjZ
 9WHD1nhW9tOqs9sG7LBAF6Udg+xPMQeUk8LwFje2EcR12L6YzFWfFT1cDP/OVKXTsZwl
 Lowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MSOtbkRts0dq72rCJZ6QlGW7loNrEWjczBlotgsaBB0=;
 b=JgTioR4PEutdSvV+7J+v0ZWTxYMvJU4zuRlKTpfk/H3PGBrzH8OnE+KbCFgkY8EHaV
 1PJPQTY8SvpvePC7zXCo47i2/y+HeHvR3dQt638yGEPP9KCEDBy+05kuKHkX6ZMDKzNI
 tmThv0h7/3HRdJr7a5YfwXHasix/mOUhDMJYqHR1RYRsoTuwW9WC09KcMIrjccm3AfhB
 Kgtpz7uD2mEhSeg9S1xAGSXhll6DcpGsF3wT2DgS5rxmxiYtcP2c/NqLoSlNYI8kqCeT
 GLrM0yO+j9Thcr4/huFfrvpd+D4h6Cp2xhbMzAiOewhht/uR5IqfM/6sL/NKdKssmKRF
 X65w==
X-Gm-Message-State: AOAM531fCzsjZ7w2elAGBLCbmzXUy2tw2VCTCOH9pisjDqFht0n0RqP5
 1wEEKvHTcbBHd9jim44riSElJUihqFs=
X-Google-Smtp-Source: ABdhPJx+Flg0aBOtmQsE/DkdjH6hG1Cz9wQHFXPH+ikdUSKdOno56Otfi20a7rMC4Vr52Va2RIBbYQ==
X-Received: by 2002:a63:c741:: with SMTP id v1mr12345015pgg.316.1612687638463; 
 Sun, 07 Feb 2021 00:47:18 -0800 (PST)
Received: from localhost ([2402:3a80:11d2:b946:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id e185sm15380030pfe.117.2021.02.07.00.47.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 00:47:17 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: emxx_udc: Make incorrectly defined global static
Date: Sun,  7 Feb 2021 14:16:58 +0530
Message-Id: <20210207084658.269898-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <YB+l1t/k4VuSw3B9@kroah.com>
References: <YB+l1t/k4VuSw3B9@kroah.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The global gpio_desc pointer and int vbus_irq were defined in the header,
instead put the definitions in the translation unit and make them static as
there's only a single consumer, and these symbols shouldn't pollute the
global namespace.

This fixes the following sparse warnings for this driver:
drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
declared. Should it be static?  drivers/staging/emxx_udc/emxx_udc.h:24:5:
warning: symbol 'vbus_irq' was not declared. Should it be static?

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +++
 drivers/staging/emxx_udc/emxx_udc.h | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a30b4f5b1..3536c03ff 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -34,6 +34,9 @@
 #define	DRIVER_DESC	"EMXX UDC driver"
 #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
 
+static struct gpio_desc *vbus_gpio;
+static int vbus_irq;
+
 static const char	driver_name[] = "emxx_udc";
 static const char	driver_desc[] = DRIVER_DESC;
 
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index bca614d69..c9e37a1b8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -20,8 +20,6 @@
 /* below hacked up for staging integration */
 #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
 #define INT_VBUS 0 /* IRQ for GPIO_P153 */
-struct gpio_desc *vbus_gpio;
-int vbus_irq;
 
 /*------------ Board dependence(Wait) */
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
