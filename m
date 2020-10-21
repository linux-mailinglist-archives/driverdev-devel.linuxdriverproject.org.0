Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1882947B4
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 07:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3078F861F0;
	Wed, 21 Oct 2020 05:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWD5NT6dg7i8; Wed, 21 Oct 2020 05:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0861985FBA;
	Wed, 21 Oct 2020 05:10:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6311BF85D
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 05:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 795CA873D0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 05:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D++pvmfhn6Av for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 05:10:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7164E873BC
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 05:10:26 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j7so766883pgk.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 22:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fz6DzrGGPP8zFxtoUoU/zyK1Eq1rYQIJMtG16VRcrs8=;
 b=cMgfgIpcffHW74TfcNtV1x2lv6rlaPZAOOPZsXPucatJ3mU0/nQ0qN9zlYIX/mKBbL
 DY4Y1kzeHf+MxbWQCUe1GxNG3WqkBCUcvfxTs9oaDM5LW/DJpnpGFUFbt0LoB3lRu/n5
 GOqZ6JD4tZMOufs1XkGZ6Ff0yLjJIvMXUHsWEogGvcNebt1EYdEnvfUuEhyIsKX9+Yme
 AmIzttGlG+3G7R/5B2WuqQfCGy8sMw6Q8W2fpPNFrqClTWZAZgPjmNXExYcJ+HNNX6rI
 iFsNuMQybqXRST5yioHMx5tQqY5afjvhwgfLn9Dj8KByd6cZXqIgf20zoGBUagI34ook
 oolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fz6DzrGGPP8zFxtoUoU/zyK1Eq1rYQIJMtG16VRcrs8=;
 b=Odi18E/pByzlbN8/TvpWkq38ra3LpU2LgnEq/QZFCppb6gunnBaVJkhvycyX9u0MSy
 qIdNiDdfgj/mc1TUSS5JzgLDvehQZQqWv863wHGUCVUOdBYWJWCLFShxeMHdHjBxPkA/
 VKcgzWt0iIEkM2h1VieW/UGmh/Kojfj7y7GEuDpRi4GisXj4Xkue0ep2je3W32yIUgV7
 9hII1Ry35wFYsn6tSgbT8rWKA5apKXcVQUw48HvB+hcmp3fV2Vg+E78PTRc0NoogUHk0
 47dawb4gYt9OhCFEvb55RxVW2emsPAaGIgIGi13/5VAhanbSjTodcsShqBkial8DxZS+
 cYYA==
X-Gm-Message-State: AOAM531lMn52H2AL8yXOoJLpitG1zs/dVwfrzAcEMXWC9zJqh5GTwluT
 mFzSiclTd+skbbvVPn4H4ig=
X-Google-Smtp-Source: ABdhPJxcWWWHB/lo2yttwDme/YtQomWTCAVpsiWIqURiZNIDoHR85QhT5KpxviemfBiwnlg+8Wwc/A==
X-Received: by 2002:aa7:84c6:0:b029:155:d56e:5191 with SMTP id
 x6-20020aa784c60000b0290155d56e5191mr1529691pfn.41.1603257025992; 
 Tue, 20 Oct 2020 22:10:25 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id j37sm869997pgi.20.2020.10.20.22.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 22:10:25 -0700 (PDT)
Date: Wed, 21 Oct 2020 10:40:21 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
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

Rename show_engine_regs to engine_regs_show as per the convention
followed. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 7698e5ef2a7c..b6d1afbd452d 100644
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
+static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
