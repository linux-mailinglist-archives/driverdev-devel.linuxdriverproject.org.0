Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B27369C4
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 04:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFF8D86278;
	Thu,  6 Jun 2019 02:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LizjcXjfXWvF; Thu,  6 Jun 2019 02:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 765D586277;
	Thu,  6 Jun 2019 02:05:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD0A31BF400
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B67CF2048F
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goIYuwP1qI+k for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 02:05:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D028820361
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 02:05:47 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id s15so903693qtk.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 19:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=s7zz+DGVhGZOuKwqgru6qux8LX3G6f6pOL/orDBaNeA=;
 b=mZpQljdGJfPhxL7V1ydW9yqeKDfhLmOTc6DyZ6UPD4Ty0rH4GEnfAeSraGWwwzsTn9
 Z/ipawuWU2ovtq1D0s9KWvfAAzlJ7l6hAcXiHxOhmgi5HCD4Xrjvc3rbdBeSw1CyLOhl
 /pwkk8s/6m0EANvSI/IPqArB0cO1muxh07xdc5VyF1OQZRk3cTyyFeIV/361qODc/m5K
 loiApIoaTX/ajSxj/cVdidvIi+lYMvJFzIzLK2+63SsThf1CgFBczx1H624012aLu+ZD
 eKpHM++xmU79FPFPrM5VtPzn5XPzeprfDsnt8zVaB+HE75ajfUl7rVCWWmuNDaVEGp8T
 VZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=s7zz+DGVhGZOuKwqgru6qux8LX3G6f6pOL/orDBaNeA=;
 b=Y9mJLEM5ObMwcHSk/Av9SmZjeTLqpM5Nsk+mvLGN8cjdA2XBwpo3PlgPHiT0z0JFbO
 tWr1xixF2hrVqcZ2yLutrReqAHEbmZFVLY2iX+bHeOOjYlSO91+vpCr8OMcaksiTOq0Y
 MENQynOBkiApYwRSHQAaP4NWSbpzHQMhOjRhvo20dwfhLcCQRz9OgDDkntwfR0onP4QA
 Qp+BWqYcmEUkB3+b54dEFdZEzkkbrWsGYd05YL2lc0jMkTm/HVqFKvCjOBYxvblrbGQu
 zYMekKpkI49PgCZdROx2uTHXNYnv9WMngNf9qFeK9EMwaSoQlICoLMJfS+YbGZw83/DV
 k06Q==
X-Gm-Message-State: APjAAAXH9lsqmxeJmZEgVdEPZ8PavCs6AuOk483iJFleJ7NtxNx4LqMP
 iZzPhqVoODKz8Vkmqy8Qz34=
X-Google-Smtp-Source: APXvYqw4w2pejj8TPjeH6918oIprPCHDoJrHQOqrHBsMWcVbthTeLgjyk7p5yH2DTkEcn1cpZIRWuA==
X-Received: by 2002:ac8:3345:: with SMTP id u5mr38644559qta.219.1559786746756; 
 Wed, 05 Jun 2019 19:05:46 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 b66sm207532qkd.37.2019.06.05.19.05.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 19:05:45 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2] staging: iio: adt7316: Fix build errors when GPIOLIB is
 not set
Date: Wed,  5 Jun 2019 23:05:32 -0300
Message-Id: <20190606020532.4864-1-festevam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org, preid@electromag.com.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On x86_64 when GPIOLIB is not set the following build errors
are seen:

drivers/staging/iio/addac/adt7316.c:947:3: error: implicit declaration of function 'gpiod_set_value' [-Werror=implicit-function-declaration]
drivers/staging/iio/addac/adt7316.c:1805:2: error: implicit declaration of function 'irqd_get_trigger_type' [-Werror=implicit-function-declaration]

These functions are provided by the <linux/gpio/consumer.h>
and <linux/irq.h> headers, so include them to fix these
build errors.

While at it, remove <linux/gpio.h> as this driver is a GPIO
consumer and not a GPIO driver.

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Remove <linux/gpio.h> - Phil

 drivers/staging/iio/addac/adt7316.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 37ce563cb0e1..9cb3d0e42c38 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -6,7 +6,8 @@
  */
 
 #include <linux/interrupt.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
+#include <linux/irq.h>
 #include <linux/workqueue.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
