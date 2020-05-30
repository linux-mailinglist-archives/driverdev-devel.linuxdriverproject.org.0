Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D031E936D
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 21:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61B8587998;
	Sat, 30 May 2020 19:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5fB1qNgtdbA; Sat, 30 May 2020 19:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19F66878A4;
	Sat, 30 May 2020 19:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2E521BF373
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 19:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2538878A6
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 19:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMJQKDrZRzLF for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 19:32:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 10EDD878A4
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 19:32:12 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C93B2074D;
 Sat, 30 May 2020 19:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590867131;
 bh=7cTkxXgRiO29IpoJV/L31iUYghUqHIk+zT/61X8nXHg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x25j37GIR0zDzDogC9mR5LgH744ECJoTi3FgRrMr/vfPOysZFGKBK5b3FzFujp3X4
 c5zFybjcb+RCgApg1ul0tGG/wuPL36Qrp2nHA2lxixcZkFs7V4TTfqy3BMAH88qqZu
 RK2RBFTsDHeiJ2WzioyGutcG7lVTMqncXWffXMqQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jf7DF-003LJC-CW; Sat, 30 May 2020 21:32:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 2/2] media: atomisp: get rid of sh_css_pipe.c
Date: Sat, 30 May 2020 21:32:08 +0200
Message-Id: <7d398a74c789941b36646d1b27cada97a8b58b06.1590866796.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590866796.git.mchehab+huawei@kernel.org>
References: <cover.1590866796.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's nothing there, just comments.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Makefile          |  1 -
 drivers/staging/media/atomisp/pci/sh_css_pipe.c | 17 -----------------
 2 files changed, 18 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/sh_css_pipe.c

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index 0b62020f9b8b..9dc8072799e3 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -37,7 +37,6 @@ atomisp-objs += \
 	pci/sh_css_param_dvs.o \
 	pci/sh_css_param_shading.o \
 	pci/sh_css_params.o \
-	pci/sh_css_pipe.o \
 	pci/sh_css_properties.o \
 	pci/sh_css_shading.o \
 	pci/sh_css_sp.o \
diff --git a/drivers/staging/media/atomisp/pci/sh_css_pipe.c b/drivers/staging/media/atomisp/pci/sh_css_pipe.c
deleted file mode 100644
index b6bd47d9b01c..000000000000
--- a/drivers/staging/media/atomisp/pci/sh_css_pipe.c
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Support for Intel Camera Imaging ISP subsystem.
- * Copyright (c) 2015, Intel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-/* This file will contain the code to implement the functions declared in ia_css_pipe.h and ia_css_pipe_public.h
-   and associated helper functions */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
