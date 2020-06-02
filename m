Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6D71EB512
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:22:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4164F221BB;
	Tue,  2 Jun 2020 05:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32Z+umDOv38F; Tue,  2 Jun 2020 05:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3551921549;
	Tue,  2 Jun 2020 05:22:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 423A91BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3EA4385FA2
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYgz-54faa5m for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:22:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C43F985F7B
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:22:42 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id fs4so825196pjb.5
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SxRa6VcY2LMBz3zcWZQ3W5R2LRvt5t09mwNFn3RdLfA=;
 b=kdnedtkUWGH0EgiiSkOM6lz6ez0QnNlc8zFGS7E1FXfVPHfLGSWGwMOnK4MTDMgets
 49gpArFoPZY7hatliqTT9EBVVETbW/eUQgLO/MxWMlqiG1otNOmKV8PkRGZ5kbBjNKCt
 kYU+8WfieLU8FeTewg7zVMqcqqjl/d+eisprHQAveG+vgAhTZgONgmVeFXZwrBFdwQi0
 iVhvgadIyJGh9PVswSu+cJOMvzUKESCQJhXKEUvfc9/fx/+eIuWpoNXrrYqcj/Ph0MT4
 +C+zrdrcExdLdysSWFXC+ikhjahhSGBLqXVJmdMuhH7+MA8bQGZYmdWxfq6WSCYyd6Jb
 eLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SxRa6VcY2LMBz3zcWZQ3W5R2LRvt5t09mwNFn3RdLfA=;
 b=dO+u85F9g2d6RPN2OVRnfgLDAENZTiMLN32t1So2vjNTdHjTuDbruJUAX5thBbJort
 ModvYD87rMrNEQepcYvItpQ6Km9I257XqVVVKNgxaE+4L14UqAqxuhjmbVUEFDr/GiB8
 IUoIB0SKZC+y0lTqLQw1Ib3+q/jGaMX1jIFEM+OsD836Dpj4QXRE5ZMbcDnd7C2SUspp
 4ioFMbg0Gvn7VaawDxC2DtK3RdKtNYv161mnsBl4GNeDmDUignw3EOE3NF4T/+SEs2XZ
 lckDaYX1hXZgUnM3xYNc+R31IXTjJwcGUvnW4NEIvtXdaYXvStn0irAZoylRwyVJS0F6
 uKlg==
X-Gm-Message-State: AOAM531lGZ/jhbZ/3IIjRFq4nPzAEEDyidO9QA+2Vq2sH+v2qUjV3ZT/
 YvE0/AgOcThNygMLU03HoXI=
X-Google-Smtp-Source: ABdhPJyvOPpNZ5sQza/sxtxZPtqR21/AwrWkuze4ajZeTe84L9t4Y1EK8depRG0U3GJcQvnI7YurYg==
X-Received: by 2002:a17:90a:32ee:: with SMTP id
 l101mr3564174pjb.213.1591075362317; 
 Mon, 01 Jun 2020 22:22:42 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id f18sm1004764pga.75.2020.06.01.22.22.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jun 2020 22:22:41 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [RESEND PATCH v1 6/6] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Date: Tue,  2 Jun 2020 10:51:15 +0530
Message-Id: <77cfc355b87ee21636430f787764700de1983f38.1591040859.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591040859.git.vaibhav.sr@gmail.com>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
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
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
