Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A71291266
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 792F5204EA;
	Sat, 17 Oct 2020 14:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OB2RIpqT0gLr; Sat, 17 Oct 2020 14:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44D41204E1;
	Sat, 17 Oct 2020 14:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4CA1BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 245B985118
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yn6Jd8JjuNe8 for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54A9285102
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:29:15 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 13so6194283wmf.0
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YVQnjhnO3hPEHey+2a/NsTVt2kt0i3WZ2OmRQGb+eEU=;
 b=lPz4OrDNKkJKRGbxIKA86ZwUlRZGmluEv4tikHtZVh0Z/EQdien5qZyTMYb/73ZwEM
 la/V7M84Xe9V7Kc90euTFPV1Fs6TrEjr0y3OVmO60jU3/1yj57osqvVeIKP3UKZQTegn
 RtEMvOnw0UmHuH54peCQZymCg3LQXIIgLMbUAY0FjZ9g/Sg+BMAsOBatBmBpCFDZQp/z
 NAlSAe/mmm5ZXNoMxTRtcWU11TTt6VW0KyT5eooRv6PSKJ/0GsaUpLv9AN7v29Auhrd8
 BERIfdAzMKLweDxv4rEunjcledmnXGeC4bPAzGPNW/1P5yK0MB1nsP33iANR7j7fahzn
 VBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YVQnjhnO3hPEHey+2a/NsTVt2kt0i3WZ2OmRQGb+eEU=;
 b=Xri7PT/Wipm3Ib/VVB9HAlk4sLpPhUksvrtipV0MYJFAqpyXuwPP/VJGGSC119NHoc
 t2GVjkx0+6BALhVqlrty0JKIeaJIcJ5KerwLEWSHtu4APALzixw7EtdkY6hOxBG5/6Cq
 tjHI9UL0B0fw3UqDe67VWeN/sXsxUIxJf2fY8jVSwoUFkOSItSM1fTtyBe54sUyY6O3M
 3ZyZT70gYXxo90XmfUBagVITYnUEq13zq0zD/lgXGG+QRVAMt3lmnfL1piv5VR3D5TWH
 OQkX1u8baP6EVtqJfD72jXOaA5tm6I1VXRNAJWMRiXiepuyMiHgrKrnezU0UiRxpWU8D
 mLMA==
X-Gm-Message-State: AOAM532OfEODklzStltxWHMOZxXG1SF5QYGv6Ay3YjDmE0g42L2ipTly
 LxaRjFfFjPLHF1PKjR1GfIY=
X-Google-Smtp-Source: ABdhPJyecMC7VKYn9/3RgFi8oaYY+8gX1km0A2OJxjhdLdLiHBiocHr5Hr6rQWe0HVVYhH2XtNtVnA==
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr9123399wma.165.1602944953679; 
 Sat, 17 Oct 2020 07:29:13 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id n5sm9020860wrm.2.2020.10.17.07.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:29:13 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH 2/2] staging: media: atomisp: Remove unused function
Date: Sat, 17 Oct 2020 15:28:00 +0100
Message-Id: <20201017142810.26967-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function ia_css_mipi_frame_specify() is not called from anywhere and
the comment above its declaration states that it should be removed when
there are no more users. So remove it.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/media/atomisp/pci/ia_css_mipi.h | 17 -----------------
 drivers/staging/media/atomisp/pci/sh_css_mipi.c | 11 -----------
 2 files changed, 28 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/ia_css_mipi.h b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
index 7b6d796d6ee0..9e50e1c619be 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_mipi.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
@@ -25,23 +25,6 @@
 #include "ia_css_stream_format.h"
 #include "ia_css_input_port.h"
 
-/* Backward compatible for CSS API 2.0 only
- * TO BE REMOVED when all drivers move to CSS API 2.1.
- */
-/* @brief Specify a CSS MIPI frame buffer.
- *
- * @param[in]	size_mem_words	The frame size in memory words (32B).
- * @param[in]	contiguous	Allocate memory physically contiguously or not.
- * @return		The error code.
- *
- * \deprecated{Use ia_css_mipi_buffer_config instead.}
- *
- * Specifies a CSS MIPI frame buffer: size in memory words (32B).
- */
-int
-ia_css_mipi_frame_specify(const unsigned int	size_mem_words,
-			  const bool contiguous);
-
 /* @brief Register size of a CSS MIPI frame for check during capturing.
  *
  * @param[in]	port	CSI-2 port this check is registered.
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
index d5ae7f0b5864..3f34cc81be87 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
@@ -33,17 +33,6 @@
 static u32
 ref_count_mipi_allocation[N_CSI_PORTS]; /* Initialized in mipi_init */
 
-int
-ia_css_mipi_frame_specify(const unsigned int size_mem_words,
-			  const bool contiguous) {
-	int err = 0;
-
-	my_css.size_mem_words = size_mem_words;
-	(void)contiguous;
-
-	return err;
-}
-
 /*
  * Check if a source port or TPG/PRBS ID is valid
  */
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
