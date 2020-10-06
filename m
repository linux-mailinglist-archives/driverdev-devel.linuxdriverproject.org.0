Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9917A28483B
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 10:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44CF78582C;
	Tue,  6 Oct 2020 08:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHlRiwB4BmAz; Tue,  6 Oct 2020 08:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C54EB85629;
	Tue,  6 Oct 2020 08:17:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D93371BF2F1
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 08:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA42F8511F
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 08:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Is1dTHX5G8Lp for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 08:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 055A585116
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 08:17:25 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id a9so4647898lfc.7
 for <devel@driverdev.osuosl.org>; Tue, 06 Oct 2020 01:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:cc:subject:message-id:mime-version:content-disposition;
 bh=/5MZorYI2P0RKQFIhOL/pMZNAYxxGQrsvDlS9cE+MSg=;
 b=hHGVYNKFgsbXf6BSP2zJVrgvHO+lgO41/moTuU8ZGZh/hHlFaqd8AjQh1GFPoFlS5o
 tsDMWyuXpVsXWZLCZeOawdr1Er+8tBDRG48sbNTtN2qjPPEYsFfa/Xk7ngdZBjgcpcZz
 v238pEKj70l9C67p3DqzLqo89mHoofzkSU6j1lFUo5AHVPT+xm+5pSLBFrOTYOQhIvpm
 j+48xsSHCzTLc3EpI/ez8QjGYgefesW32yHLnHtvHXfIv2dGQtr1GX9LiQLOyX6Uk6NL
 ao8GdtIpMa74tLr4INqJLawE02uJ3ACJMCbkpFJfQttKmzCpUBtjcGDUnBwkjwCY/NLk
 86Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:mime-version
 :content-disposition;
 bh=/5MZorYI2P0RKQFIhOL/pMZNAYxxGQrsvDlS9cE+MSg=;
 b=Jml4aujVLVuV2rdLEGVjodj4qv2cPbTjvRrsNWmRuUtiVxs5ax0lSkKYeMpy7mTmiT
 3wsMcvja30V5Eok72+LYO4PSFdTT5uaCrH/nTs+CA2Pygc5WUO4pmAIB3Vt2x6HsrzLH
 mx2dWGh2xxv7RiDYO9RG6ha1nC/uMrA3MknM/T9m2udZzpnm9VvysV+HIlmP5AH6sr2L
 DfTu9lEqWxCKrC0I1dXTBhsuEztcF9rikvsxtdONg/YQkM+Fl5QBHxidtlD1bL4UJa3u
 ugwwxubJH/1vntrHJT9DZ7O155E2FmaZVMGpoqDH9GCWOOREVtllmITymeExeE4EFzbV
 Z65A==
X-Gm-Message-State: AOAM530LWMN2VOUvJr7TZMOtbFz5KmC32/jRFcjgnb7Jz2ADBLHnM+IA
 GFxmBSIOTXijgv8NMM7kf3g=
X-Google-Smtp-Source: ABdhPJxQimuHzq3/8Xf77sWdNqHg8ZOT15eczQ4oIcyib3hE2EWEjmwdE3UKs4a4EtVsyr1UeSOvCA==
X-Received: by 2002:ac2:5506:: with SMTP id j6mr96173lfk.290.1601972243056;
 Tue, 06 Oct 2020 01:17:23 -0700 (PDT)
Received: from linux ([185.17.130.172])
 by smtp.gmail.com with ESMTPSA id z23sm497984lfe.238.2020.10.06.01.17.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 01:17:22 -0700 (PDT)
Date: Tue, 6 Oct 2020 10:17:21 +0200
From: Leonid Kushnir <leonf008@gmail.com>
Subject: [PATCH 2/2] media: staging: atomisp: Removed else branch in function
Message-ID: <20201006081721.GA35979@linux>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 leonf008@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning :

WARNING: else is not generally useful after a break or return

Expressions under 'else' branch in function 'gc0310_s_power' are
executed whenever the exppression in 'if' is False. Otherwise, return
from function occurs. Therefore, there is no need in 'else', and it has
been removed.

Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 6be3ee1d93a5..8201c15b5769 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -874,11 +874,10 @@ static int gc0310_s_power(struct v4l2_subdev *sd, int on)
 
 	if (on == 0)
 		return power_down(sd);
-	else {
-		ret = power_up(sd);
-		if (!ret)
-			return gc0310_init(sd);
-	}
+	ret = power_up(sd);
+	if (!ret)
+		return gc0310_init(sd);
+
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
