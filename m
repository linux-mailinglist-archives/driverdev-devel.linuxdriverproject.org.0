Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33634251534
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 11:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6F6A86652;
	Tue, 25 Aug 2020 09:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xP1D-VJdM7bm; Tue, 25 Aug 2020 09:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C12A86407;
	Tue, 25 Aug 2020 09:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1FBA1BF2B0
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9833865D3
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id heUUQ89popbP for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 09:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 219B6864C1
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 09:19:35 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r15so11918369wrp.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 02:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0ERb1UGJKdJwjiGp+CEUiQ78DEvQjOblZZuZAofFpZg=;
 b=WOfTQDCkQTW+xXen4ZdsYcGvw0ZWjuT0pyUcCIgkwIHz/NwtflUvcZpwN4Ax2fLZMO
 RETL/s4sbj0RKdUHhfuUBC7iPEUK7ikaLfWaE7P8DqB4uGErqgXv8SaM3RSty6aKLUOb
 SXEfTLTTf6WAQ2nVfYI9R4c/HC56eNE/vQC4YFl+m7on7JgVa9KsrsXcGyJEEtBtRv50
 rR+kRBgEVVlvnFUN5eddM5RUaVXx8ReBDNDVvZHc7x2CHxT2sJEywII6is35QpW13yPh
 dre1uo3e1qzbL4LVPflF4fYpP7cwTn/qccI4HiM5vNGFdRXMR6w1s4GiN34YI88L5KyN
 4p/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0ERb1UGJKdJwjiGp+CEUiQ78DEvQjOblZZuZAofFpZg=;
 b=W4iYp2NwLCobP9wCS53oeMvJYU03ziPtKY/5prJ31t1lpwBC92TwZdAIOABEki6fo8
 1Glw0oQN9X8aMCihjOvSuMiXAioenBXCWAdRwcxbvoOTxeOZj4U0e19XywrOCdTD0Spo
 T154XGpMz+GS9inXPEBzZeHkPLVDjjcPT1aTYxQvmtMvm79/K0uIl/dgUBrnMXyexHH+
 10g7Rbbm8/1ZahFNuF9OquHq5NcslvK3xrbtjPgOWjUIVejzfw9WiyzOWQJRwTmQ3hFV
 xyGK74I7LeXtqIZ0ai7RK0OHX8ELh1jriHU0RdIFxCLAaH4PKXM2qGHu9K8MD5lh/U2r
 BhEg==
X-Gm-Message-State: AOAM53033zdl2mgXYAIVL7iYPzQHjDrV1skDZRnfGllAgeE/OaL2W/kN
 jbkwDqLoL2ZRs4ATT+o3bdY=
X-Google-Smtp-Source: ABdhPJxAojHXzDH991BwUL+A3oGhvwJa39rmKGzXMDPYF/LVVbq4UeNgbt+6Ap3ApQEQ98SK828lPw==
X-Received: by 2002:adf:ee11:: with SMTP id y17mr9617948wrn.294.1598347173695; 
 Tue, 25 Aug 2020 02:19:33 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id 202sm4964274wmb.10.2020.08.25.02.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 02:19:33 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2] staging: emxx_udc: Fix passing of NULL to
 dma_alloc_coherent()
Date: Tue, 25 Aug 2020 10:19:28 +0100
Message-Id: <20200825091928.55794-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825082846.GR5493@kadam>
References: <20200825082846.GR5493@kadam>
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
Cc: devel@driverdev.osuosl.org, saiyamdoshi.in@gmail.com, yuehaibing@huawei.com,
 gregkh@linuxfoundation.org, damm+renesas@opensource.se,
 linux-kernel@vger.kernel.org, jarias.linux@gmail.com,
 frank@generalsoftwareinc.com, horms+renesas@verge.net.au,
 alex.dewar90@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
though, strangely, NULL is passed as the struct device* argument. Pass
the UDC's device instead. Fix up the corresponding call to
dma_free_coherent() in the same way.

Build-tested on x86 only.

Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
v2: also fix call to dma_free_coherent() (Dan)

@Magnus: I noticed you contributed this code back in 2014... I don't
suppose you happen to have the hardware lying around to test this so we
can get a Tested-by....? :)
---
 drivers/staging/emxx_udc/emxx_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 03929b9d3a8bc..d0725bc8b48a4 100644
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
@@ -3148,7 +3148,7 @@ static int nbu2ss_drv_remove(struct platform_device *pdev)
 	for (i = 0; i < NUM_ENDPOINTS; i++) {
 		ep = &udc->ep[i];
 		if (ep->virt_buf)
-			dma_free_coherent(NULL, PAGE_SIZE, (void *)ep->virt_buf,
+			dma_free_coherent(udc->dev, PAGE_SIZE, (void *)ep->virt_buf,
 					  ep->phys_buf);
 	}
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
