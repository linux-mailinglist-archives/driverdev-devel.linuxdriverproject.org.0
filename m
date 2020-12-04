Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3142CF43B
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 19:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76F8D879DE;
	Fri,  4 Dec 2020 18:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQnYirIWVEhi; Fri,  4 Dec 2020 18:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DDC9879B2;
	Fri,  4 Dec 2020 18:41:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 445F91BF573
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 18:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34BED2078C
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 18:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fH4ajWh1rSrb for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 18:41:06 +0000 (UTC)
X-Greylist: delayed 00:07:22 by SQLgrey-1.7.6
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org
 [94.130.110.236])
 by silver.osuosl.org (Postfix) with ESMTPS id 514952E2C8
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 18:41:06 +0000 (UTC)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 68167A96D72; Fri,  4 Dec 2020 19:33:42 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] greybus: Add TODO item about modernizing the pwm code
Date: Fri,  4 Dec 2020 19:33:35 +0100
Message-Id: <20201204183335.3839726-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/greybus/pwm.c uses the old style PWM callbacks, new drivers
should stick to the atomic API instead.
---
 drivers/staging/greybus/TODO | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/greybus/TODO b/drivers/staging/greybus/TODO
index 31f1f2cb401c..6461e0132fe3 100644
--- a/drivers/staging/greybus/TODO
+++ b/drivers/staging/greybus/TODO
@@ -1,3 +1,5 @@
 * Convert all uses of the old GPIO API from <linux/gpio.h> to the
   GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
   lines from device tree or ACPI.
+* Make pwm.c use the struct pwm_ops::apply instead of ::config, ::set_polarity,
+  ::enable and ::disable.
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
