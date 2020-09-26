Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A90B279C96
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 23:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38D2D204C0;
	Sat, 26 Sep 2020 21:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9GiGQp-hmrIX; Sat, 26 Sep 2020 21:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC53F203AC;
	Sat, 26 Sep 2020 21:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A55C81BF487
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 21:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A258184F76
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 21:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xo79AVVrsgZN for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 21:16:26 +0000 (UTC)
X-Greylist: delayed 00:16:56 by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 713A982333
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 21:16:26 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k15so7578808wrn.10
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 14:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+8Oh61VDkKJm8ATQ6jeOPbqJJMPXYpW1qx7rAsBes8k=;
 b=HVShcwWplL6TLG8eKzE9I2cbBGltgFRs+3nxwGZiKZps/gfx7DlelIcWZwq7m1JibS
 p77URUc/lhUruvm9wT7swRBAXtkgXzhRYjnJWBlEwpFZUr1iJEcyazVok7ankOAcBMMQ
 kcEuEyPYPAjuN8a9nrvPuJs6TROTVUfiCNgAtuFxaZwrzi5++fZluzev26ZlhXCRlEfc
 jrTvjEGhJEjcfLW72Uy5a8k6OdXENdQj+XIAtjIazlEpoMEsR+/JQ3OgXyltepxMOpJ6
 07GlegFDGdOfX0C/RRx7rfWvsNh3+o4TQ2v5Y1tSFSM7KRIBhcZwJQKelboBGQvnF4bg
 KQWQ==
X-Gm-Message-State: AOAM533JewpEq5BFCUahOTx1qGBNDXWEM+aapSyiWx+G6eGNQhJhC/US
 eIrkh1BVm8zYvxl0rFdGcAQgiMrtujTS8utSKyA=
X-Google-Smtp-Source: ABdhPJy70ndEkfLf/+WblrSk/UwDwosqtjfmRLEbzIM2w+dXQYJKs0F5avEWRJwBwLIFK8CxgFh61A==
X-Received: by 2002:a17:907:264c:: with SMTP id
 ar12mr9129730ejc.80.1601153552469; 
 Sat, 26 Sep 2020 13:52:32 -0700 (PDT)
Received: from x1-carbon.localdomain
 (dynamic-2a01-0c22-a405-1400-4d77-6706-ca6f-bab0.c22.pool.telefonica.de.
 [2a01:c22:a405:1400:4d77:6706:ca6f:bab0])
 by smtp.gmail.com with ESMTPSA id p1sm5064178edx.4.2020.09.26.13.52.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 13:52:31 -0700 (PDT)
From: gary@apache.org
To: 
Subject: [PATCH] staging: media: atomisp: clean up block comment style issues
Date: Sat, 26 Sep 2020 22:50:58 +0200
Message-Id: <20200926205103.189041-1-gary@apache.org>
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
Cc: devel@driverdev.osuosl.org, Gary Yao <gary@apache.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gary Yao <gary@apache.org>

Clean up block comment style issues to follow kernel coding style
and clear checkpatch warnings.

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Gary Yao <gary@apache.org>
---
 .../pci/isp/modes/interface/isp_types.h       | 41 +++++++++++--------
 1 file changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
index ae273c826808..d1c42c77fa50 100644
--- a/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/modes/interface/isp_types.h
@@ -1,26 +1,29 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/**
-Support for Intel Camera Imaging ISP subsystem.
-Copyright (c) 2010 - 2015, Intel Corporation.
-
-This program is free software; you can redistribute it and/or modify it
-under the terms and conditions of the GNU General Public License,
-version 2, as published by the Free Software Foundation.
-
-This program is distributed in the hope it will be useful, but WITHOUT
-ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
-more details.
-*/
+/*
+ * Support for Intel Camera Imaging ISP subsystem.
+ * Copyright (c) 2010 - 2015, Intel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ */
 
 #ifndef _ISP_TYPES_H_
 #define _ISP_TYPES_H_
 
-/* Workaround: hivecc complains about "tag "sh_css_3a_output" already declared"
-   without this extra decl. */
+/*
+ * Workaround: hivecc complains about "tag "sh_css_3a_output" already declared"
+ * without this extra decl.
+ */
 struct ia_css_3a_output;
 
-/* Input stream formats, these correspond to the MIPI formats and the way
+/*
+ * Input stream formats, these correspond to the MIPI formats and the way
  * the CSS receiver sends these to the input formatter.
  * The bit depth of each pixel element is stored in the global variable
  * isp_bits_per_pixel.
@@ -37,8 +40,10 @@ enum sh_stream_format {
 };
 
 struct s_isp_frames {
-	/* global variables that are written to by either the SP or the host,
-	   every ISP binary needs these. */
+	/*
+	 * Global variables that are written to by either the SP or the host,
+	 * every ISP binary needs these.
+	 */
 	/* output frame */
 	char *xmem_base_addr_y;
 	char *xmem_base_addr_uv;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
