Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A51D6B5B
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 19:18:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E35521514;
	Sun, 17 May 2020 17:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMsnLJK4QpTa; Sun, 17 May 2020 17:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2E0D207A8;
	Sun, 17 May 2020 17:18:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE29A1BF45A
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAA728840C
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWUP3r1NmxlS for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 17:18:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E4EC88386
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 17:18:23 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a5so3754115pjh.2
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 10:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=uMSEWPFfgwS2F0KG3ny+C2pAjIupU8hYBG5jXbhcaL4=;
 b=jwPUiDVAgwv3eFPA7k87+mUDcLg2cXxubQstVF8w1bht2LvhefR1Jr2S/aP22KK4Xk
 ZY/Q9DlwdTOGINd966qh0PU1Kaeo30xObNAL1HzXvmyGGjlOkefOCaTSazYleyn/4/Kk
 tKWrUYASMu/NVTPi0ugBZ8q1nrErSxLL7yv8Q3wC+4gSiRJ0bWtM8s18OJ9C7r2MMk1C
 qIe9QbECzAXmwwnGM/qN8F8tzjphzyx16Dkv2ayzVI1xxh23s1FWpaDbBye4yVviNtLy
 hs2s9+vVcgWJ++H+74Sr7XnL38+zhwXtgLmlOAOrpAgYotQeBJXvIch3Rir1cngj1U5+
 fI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=uMSEWPFfgwS2F0KG3ny+C2pAjIupU8hYBG5jXbhcaL4=;
 b=hhGM/3xhCt+SQ/aAzuVUFXq+tsT2Rov6FR5RgZqkJLx7vrNEOl59Cuep/DnGlxFjGD
 TBwygO5S5WKbEgEejb6Dp5XZusykMi3gisRN21DgyGP7D8RUrDgbFoFWNUqgjRnT/Be5
 el+4Z+s5sN80nZiRq2qpFKnSl9Pl/LrTxewpodf3BgMyv2XeSRS4ZXxE2c6uNPdDV9vu
 Kgs3jXjiK3qWRFDcqdB0GAgqQfaX2xyV/te5ABVeKtSeZqZ/ZlcJ+TFC6rYgA0y5Qmtm
 1Uqmf7L9nhY5MdZdvOL7CFUoenCh29U1U7YOI4gCfamdrRSMgxSCkCg1VpcLBSKMvCVb
 8E/A==
X-Gm-Message-State: AOAM531XcF39wR1uX+Qvt/kv1ErWglUYU7XFrVmd8keTXqXjrGl93r7j
 8JNOIfT5prPbLmeL6e2tIudDpXlVHBwaVQ==
X-Google-Smtp-Source: ABdhPJxh0VKtzLo5Kn/yiWxgiWQBskj7KIfuUEc5zofpePE6a0Le1r5mEoFkT0otR6ImaE83sLrlvw==
X-Received: by 2002:a17:90a:33a7:: with SMTP id
 n36mr14708728pjb.126.1589735903146; 
 Sun, 17 May 2020 10:18:23 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.googlemail.com with ESMTPSA id n69sm6513900pjc.8.2020.05.17.10.18.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 May 2020 10:18:22 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH V1 6/6] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Date: Sun, 17 May 2020 22:47:21 +0530
Message-Id: <77cfc355b87ee21636430f787764700de1983f38.1589734179.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1589734179.git.vaibhav.sr@gmail.com>
References: <cover.1589734179.git.vaibhav.sr@gmail.com>
In-Reply-To: <cover.1589734179.git.vaibhav.sr@gmail.com>
References: <cover.1589734179.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, GB codec and audio module is conditionally compiled based on
GREYBUS_AUDIO_MSM8994. However, audio module is not dependent on MSM8994
platform and can be used generically with any platform that follows
GB Audio class specification.

Also, GB codec driver corresponds to dummy codec represented by I2S port
available on Toshiba AP Bridge. Added config option for the same in
kconfig file and accordingly updated Makefile.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
 drivers/staging/greybus/Kconfig  | 14 +++++++++++++-
 drivers/staging/greybus/Makefile |  4 ++--
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/Kconfig b/drivers/staging/greybus/Kconfig
index d4777f5a8b90..cbcfcbba239b 100644
--- a/drivers/staging/greybus/Kconfig
+++ b/drivers/staging/greybus/Kconfig
@@ -3,7 +3,7 @@ if GREYBUS
 
 config GREYBUS_AUDIO
 	tristate "Greybus Audio Class driver"
-	depends on SOUND
+	depends on SOUND && SND_SOC
 	---help---
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
 	---help---
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
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
