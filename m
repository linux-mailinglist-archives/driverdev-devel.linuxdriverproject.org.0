Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B79BB191FC8
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 04:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BB0B24B6C;
	Wed, 25 Mar 2020 03:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AE3A9LbzJjQn; Wed, 25 Mar 2020 03:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4CE5E23BC0;
	Wed, 25 Mar 2020 03:32:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86A2C1BF2EB
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 03:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8224986A78
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 03:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kZGuHHZ9XZaf for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 03:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2AAB86A4F
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 03:32:08 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id s23so258047plq.13
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 20:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jIvdWurQrynQPs8bJVrUivnNx43ycQqIFEr2BSEWluk=;
 b=ccSpNGpD6C2895cDQtq0ZJTPecpCphHKwHbe2fRQv3Dx4qC5leA2NooEr9SY0nvk9W
 FasSSGlppzIf1uIaRW9FfPvL2GlpokW7eLf/QNPf1ZzWV/RAo+tYgLUEGxd51kQeRaEI
 MK62IwckRCwGw0zvjfA10MoYUCPEpcwlRZdy7kxGgUo893Sdi42hhrNqy9ZRUKYRT9wJ
 p8l3xIhsqcn/Q0puMc+SM9/uBSWeIffknMn6Y55ghzpGch6Iq9ccTWL6T2Lw5GiSkGKp
 PEDLYPjDaCPuFx3wf/W56XVumoQKYWhWWNTMDewXMy4+4xUh537UEvJgokdUj4k7Nd7i
 C4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jIvdWurQrynQPs8bJVrUivnNx43ycQqIFEr2BSEWluk=;
 b=Nnw8la0Omaig1gZgwvO8YzLjl5ikpwUguvSJT1PU2rKJ5ZM7OySkBpcTe1U90+BWtn
 +u1FYO2qj72jCfpTV2drueeoEz8ADc3aXrfaS0sEzPVhVUn4KTnmt4z+h6tA41IoYF77
 zqfs/k0GWWgz1nym6xg24k8x4xoZTUSelwOPde9Ad2doUuEDr/0Cq5HGh6IZXzB0WVwD
 0//BAC9jI68TseYaAuNdLgJOpwWyvRso7jBBtlpBnoyiODq5dnP/2eKGFqnB4CLkrljE
 SCXZCU9fM/vGNGnzyQ7NH1OnxgSSD3hTHjwFVimws+dyDeigwUCaQUW0LF0ri7OIw4nE
 vrwA==
X-Gm-Message-State: ANhLgQ143gABNockTgAvxgogZIgbJcHq7R8DdQGinBWLkH9lhROX812y
 G2lBxRi4vFaJ/HfYcr7C1gA=
X-Google-Smtp-Source: ADFU+vudM19tUZZbtqVtqyB7O5dRUBpZVboHld80msIPoDguY0PD5yh39rmNnalx5XnBTHnT7aGrlQ==
X-Received: by 2002:a17:902:59dd:: with SMTP id
 d29mr1217203plj.246.1585107128212; 
 Tue, 24 Mar 2020 20:32:08 -0700 (PDT)
Received: from ZB-PF114XEA.360buyad.local ([103.90.76.242])
 by smtp.gmail.com with ESMTPSA id w127sm17194978pfb.70.2020.03.24.20.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 20:32:07 -0700 (PDT)
From: Zhenzhong Duan <zhenzhong.duan@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] speakup: misc: Use dynamic minor numbers for speakup
 devices
Date: Wed, 25 Mar 2020 11:30:08 +0800
Message-Id: <20200325033008.9633-1-zhenzhong.duan@gmail.com>
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
Cc: willy@haproxy.com, benh@kernel.crashing.org, pavel@ucw.cz,
 Chris Brannon <chris@the-brannons.com>, devel@driverdev.osuosl.org,
 herbert@gondor.apana.org.au, ksenija.stanojevic@gmail.com, richard@nod.at,
 speakup@linux-speakup.org, anton.ivanov@cambridgegreys.com,
 len.brown@intel.com, Kirk Reiser <kirk@reisers.ca>, arnd@arndb.de,
 b.zolnierkie@samsung.com, jdike@addtoit.com, mpm@selenic.com,
 gregkh@linuxfoundation.org, rjw@rjwysocki.net, miguel.ojeda.sandonis@gmail.com,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Arnd notes in the link:
   | To clarify: the only numbers that I think should be changed to dynamic
   | allocation are for drivers/staging/speakup. While this is a fairly old
   | subsystem, I would expect that it being staging means we can be a
   | little more progressive with the changes.

