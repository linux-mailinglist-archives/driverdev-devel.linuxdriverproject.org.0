Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D3E48066
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 13:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B407E85EA7;
	Mon, 17 Jun 2019 11:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkkOIOs3bus1; Mon, 17 Jun 2019 11:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33EA481F33;
	Mon, 17 Jun 2019 11:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA5981BF86D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 11:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7B60870D7
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 11:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0W8PZ0HS0cc for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 11:16:09 +0000 (UTC)
X-Greylist: delayed 00:05:26 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1B81870AD
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 11:16:08 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MFb38-1hqXBM2ZJe-00H9YY; Mon, 17 Jun 2019 13:10:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: iio: adt7316: use correct headers for gpio
Date: Mon, 17 Jun 2019 13:09:20 +0200
Message-Id: <20190617110951.2085648-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:cTNvSQ9TaXGrz6GNYn/l47SM2aOEl9ewVkuzYHttzbQ18FhJ43p
 XbN9BwodkIHe7auBf9exzPpX8+XLgvTH0lskZMyeAenvZIHswz3XX+WWI/HSZDipF1HT4m5
 +350Y5/T+jrkz3leY7UMJfO/q8w8r3WBf06lna+Lp4989vU93D9IYu+l7mUwiYxsfENmgwK
 ucyY2l2PxMpaYqqMvJYSA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:v9pZQEf1RWU=:S9rp3cIsQLAyp/3WPun9Fz
 Ql1lozd5P5mSawR6Xpfzl9lHVKn9rfxBOy5YZ3QzVsfo7GgZjZg8msAR5AlPp+iVsFtcYoML1
 yBhskNnboq0RYA6Wao2Xt/te8O/iRpMWLuLpIK27boytHFeRJwVqBP6A2jgQ6pL5c/vmlJvuW
 iXxRhU+L5XlgtP05Y81jQwgHujmEGNXQXjvzjgxZFKvIxKPtAxPiyiCsIuruG7Eki4SxspDxn
 CjV2arILPkH4ubQreUSVwWI9SyPrZALZhTVWlxl9R+4Vlno3dp3oXZgkVfMi/BzSGNTLKuEO+
 AL7+e0CNXH0Kv45kKBChztlxPfyt+OXEPNHHGuWvVJJzqcony8wC3aeiCZcotGo2PMgg9hbeX
 NWTQAji0+VZERkRTQNrz4cz9iXH0X1UfmiSzQdo1epJkFKtIbk/OQdNXkBJLKw7DykQXkTNXM
 velcZZi1SxsO1wemNe3lNxDxK/yr51wE3pmz0QQoLOXqM6iT09rd06s3JlI88Qec9PzDKbvbK
 nVqF0M1ivpJrrQd75dvCYNO921LvcS+y9dH1HxHHGrpZkv5OTiL4CxpoZrNyGZgtKHXg7xFXn
 prNlrZUxCAo/BrlbNk3M/P79nhxs5ltIo9uvrm1KTZrcgXKu78b2bRkSAdau+czLGMcRk6Not
 xs/+r73OwvqUObWObIup3cj1uiOtyvivP7xlK5DGA91nPRLUMiSh+05Hs6VVULeaGV2xoCmpG
 ZqVFzgOyMnFA0R9aMLSnB/uZGLncrggnsl19wg==
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
Cc: devel@driverdev.osuosl.org, Shreeya Patel <shreeya.patel23498@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-iio@vger.kernel.org,
 Jeremy Fertic <jeremyfertic@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When building without CONFIG_GPIOLIB, we get a compile-time failure:

drivers/staging/iio/addac/adt7316.c:947:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
                gpiod_set_value(chip->ldac_pin, 0);
                ^
drivers/staging/iio/addac/adt7316.c:947:3: note: did you mean 'gpio_set_value'?
include/linux/gpio.h:169:20: note: 'gpio_set_value' declared here
static inline void gpio_set_value(unsigned gpio, int value)
                   ^
drivers/staging/iio/addac/adt7316.c:947:3: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
                gpiod_set_value(chip->ldac_pin, 0);
                ^
drivers/staging/iio/addac/adt7316.c:1805:13: error: implicit declaration of function 'irqd_get_trigger_type' [-Werror,-Wimplicit-function-declaration]
        irq_type = irqd_get_trigger_type(irq_get_irq_data(chip->bus.irq));

Include the correct headers that contain the declarations for these
functions.

Fixes: c63460c4298f ("Staging: iio: adt7316: Use device tree data to set ldac_pin")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
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
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
