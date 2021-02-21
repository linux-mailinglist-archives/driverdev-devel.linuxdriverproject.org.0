Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609A7320B7B
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:38:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 997E5870DD;
	Sun, 21 Feb 2021 15:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EuVfYU61Aewm; Sun, 21 Feb 2021 15:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16C1687060;
	Sun, 21 Feb 2021 15:38:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B53291BF954
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADA3F8709F
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8cAZOTUjaUFZ for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A5C787060
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:38:46 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id s23so3846190pji.1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 07:38:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ztDsdAIBTtQ1nkN7dw6CYE5xnJ1DaXEAMZjHk0Yhkkw=;
 b=rB0QgfCGJ1KXpzbBHd6FESIwp0K88/tNSIpePqbc/oQAsq9xwLAf+1Wf43DFH420tv
 iAKfuCmwKVgr0CXM54U0hgACPqL/SBwKJevBYpnDXp60TgvUXF27Dz+4CG0C4UfJDG3P
 x97p+KujPNlJSL/CC2F7kzA+Q67ewr5TFAuQhH16koiy15vo830S5Z4N7q3BD7XWtoni
 tGIqe9w/5lbOHzgSGoiwYxSPF3BlExZYvNzUNLAge9qvcm6t5WMM3ZL0MzE9zI6twXW/
 eQAG4wpndHS5ts82044jWok+7SjYuN1h8uqDrHvCWh8l4W/M9r244iyprlHnrIQLQCqt
 8D+g==
X-Gm-Message-State: AOAM532egWUaPDGpHEiTbIswho+O61JR0CP4kpkhZGZ9MY1rY3vMmkmy
 Iq6laW8FQ7Sd8xKOjN/Ju0s=
X-Google-Smtp-Source: ABdhPJy7ew3irN+CjCeSThYxeb8w3rsTyMjhsPtQX1cWNgJT0jqJxGKKKXDh1DmGmsMnGXZx5F5UGQ==
X-Received: by 2002:a17:902:c114:b029:e3:b2e7:d410 with SMTP id
 20-20020a170902c114b02900e3b2e7d410mr15102746pli.16.1613921925678; 
 Sun, 21 Feb 2021 07:38:45 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id o20sm14636124pjt.43.2021.02.21.07.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 07:38:45 -0800 (PST)
Date: Sun, 21 Feb 2021 21:08:40 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: [PATCH] staging: media/atomisp: don't compile unused code
Message-ID: <YDJ+gDMyBeNp0Jft@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

currently the functions defined in ibuf_ctrl_rmgr.c file are only
used by isys_init.c when CONFIG_VIDEO_ATOMISP_ISP2401 is selected
so dont't compile it when not needed, also fixes some sparse warnings

Signed-off-by: karthik alapati <mail@karthek.com>
---
 drivers/staging/media/atomisp/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index 1dfad0dd0..51498b2e8 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -126,7 +126,6 @@ atomisp-objs += \
 	pci/runtime/inputfifo/src/inputfifo.o \
 	pci/runtime/isp_param/src/isp_param.o \
 	pci/runtime/isys/src/csi_rx_rmgr.o \
-	pci/runtime/isys/src/ibuf_ctrl_rmgr.o \
 	pci/runtime/isys/src/isys_dma_rmgr.o \
 	pci/runtime/isys/src/isys_init.o \
 	pci/runtime/isys/src/isys_stream2mmio_rmgr.o \
@@ -323,7 +322,9 @@ DEFINES := -DHRT_HW -DHRT_ISP_CSS_CUSTOM_HOST -DHRT_USE_VIR_ADDRS -D__HOST__
 #DEFINES += -DUSE_KMEM_CACHE
 
 ifeq ($(CONFIG_VIDEO_ATOMISP_ISP2401),y)
-atomisp-objs += $(obj-cht)
+atomisp-objs += \
+	$(obj-cht) \
+	pci/runtime/isys/src/ibuf_ctrl_rmgr.o
 DEFINES += -DISP2401 -DISP2401_NEW_INPUT_SYSTEM -DSYSTEM_hive_isp_css_2401_system
 else
 atomisp-objs += $(obj-byt)
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
