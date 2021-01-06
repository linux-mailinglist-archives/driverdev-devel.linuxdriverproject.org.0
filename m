Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 502402EC177
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 17:51:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A227F86546;
	Wed,  6 Jan 2021 16:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQxCyxPrzWOq; Wed,  6 Jan 2021 16:51:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E8FD8648E;
	Wed,  6 Jan 2021 16:51:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF1E71BF404
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 16:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBBC587347
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 16:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zxOFD6EgJVj for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 16:51:24 +0000 (UTC)
X-Greylist: delayed 00:52:55 by SQLgrey-1.7.6
Received: from mail-lf1-f73.google.com (mail-lf1-f73.google.com
 [209.85.167.73])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2302086DAC
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 16:51:24 +0000 (UTC)
Received: by mail-lf1-f73.google.com with SMTP id m18so4812477lfa.0
 for <devel@driverdev.osuosl.org>; Wed, 06 Jan 2021 08:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:message-id:mime-version:subject:from:to:cc;
 bh=0QeHafaN+6pva6XnlDmaJHR7Sw5XHBtBnuyuxZTaO/k=;
 b=mTK7oXr4IVYP2JsFQR9Q/8mLdfi9OxywhsKdo/JeZLzUYaqEgbyBm++04dMvQo921c
 cxuiHV3l5BcGtABo8zKr68L9vN6CA2zX9jTjIMiCrJ15DPbGGCypB7N+2Usqy20dlzO6
 A/kmCUEMrZts8I/3cZZuLE/s/8xZQdRgpgcYjYbC0oZ5ltKVV5getwcnajMK2bNtClNK
 VXMxg6QXeezfOGPaT4FNkA+MrYccRnEaOSkCejwhOKWdhV1PD1Tje1/EOzFL5DZY6P0F
 5zFKMFmQCfA8uBYw2V0gt6m/RHqPfFDgZRl60gigSIY095J/fW3g0BYTBcnALOQNfZmF
 Z/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=0QeHafaN+6pva6XnlDmaJHR7Sw5XHBtBnuyuxZTaO/k=;
 b=dy5L69wOHE84cWKhq9aKKmoQhwibcw6sOO3UqYdB+ilr2Sf2jHe1cC6FfiFv/14+HH
 eIZWWMmLZ0anyzbs8D8vipNmExFr4yyBryyx8V9b2/igDXgu/i2uAc2eT+KnneJszXFc
 RbGzda6HZ5TR4b8kKK+a2CEKX+hOOuD7nZIyZM6wKc30LQbbyhrh6s9wFz3wg9WmRUI0
 pNSzzKtcGTlrM0By0tYLB3rEWfGS9k+bxq6Z7JmBD2N8dtU97OhGNeAm4uwJQjSJrS0C
 iVQzB2MqIikZGZcRoeNcG481EVBeN2Bi3jd751+yvRyhX2A/1VFvjM/+i4ssijyAp62M
 Jc3g==
X-Gm-Message-State: AOAM531ZBuG1iHSe4iHI7h6bgE93kqNFlpObZTu7iHA7eFQKb6Q42OEP
 YgFBoy1X2XG+vrbjcfqd/nyKoJns2xiXcA==
X-Google-Smtp-Source: ABdhPJwKN7FUiRc2rONR/HNbHQBFWfLJA4/YW6ZFOnVKiisHTsbeCAG+QftF3R6YIhFKG8RpFCA1eJaKEifo6A==
X-Received: from lux.lon.corp.google.com
 ([2a00:79e0:d:210:7220:84ff:fe09:a3aa])
 (user=maennich job=sendgmr) by 2002:a5d:4d4f:: with SMTP id
 a15mr4856061wru.315.1609948325216; Wed, 06 Jan 2021 07:52:05 -0800 (PST)
Date: Wed,  6 Jan 2021 15:52:01 +0000
Message-Id: <20210106155201.2845319-1-maennich@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH] staging: ION: remove some references to CONFIG_ION
From: Matthias Maennich <maennich@google.com>
To: linux-kernel@vger.kernel.org
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, maennich@google.com,
 Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With commit e722a295cf49 ("staging: ion: remove from the tree"), ION and
its corresponding config CONFIG_ION is gone. Remove stale references
from drivers/staging/media/atomisp/pci and from the recommended Android
kernel config.

Fixes: e722a295cf49 ("staging: ion: remove from the tree")
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Hridya Valsaraju <hridya@google.com>
Cc: Rob Herring <robh@kernel.org>
Cc: linux-media@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 .../media/atomisp/pci/atomisp_subdev.c        | 20 -------------------
 kernel/configs/android-recommended.config     |  1 -
 2 files changed, 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 52b9fb18c87f..b666cb23e5ca 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -1062,26 +1062,6 @@ static const struct v4l2_ctrl_config ctrl_select_isp_version = {
 	.def = 0,
 };
 
-#if 0 /* #ifdef CONFIG_ION */
-/*
- * Control for ISP ion device fd
- *
- * userspace will open ion device and pass the fd to kernel.
- * this fd will be used to map shared fd to buffer.
- */
-/* V4L2_CID_ATOMISP_ION_DEVICE_FD is not defined */
-static const struct v4l2_ctrl_config ctrl_ion_dev_fd = {
-	.ops = &ctrl_ops,
-	.id = V4L2_CID_ATOMISP_ION_DEVICE_FD,
-	.type = V4L2_CTRL_TYPE_INTEGER,
-	.name = "Ion Device Fd",
-	.min = -1,
-	.max = 1024,
-	.step = 1,
-	.def = ION_FD_UNSET
-};
-#endif
-
 static void atomisp_init_subdev_pipe(struct atomisp_sub_device *asd,
 				     struct atomisp_video_pipe *pipe, enum v4l2_buf_type buf_type)
 {
diff --git a/kernel/configs/android-recommended.config b/kernel/configs/android-recommended.config
index 53d688bdd894..eb0029c9a6a6 100644
--- a/kernel/configs/android-recommended.config
+++ b/kernel/configs/android-recommended.config
@@ -81,7 +81,6 @@ CONFIG_INPUT_JOYSTICK=y
 CONFIG_INPUT_MISC=y
 CONFIG_INPUT_TABLET=y
 CONFIG_INPUT_UINPUT=y
-CONFIG_ION=y
 CONFIG_JOYSTICK_XPAD=y
 CONFIG_JOYSTICK_XPAD_FF=y
 CONFIG_JOYSTICK_XPAD_LEDS=y
-- 
2.29.2.729.g45daf8777d-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
