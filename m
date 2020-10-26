Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C0C29949C
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 18:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 043D685D7E;
	Mon, 26 Oct 2020 17:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFiv57RU2Qbt; Mon, 26 Oct 2020 17:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3F7285B2F;
	Mon, 26 Oct 2020 17:58:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5BA1BF376
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88019870E2
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGRFStk1g4zE for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 17:57:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C5F9870C7
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 17:57:59 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 19so6472465pge.12
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 10:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WTBxUBEKn0g1IPvl+ubZhUrAfqIG3SetFNG2DnkSH24=;
 b=TgI40ITZQH2wzGTfXDA82P1pyawFS2wFzCm8XU2Kx5upwQRQ8RcULXBuQb5/xdLpHW
 TT8InCZvHQRueV7mH81jzqbGViVv3uh7s8noG+pmZEwj9LMZbc1Tb6BZ69OSr3ajP3O1
 HRPChaKjtt1G9sBrkKgfUvsybXNbza0VRKk+GGVjmRO02rPAsG26z/3ln1ucPvqsCCBX
 W+yYrZ1/UxVvtUENcf5sjPZOBi2Hb8XBPCmK29b6Pj+W+u4TYkFHPbkAP2YOQXxnjX2f
 +bxXl/Kmp9yjAD+JzwgoB1Z0tpFUvE/lpZbIgu1FF3h7AuXZYJlHWh9ARZxSOkoBKse2
 7Wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WTBxUBEKn0g1IPvl+ubZhUrAfqIG3SetFNG2DnkSH24=;
 b=cUk2X8pGgM/+z5AEOgEK+Ihd5Jk9pgP3I6xgrzvHzMrosajSvAw9yQBrbz7WMUV4eD
 RsSitMZ/FAeaPEp0CnnUIG6TGFqjCVhvX4p/L9xzRTWAqnhDXyTmRAGEEOmjHL/2seEv
 0iaRxu+Gb+Q7hhdKbrUMnf0gK1vYdDusZg+xRR7R2lxuX1aOGJrBy5Ah+9RdK9Gk80TI
 Sv4Uu4fKud8PYdmZWowt/J3ixkHqGP8uZIF4MDT3WxXwJjuL8T8wcc4k5BNms+SJeT0k
 3SMEaPFlH/FcankuatvOb+fZfkQisBTP+6m+9CtF8zkVbcfwY71naT1LS+ber1SaQ4Yx
 cXxg==
X-Gm-Message-State: AOAM530uv6DSkU3RwydFlHGhZCesZKT9RnQuxOl3DNcW8y+eV/8Ypzlu
 AWkeapwDZnGeHfv6GOVB2gU=
X-Google-Smtp-Source: ABdhPJz7xEkdhgdnwTLqtM8mjOrh+2J8ZfKgprcNskpGyjO+psFl02mFVe415DhytRAAk6PrMzP8pg==
X-Received: by 2002:a63:5c5f:: with SMTP id n31mr13753728pgm.397.1603735078705; 
 Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
Received: from my--box ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id w17sm12685792pjq.42.2020.10.26.10.57.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:27:53 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <9c8c0d60cec70b99f55d6e228b7585d47be695c2.1603734679.git.mh12gx2825@gmail.com>
References: <c853e015ec460b909a3e2cd529bc0f69093bce3e.1603734679.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c853e015ec460b909a3e2cd529bc0f69093bce3e.1603734679.git.mh12gx2825@gmail.com>
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename show_engine_regs show function to engine_regs_show as per the
convention followed. The show function macro DEVICE_ATTR also replaced
by DEVICE_ATTR_RO. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - None for this patch.
Changes since v1:
   - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.

 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index e1dac89ca6a2..175fe8b0d055 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
 }
 
 /**********  SysFS Attributes **********/
-static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
@@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 		ldev->desc_completed
 	);
 }
-static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
+static DEVICE_ATTR_RO(engine_regs);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
