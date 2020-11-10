Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D9A2AE046
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 20:55:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E27D885DC1;
	Tue, 10 Nov 2020 19:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhkoTIyH55ZK; Tue, 10 Nov 2020 19:54:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F07385A96;
	Tue, 10 Nov 2020 19:54:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3E3B1BF30A
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7AAEE22EC9
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 19:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6cnImXAUUEz for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 19:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E7D2C203C4
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 19:54:50 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n129so15594334iod.5
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 11:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xTKuC7gZQNS77KmJ7VNzzgNSnao5Q0E26RN9NxbyMxw=;
 b=VOwVQkMaw/lCmPWCMsWEI6ZADPL6i01TnjtIRlgEZzx94jwj6jsMZOqnw4YuaYilYV
 W31FCYWWgBXL5uMHmEeVzoMckg2AqgGx4qu6aRt5EtBuX/1LWCH0vQyZCiAk1FK0qX1u
 HLt4VyYFTvaGMtrPbtGHqTavsa97UOISZXAHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xTKuC7gZQNS77KmJ7VNzzgNSnao5Q0E26RN9NxbyMxw=;
 b=OR39AZoc6rvOLmOpBrLVjJxU9lYcmp47xH3xhSSS97XR90W2WwWH68kkpvHM7+j81T
 6SuFGi+Oo48+F2g7f6RsJ5QQzVKTxZUEFmJwS7c4Z8nNqwycs5AIqgHF8En5J0DJnqfW
 PlYIwjkpiDASd4VGmxbHKTCg99CZvbIYlpNghBFB4GKb6jTXZEO+ZXj0C/MxM/hrfFlU
 Y3QCYW+ZlO9mfV4y4iNMisUDSM6CEqwZROkhf8QceDGNqIc4Sgu8odM4Gm6B6o5PrtBj
 5uuNt5ZLE/qgzPXP8EWYfPLo3dcmN9X6v4GpmgOn35GKQWlKry+Y7Vb0/phcQEaltZVp
 wuUQ==
X-Gm-Message-State: AOAM530jMRv3w1bMZNgK2zeye+NNWA34GOSEi9qDNRjLEZC6BLiPY7Lo
 3Auwen9yHCXAqsrrjR7ZuMrO+Q==
X-Google-Smtp-Source: ABdhPJyHNOyow41LnhkXLPULiUgFR9/L/j0V6ZPdNQdqQYkX2JvaR4O3pMIt00+dq2tAHnFxgvU8EQ==
X-Received: by 2002:a6b:7947:: with SMTP id j7mr15464767iop.143.1605038090309; 
 Tue, 10 Nov 2020 11:54:50 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o14sm123971ilg.71.2020.11.10.11.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 11:54:49 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: david.kershner@unisys.com, gregkh@linuxfoundation.org,
 keescook@chromium.org, peterz@infradead.org
Subject: [PATCH 12/13] drivers/staging/unisys/visorhba: convert stats to use
 seqnum_ops
Date: Tue, 10 Nov 2020 12:53:38 -0700
Message-Id: <6fb679d23de785bbd1be6a528127e29f8ee6abd7.1605027593.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605027593.git.skhan@linuxfoundation.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
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

seqnum_ops api is introduced to be used when a variable is used as
a sequence/stat counter and doesn't guard object lifetimes. This
clearly differentiates atomic_t usages that guard object lifetimes.

seqnum32 variables wrap around to INT_MIN when it overflows and
should not be used to guard resource lifetimes, device usage and
open counts that control state changes, and pm states.

atomic_t variables used for error_count and ios_threshold are atomic
counters and guarded by max. values. No change to the behavior with
this change.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 .../staging/unisys/visorhba/visorhba_main.c   | 37 ++++++++++---------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 7ae5306b92fe..3209958b8aaa 100644
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
@@ -41,8 +42,8 @@ MODULE_ALIAS("visorbus:" VISOR_VHBA_CHANNEL_GUID_STR);
 struct visordisk_info {
 	struct scsi_device *sdev;
 	u32 valid;
-	atomic_t ios_threshold;
-	atomic_t error_count;
+	struct seqnum32 ios_threshold;
+	struct seqnum32 error_count;
 	struct visordisk_info *next;
 };
 
@@ -374,10 +375,10 @@ static int visorhba_abort_handler(struct scsi_cmnd *scsicmd)
 
 	scsidev = scsicmd->device;
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-		atomic_inc(&vdisk->error_count);
+	if (seqnum32_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+		seqnum32_inc(&vdisk->error_count);
 	else
-		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
+		seqnum32_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	rtn = forward_taskmgmt_command(TASK_MGMT_ABORT_TASK, scsidev);
 	if (rtn == SUCCESS) {
 		scsicmd->result = DID_ABORT << 16;
@@ -401,10 +402,10 @@ static int visorhba_device_reset_handler(struct scsi_cmnd *scsicmd)
 
 	scsidev = scsicmd->device;
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-		atomic_inc(&vdisk->error_count);
+	if (seqnum32_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+		seqnum32_inc(&vdisk->error_count);
 	else
-		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
+		seqnum32_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	rtn = forward_taskmgmt_command(TASK_MGMT_LUN_RESET, scsidev);
 	if (rtn == SUCCESS) {
 		scsicmd->result = DID_RESET << 16;
@@ -429,10 +430,10 @@ static int visorhba_bus_reset_handler(struct scsi_cmnd *scsicmd)
 	scsidev = scsicmd->device;
 	shost_for_each_device(scsidev, scsidev->host) {
 		vdisk = scsidev->hostdata;
-		if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
-			atomic_inc(&vdisk->error_count);
+		if (seqnum32_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
+			seqnum32_inc(&vdisk->error_count);
 		else
-			atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
+			seqnum32_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	}
 	rtn = forward_taskmgmt_command(TASK_MGMT_BUS_RESET, scsidev);
 	if (rtn == SUCCESS) {
@@ -803,9 +804,9 @@ static void do_scsi_linuxstat(struct uiscmdrsp *cmdrsp,
 		return;
 	/* Okay see what our error_count is here.... */
 	vdisk = scsidev->hostdata;
-	if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
-		atomic_inc(&vdisk->error_count);
-		atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
+	if (seqnum32_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
+		seqnum32_inc(&vdisk->error_count);
+		seqnum32_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 	}
 }
 
@@ -881,10 +882,10 @@ static void do_scsi_nolinuxstat(struct uiscmdrsp *cmdrsp,
 		kfree(buf);
 	} else {
 		vdisk = scsidev->hostdata;
-		if (atomic_read(&vdisk->ios_threshold) > 0) {
-			atomic_dec(&vdisk->ios_threshold);
-			if (atomic_read(&vdisk->ios_threshold) == 0)
-				atomic_set(&vdisk->error_count, 0);
+		if (seqnum32_read(&vdisk->ios_threshold) > 0) {
+			seqnum32_dec(&vdisk->ios_threshold);
+			if (seqnum32_read(&vdisk->ios_threshold) == 0)
+				seqnum32_set(&vdisk->error_count, 0);
 		}
 	}
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
