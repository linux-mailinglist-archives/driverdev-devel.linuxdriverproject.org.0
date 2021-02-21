Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C424D320AE2
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:05:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CC80838AB
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PcmthZefyqo2 for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 14:05:29 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id DE686835B1; Sun, 21 Feb 2021 14:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32B40835E0;
	Sun, 21 Feb 2021 14:05:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E6E11BF2F9
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B3A984462
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68vndEC9OzYk for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 14:05:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D542844CE
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 14:05:01 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id d2so7044864pjs.4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 06:05:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ztDsdAIBTtQ1nkN7dw6CYE5xnJ1DaXEAMZjHk0Yhkkw=;
 b=onu8XAjRYpfgS1XmaGeFK8/i3BjjsIYZDm3eYYfKFBPD6KokpVxJZ/tvIazI5wbSsM
 wRExyj1tZ9mQGD/rE2rKkk5v+oZN1iFt9tv+kMiImWNnveDsMcZgnlMGa32wxpn6g4U+
 3twzkOcqIvImyTChMmOqcjewmoxmiVDsCYbXnrJ0vYmngLxwUU9c0CuK+TvGDosonvpG
 k+VHua7gCpbwd+2cs8ciVCYds4l3zjqNSv/mpTCILd2CMdJExB8HAnPGKbcKKYHNHGSQ
 VfoNccsZWl8J5QMuFm+FEEG+k/X2Sl2xX4VBBvAwUEQP2Flc52dZB09CuoVf/pbjabr4
 vJ4g==
X-Gm-Message-State: AOAM53183nurSa6L2zXC52zUAeleNS+0RAzd6uJHy3n0pRzGZrr/hTfT
 TVODxrMfi5/jaKJnb3STSw4=
X-Google-Smtp-Source: ABdhPJwzZcsp9cJ7K4okRUk9bpxKQIxBd+1Jag4P8sKj8kZVI6r/mZByZEV4zL13h0d9nBbmPUPj1A==
X-Received: by 2002:a17:903:31d1:b029:de:8361:739b with SMTP id
 v17-20020a17090331d1b02900de8361739bmr17605925ple.85.1613916301220; 
 Sun, 21 Feb 2021 06:05:01 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id e1sm11511838pjm.12.2021.02.21.06.04.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 06:05:00 -0800 (PST)
Date: Sun, 21 Feb 2021 19:34:57 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging: media/atomisp: don't compile unused code
Message-ID: <90eb63796a8f8aca988efb33247ea01f4a860074.1613915981.git.mail@karthek.com>
References: <cover.1613915981.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613915981.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
