Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C80F18E192
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 14:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 447A587EA2;
	Sat, 21 Mar 2020 13:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKb3R+8oMc1k; Sat, 21 Mar 2020 13:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6AFB87B0A;
	Sat, 21 Mar 2020 13:36:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FC7C1BF28C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09F53873F3
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LL-0ErYE0p9D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 01D68873FE
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:30 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b2so10818757wrj.10
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HXrQOFG9Qdq+ceB+eHjkh5OkFGt1HAzvh4DIUTXXoH0=;
 b=q8bGKIgde85hhV52DfD2v2pQNAVQSqsyj/qC1hatgtGH3uBw8Ya4MLMnDpE9ihZshR
 yC5WFP4PIki9izAsWHLioH4IknFJvoOcu51bRdRihHNvZru0kTIW2b/AnQkEoJqVT+Y6
 iBVZ5/EaJCM2TbQE5gIkNDMcqMo4beJfwEX9cWcpUAfOTLR126F1xYjzMsfoQ2SEI9x6
 OEAN2I2zfI7QfrSbUBnZORh+E5mBF1qu3cX1V858szD6nfOyS2AD5jhJfhZOnqjB/kHk
 wPgcOQIM+jEZ4jHU3G4QG+w5Gd4mvcmMZevIGE/oLF9ju9zzaeSB8NOvKJhUNm/L5s5/
 rDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HXrQOFG9Qdq+ceB+eHjkh5OkFGt1HAzvh4DIUTXXoH0=;
 b=Nq6p9wOXcCe2YF0aWDDy2QoHYSZ8KKR5kQ7dHJ9IsGwI4c/eJuns/Fb3OG5Pa0tti5
 rbu8NIbOUPx9Wg5NWnGgxLP2Gr+w5cDuT8/OguWFA7KbCNPd1aWSkv1opd6njLPBvgK+
 2anCvQhezavAKB/1VxaXBGw5/Hx9ZemfWkmbVv8svVAaFwncWvUQSO7f14xhyjcOlGpr
 G+1J04aIK/aT6+ux1iENAr4a7jiGFI1T03HEc4wKDivqr/IRR5BxLGH/TvUQP8Jo4cN4
 5aKaaONmlO789v+TjBjCk5DthtuFEhvS27yJjmEra4m3NYa86KVwu9cFyGR23FDBpRWH
 FFjw==
X-Gm-Message-State: ANhLgQ3fpOAMW4h04hfKsIH4YxPws9NI7B6ZLF032XhRhEp+LG1rGIm0
 9KN28PdUhb6jXfkcMxmczxvCOlYf
X-Google-Smtp-Source: ADFU+vtwFkb1hO2oF9VMGxoRa2HFDNGPRp/WmbZwawfEGaN4SmGLqCqW7zFy5JAO7RzC/4baJx7pLQ==
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr17277692wrw.165.1584797788613; 
 Sat, 21 Mar 2020 06:36:28 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id 195sm12676043wmb.8.2020.03.21.06.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 06:36:28 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: mt7621-pci: add myself as a contributor of the
 driver
Date: Sat, 21 Mar 2020 14:36:22 +0100
Message-Id: <20200321133624.31388-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
References: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

During a long time I have been cleaning and fixing this driver
in order to use current kernel's apis and try to get it out of
the staging area. At the end the driver is mt7621 specific and
has been completely re-written. Hence, add myself to the header
as a contributor of this driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index b8065b777ff6..5e80479ce653 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -13,6 +13,9 @@
  *
  * May 2011 Bruce Chang
  * support RT6855/MT7620 PCIe
+ *
+ * 2018-2020 Sergio Paracuellos <sergio.paracuellos@gmail.com>
+ * Re-write the driver for SoC mt7621
  */
 
 #include <linux/bitops.h>
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
