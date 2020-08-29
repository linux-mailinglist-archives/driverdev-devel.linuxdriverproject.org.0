Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D92563F2
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Aug 2020 03:15:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9634E88841;
	Sat, 29 Aug 2020 01:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3-lqkYxuejQ; Sat, 29 Aug 2020 01:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97E0B8880E;
	Sat, 29 Aug 2020 01:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED5D51BF5E6
 for <devel@linuxdriverproject.org>; Sat, 29 Aug 2020 01:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7E7686C73
 for <devel@linuxdriverproject.org>; Sat, 29 Aug 2020 01:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THvjj_ocfqqQ for <devel@linuxdriverproject.org>;
 Sat, 29 Aug 2020 01:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DB1686C4B
 for <devel@driverdev.osuosl.org>; Sat, 29 Aug 2020 01:15:02 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id s1so858332iot.10
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 18:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vxf7wgPeqLBabv1qOZthQnmoMUNbcbCMRZRv8B/GiMg=;
 b=Opj1LNCXNlXvkflsoK43cbKot9oqmkOo6+IZa/KEjk365anWH/gs7yT32PBD0YHMdK
 dFd/6mcwA/lVrmjMW2VFdHLxIE7Q3dWeRoK7Uv4sVxGAhrkL5/V4EzdpP0ynKJ0R//f0
 AtiZDc3udTbtviy7PviS9WgvZWBrVljjHZHiAOIMgD4M9xpdKQN6bCm8ibyOLWuIbh5o
 hYt4vq/tXwWuMdz9SV3p4UbY+XUQXiXj6qg8/K7iRfTG/9Xt1PE8Qp/TzuwPOTEqXJdC
 sn3Yd/yYPo7lK8BWa2V1/u+TBrn2BAGX+0FkoR+DW9FXb4NioTcVyI9+wjQGMURxyiBF
 RYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vxf7wgPeqLBabv1qOZthQnmoMUNbcbCMRZRv8B/GiMg=;
 b=lIWwZKTG5JvL9cHm0pdA7VJfP/GhrOX+9lBlPBnrPujN6drVeSuVtJZD6lqjwSCfAF
 Z7YSjGqYhDypM/dHQllm/lOYRH29Q4D7KtjkeRsI7arwu2a2FJFQIa8dTw7Cbcuvrb7B
 08z22R/x8u5XPXDvWMnitDbXdPoaxy2CUzRyEvxVyjCGq4b/bhabFvCeziieLDZz4iLI
 tbzPFjsmkf4QHHvr1029Znm+u6NcrEFLpiM9ln1zLuGuewkw6RzhgSCHTLzUrtK+gLvm
 3W1OVH78i4lvy7nV8bQ70e4JS8Afb5fOwg5ElMvkxE/cShrnHI8AP0646/9kUF/I/+Ro
 qZCA==
X-Gm-Message-State: AOAM532yWcmOuIAbNLIT7HE9TddPTnTRXlhTj1vwjTRugIckES+micII
 RahOgBwnlIr8xFTlV8uwsnE=
X-Google-Smtp-Source: ABdhPJxa6QgFX0IFJ+MWlMZxMd54+W6h+M9i7hsSajiazkRvrQ3/fk4rFtXRbPM1a7gfb5XbaWuG0A==
X-Received: by 2002:a5d:9a15:: with SMTP id s21mr1143658iol.141.1598663701448; 
 Fri, 28 Aug 2020 18:15:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v75sm570527ila.19.2020.08.28.18.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Aug 2020 18:15:01 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: os_dep: fixed some coding style issues
Date: Fri, 28 Aug 2020 20:14:05 -0500
Message-Id: <20200829011405.2869-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed some coding style issues.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index f1e2829a19a7..2b2f4505b98b 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -121,6 +121,7 @@ extern unsigned int oob_irq;
 static irqreturn_t gpio_hostwakeup_irq_thread(int irq, void *data)
 {
 	struct adapter *padapter = data;
+
 	DBG_871X_LEVEL(_drv_always_, "gpio_hostwakeup_irq_thread\n");
 	/* Disable interrupt before calling handler */
 	/* disable_irq_nosync(oob_irq); */
@@ -131,6 +132,7 @@ static irqreturn_t gpio_hostwakeup_irq_thread(int irq, void *data)
 static u8 gpio_hostwakeup_alloc_irq(struct adapter *padapter)
 {
 	int err;
+
 	if (oob_irq == 0) {
 		DBG_871X("oob_irq ZERO!\n");
 		return _FAIL;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