This releases misc device minor numbers 25-27 for dynamic usage.

Link: https://lore.kernel.org/lkml/20200120221323.GJ15860@mit.edu/t/
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Acked-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>
Cc: Chris Brannon <chris@the-brannons.com>
Cc: Kirk Reiser <kirk@reisers.ca>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2: Add Acked-by from Maintainer, no other change.

 drivers/staging/speakup/devsynth.c     | 10 +++-------
 drivers/staging/speakup/speakup_soft.c | 14 +++++++-------
 2 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/speakup/devsynth.c b/drivers/staging/speakup/devsynth.c
index d920256..d305716 100644
--- a/drivers/staging/speakup/devsynth.c
+++ b/drivers/staging/speakup/devsynth.c
@@ -1,16 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/errno.h>
-#include <linux/miscdevice.h>	/* for misc_register, and SYNTH_MINOR */
+#include <linux/miscdevice.h>	/* for misc_register, and MISC_DYNAMIC_MINOR */
 #include <linux/types.h>
 #include <linux/uaccess.h>
 
 #include "speakup.h"
 #include "spk_priv.h"
 
-#ifndef SYNTH_MINOR
-#define SYNTH_MINOR 25
-#endif
-
 static int misc_registered;
 static int dev_opened;
 
@@ -67,7 +63,7 @@ static int speakup_file_release(struct inode *ip, struct file *fp)
 };
 
 static struct miscdevice synth_device = {
-	.minor = SYNTH_MINOR,
+	.minor = MISC_DYNAMIC_MINOR,
 	.name = "synth",
 	.fops = &synth_fops,
 };
@@ -81,7 +77,7 @@ void speakup_register_devsynth(void)
 		pr_warn("Couldn't initialize miscdevice /dev/synth.\n");
 	} else {
 		pr_info("initialized device: /dev/synth, node (MAJOR %d, MINOR %d)\n",
-			MISC_MAJOR, SYNTH_MINOR);
+			MISC_MAJOR, synth_device.minor);
 		misc_registered = 1;
 	}
 }
diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
index 9d85a3a..eed246f 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -10,7 +10,7 @@
  */
 
 #include <linux/unistd.h>
-#include <linux/miscdevice.h>	/* for misc_register, and SYNTH_MINOR */
+#include <linux/miscdevice.h>	/* for misc_register, and MISC_DYNAMIC_MINOR */
 #include <linux/poll.h>		/* for poll_wait() */
 
 /* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
@@ -20,8 +20,6 @@
 #include "speakup.h"
 
 #define DRV_VERSION "2.6"
-#define SOFTSYNTH_MINOR 26 /* might as well give it one more than /dev/synth */
-#define SOFTSYNTHU_MINOR 27 /* might as well give it one more than /dev/synth */
 #define PROCSPEECH 0x0d
 #define CLEAR_SYNTH 0x18
 
@@ -375,7 +373,7 @@ static int softsynth_probe(struct spk_synth *synth)
 	if (misc_registered != 0)
 		return 0;
 	memset(&synth_device, 0, sizeof(synth_device));
-	synth_device.minor = SOFTSYNTH_MINOR;
+	synth_device.minor = MISC_DYNAMIC_MINOR;
 	synth_device.name = "softsynth";
 	synth_device.fops = &softsynth_fops;
 	if (misc_register(&synth_device)) {
@@ -384,7 +382,7 @@ static int softsynth_probe(struct spk_synth *synth)
 	}
 
 	memset(&synthu_device, 0, sizeof(synthu_device));
-	synthu_device.minor = SOFTSYNTHU_MINOR;
+	synthu_device.minor = MISC_DYNAMIC_MINOR;
 	synthu_device.name = "softsynthu";
 	synthu_device.fops = &softsynthu_fops;
 	if (misc_register(&synthu_device)) {
@@ -393,8 +391,10 @@ static int softsynth_probe(struct spk_synth *synth)
 	}
 
 	misc_registered = 1;
-	pr_info("initialized device: /dev/softsynth, node (MAJOR 10, MINOR 26)\n");
-	pr_info("initialized device: /dev/softsynthu, node (MAJOR 10, MINOR 27)\n");
+	pr_info("initialized device: /dev/softsynth, node (MAJOR 10, MINOR %d)\n",
+		synth_device.minor);
+	pr_info("initialized device: /dev/softsynthu, node (MAJOR 10, MINOR %d)\n",
+		synthu_device.minor);
 	return 0;
 }
 
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
