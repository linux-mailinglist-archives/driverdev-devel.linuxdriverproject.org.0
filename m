Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4068F79AC
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 18:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 717C386745;
	Mon, 11 Nov 2019 17:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVYp_kS_Ap1Y; Mon, 11 Nov 2019 17:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B36B686722;
	Mon, 11 Nov 2019 17:20:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEDE71BF955
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABD2A8672E
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-3n4b-XgJH2 for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 17:20:10 +0000 (UTC)
X-Greylist: delayed 00:05:42 by SQLgrey-1.7.6
Received: from mail-qv1-f74.google.com (mail-qv1-f74.google.com
 [209.85.219.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17C7D86722
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 17:20:10 +0000 (UTC)
Received: by mail-qv1-f74.google.com with SMTP id q2so6682509qvo.23
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 09:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QrUvzT7mG0/1JPVoR54M3uU+r/Pn/Td2dykyP41Xe9Y=;
 b=agm/kmlXTzTVCuQQMmKFlCwoPaIIlB6uEy8ouCRjIFGajbH1i+1lgXIqs87EMP9sLv
 HO5J01MbVoHZ6jkQ0tqOaILwoyvn6KunhIUijR2bT8lPz4SpeJ7k+ZAV2cGqd1MLQFw0
 3CohLkyiWWFgN/e2lVJborsVkH6uXT1MISX8ZPiIuCgM/G0gYEiDzQriNMSUfRTKwjB4
 RnFsAHsPvZMJY1wj/9RwGfMW9rMsEKRqK2lxQAprrwQeKi5cSRTWI6c4eTsxUikIaJ8W
 ajJdmKXJbqkDm2JWd+E/TPWoFjTQDL9+SicDjDQSpR9rkohSwsSnOVRuAqBTPHNGvmWe
 xVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QrUvzT7mG0/1JPVoR54M3uU+r/Pn/Td2dykyP41Xe9Y=;
 b=BZR1KWfv8J9Nxeo7YBUDoXiwVwR5uBT6rOiaI7r6sk5vb9cfgTRgKMwA5XMKtYSftl
 6P5JiQTykdHLIYSUQTE2vuBWB0zVoSjzLAoc488Bez2AEkNtD4YvYqn3ppB12sjStjZQ
 Xe1Eu5PDKU8BPYdUm4qeyyFSka2G+y/dcrwSTn9qCwfEyMQAkQ25QS8g9pObleZuXGGM
 cUrSAHUAKl61WrrpRkHH4lc1mOvitvJmbQezunUk8aITqIciHXygQc65Vb6au+Qo6kiZ
 hv5AQj9d5b9h8Tax6JmTLwoiaZ3jI1iToY5o37kzP79WK8KjD2wRDi+wMW5/L/A+qRb9
 2+iA==
X-Gm-Message-State: APjAAAV8eV4RwyyGoXq+SrZYLQk+l2l62M219n7F1DDBPbmPDHy8cc7y
 hU+na8ywnTcdLNYRHKSvO0zjs0QcOlCAA2YIsEM=
X-Google-Smtp-Source: APXvYqylYFYfggPkFPUdl0OUptzEg0ZeqipO6TNxXF81CDRF0CNExar9bSJOFQJHrClHnGFnPi97oYDkDlAmFlz2830=
X-Received: by 2002:ae9:c203:: with SMTP id j3mr1548252qkg.12.1573492467060;
 Mon, 11 Nov 2019 09:14:27 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:24 -0500
In-Reply-To: <cover.1573482698.git.marcgonzalez@google.com>
Message-Id: <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Moving the DT node check to vchiq_platform_init()
removes the need for these.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  4 ++--
 .../interface/vchiq_arm/vchiq_arm.c           | 20 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  4 ----
 3 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 5ac88be9496b..b133b25c44af 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -78,7 +78,6 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
 int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 {
 	struct device *dev = &pdev->dev;
-	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
 	struct device_node *fw_node;
 	struct rpi_firmware *fw;
 	struct vchiq_slot_zero *vchiq_slot_zero;
@@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	if (err < 0)
 		return err;
 
-	g_cache_line_size = drvdata->cache_line_size;
+	if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
+		g_cache_line_size = 64;
 	g_fragments_size = 2 * g_cache_line_size;
 
 	/* Allocate space for the channels in coherent memory */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index c666c8b5eda2..cc753ba9c68c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -140,14 +140,6 @@ static DEFINE_SPINLOCK(msg_queue_spinlock);
 static struct platform_device *bcm2835_camera;
 static struct platform_device *bcm2835_audio;
 
-static struct vchiq_drvdata bcm2835_drvdata = {
-	.cache_line_size = 32,
-};
-
-static struct vchiq_drvdata bcm2836_drvdata = {
-	.cache_line_size = 64,
-};
-
 static const char *const ioctl_names[] = {
 	"CONNECT",
 	"SHUTDOWN",
@@ -3161,8 +3153,8 @@ void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 }
 
 static const struct of_device_id vchiq_of_match[] = {
-	{ .compatible = "brcm,bcm2835-vchiq", .data = &bcm2835_drvdata },
-	{ .compatible = "brcm,bcm2836-vchiq", .data = &bcm2836_drvdata },
+	{ .compatible = "brcm,bcm2835-vchiq"},
+	{ .compatible = "brcm,bcm2836-vchiq"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, vchiq_of_match);
@@ -3191,17 +3183,9 @@ vchiq_register_child(struct platform_device *pdev, const char *name)
 
 static int vchiq_probe(struct platform_device *pdev)
 {
-	const struct of_device_id *of_id;
-	struct vchiq_drvdata *drvdata;
 	struct device *vchiq_dev;
 	int err;
 
-	of_id = of_match_node(vchiq_of_match, pdev->dev.of_node);
-	drvdata = (struct vchiq_drvdata *)of_id->data;
-	if (!drvdata)
-		return -EINVAL;
-	platform_set_drvdata(pdev, drvdata);
-
 	err = vchiq_platform_init(pdev, &g_state);
 	if (err)
 		goto failed_platform_init;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index e2cdfddaf02a..71b97d8d90bd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -95,10 +95,6 @@ struct vchiq_arm_state {
 
 };
 
-struct vchiq_drvdata {
-	const unsigned int cache_line_size;
-};
-
 extern int vchiq_arm_log_level;
 extern int vchiq_susp_log_level;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
