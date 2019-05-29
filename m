Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D5A2DDC6
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC8393067D;
	Wed, 29 May 2019 13:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A90lM5e-rcoN; Wed, 29 May 2019 13:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44DC42E379;
	Wed, 29 May 2019 13:12:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0021E1BF2F5
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE5F122FB9
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oqZckX9sIdw6 for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B39A22785
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:12:09 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id v9so1339828pgr.13
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aWoIYcgxDupSGtN0AnAKiiYwQa97e1g6WE42QwvCM0=;
 b=LJ55xB9eU8BGL+SzpCNDOjSwgkyqnlLfr0sD8Ar1E1DlrwJbHnBEjmaxJcloSeBguX
 rqTwVYovi64cV45HbMYdlSE1z3ilqCrWQ5ZJ8Y8pqdtPHqL9hDKsQwzucw7d3RDaeZ4y
 4cAiQ61+prb/BYYUYrMaHHsJzZ+V8vxq5SRMY1wr7RzmNRnc+SgbS5q80xAsTVnn1XZP
 mT1QAYgyDammYmmpSDqHj2BxUeToJQm2QuCRjCNXrqp7qDSh0qDcCpjVUwb7mGBFZYFx
 iLlmB9br7wU4cgIdH+DzupfAzZa12PdogkHp/4+VNyz470WbaHWafEXKGM7Co67x/dkp
 ySBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aWoIYcgxDupSGtN0AnAKiiYwQa97e1g6WE42QwvCM0=;
 b=HrErPZBBtf8wufqxGuyXFG3G5RCQwFyEmGhIJRh3tym/7AwD4MpzFFJ5+MuTMQ9MZf
 H08ytKl++aZtXDs0nZb7yGRbpeSwlwKGAJNcgefqgz7+jwXP0p2Dj3qCjgql5cYFbqhu
 8TF4iCEmtxTNriJWUIzTmTJLY78B7FyDV/KN9y9F7auKNI45Et9eIPjPR/YBLRD1H8tj
 PPqaG31c4EOf46Bp4T78zKXeeGZePTKIXWO8ggav7wvBZRPjnnC3M9g+EDu/btaAwfM7
 ppCTlUgF67vOSUUFSNVnMJ1OEIEXy+eRDr27VQNXDVadaYdNqFWKit6IxouWa8dwzT8t
 Jr+A==
X-Gm-Message-State: APjAAAXKiUYJHN5AoSgq+k3ynfYoEexE0hF/3X94zJepXVsgqDYALCq6
 BYtvFa4ZnX0+dFHS3FRhtGE=
X-Google-Smtp-Source: APXvYqzJHRrczMIc52hvYh1l+W+LUzYEuTuROsJXEpl1M7zRkak4KWjbVbYAZWR8O+FJv6rGIDQ/5g==
X-Received: by 2002:a62:4e0c:: with SMTP id c12mr23624554pfb.17.1559135529196; 
 Wed, 29 May 2019 06:12:09 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id f10sm15915670pgo.14.2019.05.29.06.12.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:12:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, bnvandana@gmail.com, madhumithabiw@gmail.com,
 matt.sickler@daktronics.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: kpc2000: Change to use DIV_ROUND_UP
Date: Wed, 29 May 2019 18:41:53 +0530
Message-Id: <20190529131153.6260-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use macro DIV_ROUND_UP instead of an equivalent sequence of operations.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 254fee593399..7b17362461b8 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -28,10 +28,7 @@ unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
 static inline
 unsigned int  count_parts_for_sge(struct scatterlist *sg)
 {
-	unsigned int sg_length = sg_dma_len(sg);
-
-	sg_length += (0x80000-1);
-	return (sg_length / 0x80000);
+	return DIV_ROUND_UP(sg_dma_len(sg), 0x80000);
 }
 
 /**********  Transfer Helpers  **********/
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
