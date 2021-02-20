Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C263205A5
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 15:17:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D97F86F4EE
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 14:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtdGp5asEjyd for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 14:17:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 9698A6F633; Sat, 20 Feb 2021 14:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B4A46F48D;
	Sat, 20 Feb 2021 14:16:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7641BF82D
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 14:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36ED18399B
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 14:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qO8QgO1WHCAY for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 14:16:40 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 78B8C839BB; Sat, 20 Feb 2021 14:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF469839B4
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 14:16:38 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id j1so3926942pgh.4
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 06:16:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=4OkHhkzvFQiowFhMieNatI/2LoPDzKsla6UJw7fnLaE=;
 b=ONQ8NdgGXzZEmanNw26MBZcdJSisenzoGx8TcbSh3EJKR/yZYBsiCy2zsTdWAjM8w4
 Q6GZtzeaUAYV/8sfMOtw5NUwt1TkME60BTTlkCBc6yvbKw9lXzWNhRfoG79Ms1nYzPPU
 yKd3NUXQA4KcYU4Aa4vOmyZFpJYITI3R86PTa710sutLVY/OoAcnoP7RsZQh4I7TA+Zz
 xUGJLiulyiGwU0KbBU3HZ1At4ImPWTRgcK6yQ0WOrxIPxlHHmAnDsO+GDyrka5va2wvG
 GgGRsIjtZdMPvxvC5yGyM8SCMiYCQnWRRpvidLNWizyqRf1U9AqfaLiFbnbhOsKREQh1
 shHw==
X-Gm-Message-State: AOAM533Pg3xc1PdcWTdneBf2uVi6zjxOm5rLVj3WL+i+Gug/8ptDooqc
 SjkUjT29upXveI80Ymh271I=
X-Google-Smtp-Source: ABdhPJxmDWIXoSSt5X6KOjyKi38zdn3BaeHf781aDGPkh5prWqaZ4E+Q+Lt6y32PoynZXEg2GazUMA==
X-Received: by 2002:a05:6a00:8f:b029:1e8:6975:395e with SMTP id
 c15-20020a056a00008fb02901e86975395emr6552245pfj.55.1613830598292; 
 Sat, 20 Feb 2021 06:16:38 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.84])
 by smtp.gmail.com with ESMTPSA id u9sm5220857pgc.59.2021.02.20.06.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 06:16:37 -0800 (PST)
Date: Sat, 20 Feb 2021 19:46:27 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: [PATCH] staging: media/atomisp: don't compile unused code
Message-ID: <YDEZu3oniT/vUMMY@karthik-strix-linux.karthek.com>
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
is this the right patch or just compiling out those functions
by conditional comiplation is sufficient?

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
