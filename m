Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE31F219DC5
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FF428980C;
	Thu,  9 Jul 2020 10:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sQ9OQqj0Mf-6; Thu,  9 Jul 2020 10:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6784896F8;
	Thu,  9 Jul 2020 10:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42CC81BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3504C88A5F
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avsFwKWMkTOg for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3613888C0E
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:28:27 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k5so653172plk.13
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 03:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3lv9e08Jsq1SUZ9ZdK01L3LTi6uM1M8FSp5FnExf/g0=;
 b=YqaNmGTzOpkzdWwVfJOR4ZQrDG9okqHOfTleBT35Kuhq+xjRdb+0qmURwVxpSIPI8u
 k0150jW28CY5i4tpFWsd3n/ib+n+EOWsHRLD2PEvHsmtB7SAYK0KSDs8+ItrxeAaPBO1
 0kxuReIQ+gPgUXb0TKtZzCgL14ClUFXlLMPvemOTUZ/Um6I5PkGId2SYpE+SOf3gny1J
 3EveQ7Q0MYdR/oTL+EJQXAnCAspWjEnRsvBawvH3j0m0wBSU2tZeVJRTtXoGaCmeeB89
 VwzmQpeFEpLBlZTh9ERhLuA8AWoj34J05GyF4ehk4asYgfhmc307uTxQ+JcA8alOmWGY
 RNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3lv9e08Jsq1SUZ9ZdK01L3LTi6uM1M8FSp5FnExf/g0=;
 b=uIdw+BzutjDNKo6cD5dbXN8y0Dvyr99fTFR2y83huKRo2+Sfa2yHJXzL4tsXWftn5D
 3uJhbycQ84MOjqGSjxF2inD6A3I8V85YGE9scjtwz8jvskuo0DNlQMJ1Y60vCmZt8eyZ
 EQVhpl3Mz76yJ6g/Aq9XUthSkVxB1WC5a14PobsBs2XodX4/5MAR5pBjpJsRb8pfIIMg
 DUtpbJnsD5FfbLlukZ+G4n3zqD6g9ccFu0XZDSaeL2vtDvo/m4h9+PRCIqJvc5DN6M58
 yOLEn8JCHR7MDI7PNXGjNIKEccBoT3vf/v+C3ePnIEBuQo4PSlNrQDt8+ZfjvjCfUMhJ
 MP0g==
X-Gm-Message-State: AOAM531yLxlIDMX69hamHHE8+m2DQ7Z3k7Tf776wbZfPgWjmIu5Jim5m
 NsjdveMpedGVTs6991zt1uM=
X-Google-Smtp-Source: ABdhPJzjiR29udJayndhouR2e9Sx47u+KKoGK0HRiAPaF0AEugJy0j7IBYQWAkAkUzv2bNWZnoBWeg==
X-Received: by 2002:a17:90a:cf01:: with SMTP id
 h1mr14226941pju.234.1594290506645; 
 Thu, 09 Jul 2020 03:28:26 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id y8sm2125163pju.49.2020.07.09.03.28.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 03:28:26 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v4 6/7] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Date: Thu,  9 Jul 2020 15:57:22 +0530
Message-Id: <2b50959ccffe5a4372880d27e79ef3be1873372c.1594290158.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1594290158.git.vaibhav.sr@gmail.com>
References: <cover.1594290158.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently you can't enable the Gey Bus Audio Codec because there is no
entry for it in the Kconfig file. Originally the config name was going
to be AUDIO_MSM8994 but that's not correct because other types of
hardware are supported now. I have chosen the name AUDIO_APB_CODEC
instead.  Also I had to update the dependencies for GREYBUS_AUDIO to
make the compile work.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/greybus/Kconfig  | 14 +++++++++++++-
 drivers/staging/greybus/Makefile |  4 ++--
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/Kconfig b/drivers/staging/greybus/Kconfig
index 9389e7a922fa..927cfa4bc989 100644
--- a/drivers/staging/greybus/Kconfig
+++ b/drivers/staging/greybus/Kconfig
@@ -3,7 +3,7 @@ if GREYBUS
 
 config GREYBUS_AUDIO
 	tristate "Greybus Audio Class driver"
-	depends on SOUND
+	depends on SOUND && SND_SOC
 	help
 	  Select this option if you have a device that follows the
 	  Greybus Audio Class specification.
@@ -11,6 +11,18 @@ config GREYBUS_AUDIO
 	  To compile this code as a module, chose M here: the module
 	  will be called gb-audio.ko
 
+config GREYBUS_AUDIO_APB_CODEC
+	tristate "Greybus APBridge Audio codec driver"
+	depends on SND_SOC && GREYBUS_AUDIO
+	help
+	  Select this option if you have a Toshiba APB device that has I2S
+          ports and acts as a Greybus "Dummy codec". This device is a
+          bridge from an APB-I2S port to a Unipro network.
+
+	  To compile this code as a module, chose M here: the module
+	  will be called gb-audio-codec.ko
+
+
 config GREYBUS_BOOTROM
 	tristate "Greybus Bootrom Class driver"
 	help
diff --git a/drivers/staging/greybus/Makefile b/drivers/staging/greybus/Makefile
index 3b4b6cabff19..7c5e89622334 100644
--- a/drivers/staging/greybus/Makefile
+++ b/drivers/staging/greybus/Makefile
@@ -40,8 +40,8 @@ gb-audio-manager-y	:= audio_manager.o audio_manager_module.o
 #ccflags-y += -DGB_AUDIO_MANAGER_SYSFS
 #endif
 
-obj-$(CONFIG_GREYBUS_AUDIO_MSM8994)	+= gb-audio-codec.o
-obj-$(CONFIG_GREYBUS_AUDIO_MSM8994)	+= gb-audio-module.o
+obj-$(CONFIG_GREYBUS_AUDIO_APB_CODEC)  	+= gb-audio-codec.o
+obj-$(CONFIG_GREYBUS_AUDIO_APB_CODEC)	+= gb-audio-module.o
 obj-$(CONFIG_GREYBUS_AUDIO)		+= gb-audio-gb.o
 obj-$(CONFIG_GREYBUS_AUDIO)		+= gb-audio-apbridgea.o
 obj-$(CONFIG_GREYBUS_AUDIO)		+= gb-audio-manager.o
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
