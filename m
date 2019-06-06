Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3B23695F
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 03:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2146686250;
	Thu,  6 Jun 2019 01:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WpB-r8FLJ9mk; Thu,  6 Jun 2019 01:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4F0386243;
	Thu,  6 Jun 2019 01:43:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C2EB1BF44C
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 01:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18EDF87EB5
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 01:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNp7YmmL+Vof for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 01:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36BC987EA1
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 01:43:26 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id s15so858949qtk.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 18:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FiP6C8M+AnfQuXDwjbnSfrxZTIxdpkDsmXGsL6WmlFA=;
 b=YqxDo9M7zIi2MI5N1bOycEo/mhWeJj5HUaTAq0XPadeItKQ395S0IDNMsfkiXfJqmK
 W1BqK9gIjLg1rbdKNT0KoBgWc6rVhaowORpFH+LEp0SfsE2QV3IQbHalaUIKdvUw2cZD
 TWS7DH8/s/uxLIsbD7+sIUv80/aFdmnOPT2LXCC+e+uIbKlCZP1qPWV73oEFrRb4JfCm
 wEoitoPnQG0UdFvqZy+lK+bOOj/TKJ4FI2VaNvB1ir9HwD5i2jMjr8CSEwLuZ+o8XIky
 vaEdiZfwLp5HtFQE4HVuCQ0J4KRK7LT21IlCRbYztX2ephnS6sGt3GKG0wXdmiwNJQU6
 z//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FiP6C8M+AnfQuXDwjbnSfrxZTIxdpkDsmXGsL6WmlFA=;
 b=fYIXnlHGgi6Sj5QkF7ImSFXpF/bXJelEbeTgDcl1NZDTbPGpg8VmapyyKWbZClvpTE
 NY5rpbIj3NUOmznYKUtwDGm0gnnIY7GyJQIDCH1lo0duCXs/rCLlS1Y8ezZ89560CE3f
 yZRDK11j+tDMPSJU+RjzQEFl6DejBK1xknS1Igp6s128gQAbuha+pNGDfXPdpB8XpFEv
 Qje/yYQOva853dAho28ADWxFsHCd4hDWsr7jy+3lCr9QgL45QmDKWbJLTuQcE65tEh88
 gZQ9VZrpz3Lqdk2k3iWolTjmOD9RHHXjBjOraLB+qHNPW5MaSlZp3JudK8thr2A3g21b
 L/zA==
X-Gm-Message-State: APjAAAXvmi1ulht2WXkky63lC65hN3TlEQeZbsJVOVF0A28zowWWFdaW
 4ra+GKeZmSMFDHbvnlEq59s=
X-Google-Smtp-Source: APXvYqzaGEdepNHjfYbwEQP5vNstVNj+mxP3oblEBeyG1DkIecVih+/e9+BlKOszBMyU3gO8HKPcng==
X-Received: by 2002:ac8:30c4:: with SMTP id w4mr36580131qta.314.1559785405091; 
 Wed, 05 Jun 2019 18:43:25 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 p64sm174041qkf.60.2019.06.05.18.43.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 18:43:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: jic23@kernel.org
Subject: [PATCH] staging: iio: adt7316: Fix build errors when GPIOLIB is not
 set
Date: Wed,  5 Jun 2019 22:42:46 -0300
Message-Id: <20190606014246.1850-1-festevam@gmail.com>
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
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org
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

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 37ce563cb0e1..5470a9c3f872 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -7,6 +7,8 @@
 
 #include <linux/interrupt.h>
 #include <linux/gpio.h>
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
