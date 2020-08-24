Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77662500D3
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 17:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28AF18836B;
	Mon, 24 Aug 2020 15:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kz537DEAxb6J; Mon, 24 Aug 2020 15:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9952687D75;
	Mon, 24 Aug 2020 15:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 587A51BF309
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 15:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 550C387D8E
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 15:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9taMzndrWHZh for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 15:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A0B5287D75
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 15:22:07 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id u18so8733262wmc.3
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 08:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=41TxyHICC+s6aQeo0YedfhOUY4gGQOiE3/gzLfTmhK8=;
 b=UPZAHY3aoz5wOk5QeAlrKi4lHHftgu9RkgR4o5Ya9tKmdXZ5uBTVvic6ApMuVDqhyB
 XR68EpCvZpY4FuaAZxe9b83xADELgF314JDi4j9vwEaC9F7Aztuff0iAx3Hk8HOmVG1q
 4F5/cr83HCraOS/Zj/RsLDTYZ5R137s/z7gAXSeuyMD7PZc/tHHAywxp0Ze6/J+tv78S
 gvw0ZaXBMg3urwDUFTmw7oawTx/teDC7UYe9e0O+lWAhKF4Luf/UYk9lMUv7AeqEyrR0
 KU8/yMYTs+s89yq1xx0RhHJ1c1g+ORsrPhq/BltLM1EOAyK5See4M7vf8kJZrJHyhW1U
 rD9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=41TxyHICC+s6aQeo0YedfhOUY4gGQOiE3/gzLfTmhK8=;
 b=r9xwqeVtsj/J+2vp7Dz021nz5Gr9nO+YXgT64XoioGzKPTjjCyzkITzDgJIG5Rhe0H
 mQx9rymCgtks0qmz52oviHS7dbz6IfkkoFw+zFgp3I7HAPS+RTUl6S8IO+U+m0GsKQ4E
 o1oRzhYcna/A+SkxNp10yv952ggY9IV3sV1ooazOjoWORvAdR2VkNdM4RMZnwGgGwxYg
 1PvuVGppaxhe65Q/IGYA7hjS3wPHumtAzWY0cCP0bG9dPbMTlhyEYdscoJxr694thiHg
 8ifAf0+DCgEk1sDhdg9TQJNOIW+DOKzF7mny6ukuZUpQ9lKZ0QvHmwY8OzX8Bo2F3sr6
 JTOQ==
X-Gm-Message-State: AOAM532QFaVNq6ThZBk7qwTOJ/Dm1r9+HaLsY/dCbVLFZ5Fz4B7azcuW
 SkiY7hZBye7IzCZqq9KAouA=
X-Google-Smtp-Source: ABdhPJwaPewrMNTaq5Qrv5GNb5FK9hQRs4NjNir76JWm9MAnYpHF5q6XegcWvQM597rRBLoVeX1WyA==
X-Received: by 2002:a7b:c8da:: with SMTP id f26mr6315877wml.126.1598282525798; 
 Mon, 24 Aug 2020 08:22:05 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id l7sm23730928wmh.15.2020.08.24.08.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Aug 2020 08:22:05 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: dan.carpenter@oracle.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 "Javier F. Arias" <jarias.linux@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 Magnus Damm <damm+renesas@opensource.se>,
 Simon Horman <horms+renesas@verge.net.au>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: emxx_udc: Fix passing of NULL to dma_alloc_coherent()
Date: Mon, 24 Aug 2020 16:19:17 +0100
Message-Id: <20200824151920.251446-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200824142118.GA223827@mwanda>
References: <20200824142118.GA223827@mwanda>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
though, strangely, NULL is passed as the struct device* argument. Pass
the UDC's device instead.

Build-tested on x86 only.

Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---

So I *think* this is the right fix, but I don't have the hardware so
I've only been able to build-test it. My worry is that I could be
passing in the wrong struct device* here, which would squelch the
warning without fixing the breakage.

Can someone cleverer than me tell me if this makes sense?

- Alex
---
 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 03929b9d3a8b..09e91449c08c 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2593,7 +2593,7 @@ static int nbu2ss_ep_queue(struct usb_ep *_ep,
 
 	if (req->unaligned) {
 		if (!ep->virt_buf)
-			ep->virt_buf = dma_alloc_coherent(NULL, PAGE_SIZE,
+			ep->virt_buf = dma_alloc_coherent(udc->dev, PAGE_SIZE,
 							  &ep->phys_buf,
 							  GFP_ATOMIC | GFP_DMA);
 		if (ep->epnum > 0)  {
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
