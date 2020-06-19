Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA572007AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 13:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDEC287A9B;
	Fri, 19 Jun 2020 11:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfujANAW-wls; Fri, 19 Jun 2020 11:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9800B87A5E;
	Fri, 19 Jun 2020 11:21:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43AFD1BF5A8
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 406158998C
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YbZK+SIvcSd for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 11:21:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD6CE8998A
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 11:21:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e18so4372788pgn.7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 04:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pMnJVRRzK09/VbvKw7yuFnugcGkqSr1qw4/Z5xsvw+g=;
 b=JNqbP6+cXWUBzXZrKR7UOEA8LVJbGNaUA0+H4KgGXU0knATtP5jR10SCoEKZ4P+2zd
 11XoPqIS3xPiISe8/vnOeFNnUm5OvqzszeRZBwCoNR5gSnzDaNzIz4ZSHVLAqrEbbKC7
 ASdhtKm+gGdEzXL3PU7s8WGlWWdy9LWO9lrcWkdNFxLMdM2dFDVzMdSc6Sq3kQ472g7/
 Hhlw99uPuRgeTizlE8BLanl6bOb0gRfsC0G0STym3pEnfewEOMdl8y6lXBRcNZsD6E06
 dTNVgFeW4uzQ99D9n4OGJfu6W2V4svMvMBlpPw905f37t6NI13QZ4PJ/PrxGmVgHj5LP
 RJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pMnJVRRzK09/VbvKw7yuFnugcGkqSr1qw4/Z5xsvw+g=;
 b=ghwj1P2Vd31RB/9pBSBe9aHoibrjB/hsXkUXtThWhcsNr1SN4Rp0RxCeKHeP2jSj/Z
 l8A13ZGOm5ZpJKbSKQmKF2tBwWcZRPXf7oiMj9pZ/XwhXsk86ekMLhJYhl4CwfXAhZXD
 v3v7VMWoMbW5JRiK7GSAfLggdTdzH6BAV8grbFL13FSF0U0rMRL/Bx99XBPG7UtSpnqK
 AOG+gqHF9KLCIT6+JauMDCczBi1z6Cij7XDssmcyBiqKoSMhePmJCv5KV7RVx93A4DY7
 cGGzTY9TQ2Nk1kPDJFk6FfBFk/rKGwJMjL3So2d4dSwYIurP2oTMWUoJSmBM7xTnpoHj
 m9RQ==
X-Gm-Message-State: AOAM532femIB0sIfHXAPmEJ7iF91WW5ItUf/a54l7TzG7MEU3WdCXt1g
 z2FppsdoZUwJIA3A2TMMNqo=
X-Google-Smtp-Source: ABdhPJxipZmj5Iz98CdyoTS3c4ColLD2W0ESzWGhlG9bBctqOh2MzBwx8a9qabDG4nUQ8N1Fdzcz8w==
X-Received: by 2002:a62:1c46:: with SMTP id c67mr7524623pfc.170.1592565701246; 
 Fri, 19 Jun 2020 04:21:41 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id d9sm4974293pgg.74.2020.06.19.04.21.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:21:40 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v3 6/6] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Date: Fri, 19 Jun 2020 16:50:26 +0530
Message-Id: <e9aaa09c6688aa5ed8bddf51f5cd402bb8cf39b3.1592537217.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592537217.git.vaibhav.sr@gmail.com>
References: <cover.1592537217.git.vaibhav.sr@gmail.com>
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
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
