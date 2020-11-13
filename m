Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F92B22E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 18:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 214742E261;
	Fri, 13 Nov 2020 17:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ld4Dsy0kNA1s; Fri, 13 Nov 2020 17:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CB4C2E24D;
	Fri, 13 Nov 2020 17:46:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 302E31BF990
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CD2C87913
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LN8-1hkHskih for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 17:46:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 782618790B
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 17:46:49 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id p10so9223933ile.3
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XEtz35TwaMOmtP7wZDty93xaU0e4wII3qI7ntzR/4WQ=;
 b=MBLRtdNVXvb371vssRTTQIGlMBWRZWFOky+eOrsFPSWIyGwIFrbO3WCfYTXFCxtesk
 BQ3sUk+dJLBKLpYxajlh97iZOUIZiE3EWWVA4Ux2agGHurqQDjaq0+bm/exeIrN+GlhP
 YkxXbuynzH+IpN0i116JxOb+1sDrgFHgO6W2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XEtz35TwaMOmtP7wZDty93xaU0e4wII3qI7ntzR/4WQ=;
 b=bYD0yYcw/NHohsh3N4ZY1tvp5hd/q77m0EKHMPeRiqY0Njs5IlwaIqizPjgLFpuCPy
 1u/nWy6dImexBWjkQhxkEaH+v7nnV3Uzd6hAqvsnnQBxV3eF0QewGyjQg3Q4lMR8YXRl
 VUMqX+53AFZwX5A0jGiu38G/Zn8BhsWQYNHYBSixFs7+ytFwnnlb+VmjAwOBtmB1z6Rn
 yrHzVUR1OHwU/gqzah1P0c4fyGtoFB12KLmJJwA2dAPTZkHrVQG9Mac7V+bNFE/lgOQr
 ihk5vpOR8h/rm3iGqm3HvzwIy1SiFU+IVIYIQRPnU1bDmFJ62z23WH951t/gxtQLZ4ga
 0XFQ==
X-Gm-Message-State: AOAM531JsSdOsoVYBRJyU/ZWjeyDn5bPJSip1thzd8uQBNkbkjZC/0jV
 FJdTq6bmPolgS8eJRhcwU+83+A==
X-Google-Smtp-Source: ABdhPJzOuUC15iLMQufTNIo7HdP2XkphHFvteCLyXwmLRGJvWU3Jror9urZyYDx8rK37OJlqrdLoAA==
X-Received: by 2002:a05:6e02:1313:: with SMTP id
 g19mr748344ilr.177.1605289607715; 
 Fri, 13 Nov 2020 09:46:47 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:47 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: david.kershner@unisys.com, gregkh@linuxfoundation.org,
 keescook@chromium.org, peterz@infradead.org
Subject: [PATCH v2 12/13] drivers/staging/unisys/visorhba: convert stats to
 use seqnum_ops
Date: Fri, 13 Nov 2020 10:46:14 -0700
Message-Id: <948df30739a497922bafa4637f63218e9ec44e61.1605287778.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605287778.git.skhan@linuxfoundation.org>
References: <cover.1605287778.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath. Convert it to use
seqnum_ops.

atomic_t variable used for error_count are atomic counters. Convert it to
use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 .../staging/unisys/visorhba/visorhba_main.c   | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 7ae5306b92fe..7837eca83758 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/seq_file.h>
 #include <linux/visorbus.h>
+#include <linux/seqnum_ops.h>
 #include <scsi/scsi.h>
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_cmnd.h>
@@ -42,7 +43,7 @@ struct visordisk_info {
 	struct scsi_device *sdev;
 	u32 valid;
 	atomic_t ios_threshold;
-	atomic_t error_count;
+	struct seqnum32 error_count;
 	struct visordisk_info *next;
 };
 
@@ -374,8 +375,8 @@ static int visorhba_abort_handler(struct scsi_cmnd *scsicmd)
 
 	scsidev = scsicmd->device;
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-		atomic_inc(&vdisk->error_count);
+	if (seqnum32_fetch(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+		seqnum32_inc_return(&vdisk->error_count);
 	else
 		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	rtn = forward_taskmgmt_command(TASK_MGMT_ABORT_TASK, scsidev);
@@ -401,8 +402,8 @@ static int visorhba_device_reset_handler(struct scsi_cmnd *scsicmd)
 
 	scsidev = scsicmd->device;
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-		atomic_inc(&vdisk->error_count);
+	if (seqnum32_fetch(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+		seqnum32_inc_return(&vdisk->error_count);
 	else
 		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	rtn = forward_taskmgmt_command(TASK_MGMT_LUN_RESET, scsidev);
@@ -429,8 +430,8 @@ static int visorhba_bus_reset_handler(struct scsi_cmnd *scsicmd)
 	scsidev = scsicmd->device;
 	shost_for_each_device(scsidev, scsidev->host) {
 		vdisk = scsidev->hostdata;
-		if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-			atomic_inc(&vdisk->error_count);
+		if (seqnum32_fetch(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+			seqnum32_inc_return(&vdisk->error_count);
 		else
 			atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	}
@@ -803,8 +804,8 @@ static void do_scsi_linuxstat(struct uiscmdrsp *cmdrsp,
 		return;
 	/* Okay see what our error_count is here.... */
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
-		atomic_inc(&vdisk->error_count);
+	if (seqnum32_fetch(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
+		seqnum32_inc_return(&vdisk->error_count);
 		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	}
 }
@@ -884,7 +885,7 @@ static void do_scsi_nolinuxstat(struct uiscmdrsp *cmdrsp,
 		if (atomic_read(&vdisk->ios_threshold) > 0) {
 			atomic_dec(&vdisk->ios_threshold);
 			if (atomic_read(&vdisk->ios_threshold) == 0)
-				atomic_set(&vdisk->error_count, 0);
+				seqnum32_init(&vdisk->error_count);
 		}
 	}
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
