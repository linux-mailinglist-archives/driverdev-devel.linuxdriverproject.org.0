Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D7045DC3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 15:20:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03C7B82813;
	Thu, 25 Nov 2021 14:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WguQxJgYZ_M9; Thu, 25 Nov 2021 14:20:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30CA2827D2;
	Thu, 25 Nov 2021 14:20:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F46F1BF2BC
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 14:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BBA760764
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 14:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhZgh0GzDpXP for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 14:20:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 805E06060B
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 14:20:09 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id c4so11978787wrd.9
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 06:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yXyzv4xc6JEENsX2VRvqFajJbPhShqE522YAFNSvC7o=;
 b=m5icG+/ztw6q17Flo7iL+KvoQsGnKhcsCd5WhloLdRfpcr+LkgqBb2Alg6pd/91ljE
 cs7TQKFMDG7czlBV2B+dgXWSj75OKCiR3ySBdc8OsThPQpsQDCif63J5W0mn8w1JpM4Q
 AtVchfPWflm2wpr1YwVrvKwaJ2OQQW9+7Uw2DUnE9rL1V7axwuJHmXlStpGwMdB3p7z/
 ohr7+yuTiV+4dVl5oV6o6IhjXv2eK3R2ZO2z/8icrHwmXNt+SM7cLfulZIguTEYdVg0S
 oIfX9XsoCXxgCgSsXvZR3pk726upjkcAEyOiS/Mm/Pw+O4edXallitm4AsEQQC/CsjCD
 OgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yXyzv4xc6JEENsX2VRvqFajJbPhShqE522YAFNSvC7o=;
 b=qd9ZPxLHfq5Kt0iReuF20TdEaUH9+gHxETYXiSLmqz5FHCXbZCSGKyDVCKCLDHyq5g
 BFu6M9zqLzGP+sGRUxb351gbKoTMkt0lzsIbgbBkfkoJ/0M5dLVE2gXRyCtxfbCKU8Rr
 NPMcCFnTI9bGWV7CyJyfC5Ux3TSAOWZKsxyswYr5En27LesGzqWwIUZMML6Z9w4efh5p
 30+745P4QWunQcAVebu82W0SVCyatFAuQCcutBKZVX5DNNg2bvZyAvN26dDxT9ld67hy
 HulmI1Hq9WUDvoaSu/b8+Gf2agl641cw2EHIpUg+yTV8EhXt9H7Sb/JLbqC15eyPXhPh
 73yg==
X-Gm-Message-State: AOAM533p987s1HERueVtqOYHF1NnL5z6CTx+ccqL8VHlrvG8smuiTBYh
 NEMvNlqY0MATUYfrT0xRMKLlPg==
X-Google-Smtp-Source: ABdhPJyIUGRu2b/x8WdFkz1IO8k3zg926zgxQQenrKYRNupwjfFjhV3sxsOWiqeIKdxHtE6KG3Q8SQ==
X-Received: by 2002:adf:f352:: with SMTP id e18mr7108423wrp.39.1637850007575; 
 Thu, 25 Nov 2021 06:20:07 -0800 (PST)
Received: from localhost.localdomain ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id o12sm4447026wrc.85.2021.11.25.06.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:20:07 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Date: Thu, 25 Nov 2021 14:20:04 +0000
Message-Id: <20211125142004.686650-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Supply additional checks in order to prevent unexpected results.

Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
Should be back-ported from v4.9 and earlier.

 drivers/staging/android/ion/ion.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 806e9b30b9dc8..402b74f5d7e69 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -29,6 +29,7 @@
 #include <linux/export.h>
 #include <linux/mm.h>
 #include <linux/mm_types.h>
+#include <linux/overflow.h>
 #include <linux/rbtree.h>
 #include <linux/slab.h>
 #include <linux/seq_file.h>
@@ -509,6 +510,10 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
 	void *vaddr;
 
 	if (handle->kmap_cnt) {
+		if (check_add_overflow(handle->kmap_cnt,
+				       (unsigned int) 1, &handle->kmap_cnt))
+			return ERR_PTR(-EOVERFLOW);
+
 		handle->kmap_cnt++;
 		return buffer->vaddr;
 	}
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
