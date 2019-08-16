Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1390A5E
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 23:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D983D885C4;
	Fri, 16 Aug 2019 21:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSiPMN+tpok4; Fri, 16 Aug 2019 21:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DE3A87C66;
	Fri, 16 Aug 2019 21:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 535131BF35B
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 21:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 505C986B83
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 21:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKjWGLlv7miq for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 21:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B68586B7A
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 21:37:38 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g4so2961257plo.3
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 14:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fTpUWS30pfgfF0kfyohSd9GMDa/HWOaCYSg035cqnes=;
 b=patTmd4qCLHzas15wSuPirWurKKMLH1fF/3dDF3JcMpXjFIEY8vs1fI4VWGYHvrzDe
 fYXvZ1fL/k7PWWk9U3DjKWbBWgrJVOG7Dh1aQO/sInYCbWxKDlETpVIXoTn8QYa4z1BY
 dDSW40JfkHoKssl0OeL8PkpDS6dPYcreT5KEOTl6Q8hTc237G+sBERvJg1Y00/k1N8By
 JRvSnWnCXYQtqtoNOWKWTK59fW1VdxhznQANJ3lRRCS9191CeFQQ1N8WgNkJyok3IAAX
 Zc653274LOVBALfUvXqX7i1UoSlXfMvaLm/yoJVh+xrZ8gCe8GTCAJuFHyQjsrXL+R4L
 vO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fTpUWS30pfgfF0kfyohSd9GMDa/HWOaCYSg035cqnes=;
 b=dwpTAo+Tr6jfZD+MBA57r899/7WQ9DAMIeoXe0EbpksXW1NNMdlkNfTc9Qb+8C01QN
 Jytbp+dIR7NlpOHwNy/mTIqMOoAETqTyoAS8daL5xHD/zqu+egojxFChS+meYAr49Nh9
 EmL5+ZexFu2HVs6PIkZSdLXkDJ7xEUhuM76su+5Q3BpOfz6AoYhf51Xtyyejy2a2Ke+G
 //clbqj0kHk5E2nANpQTyQ5j0WE98NByU0ucOAzYxFQ5vPy7BWGE90bPkx0zaaviSIk8
 RtXuNq4IbE2Pa8GPCTrhiWbsjgYtE/vv+3oB4y7/E0UWcXzJlBmmWA3iyTwtWltrzGGh
 2r7Q==
X-Gm-Message-State: APjAAAUYf6pV/gzJ2Z+/L07abSISTCAgAUm8j5Skwrh2JQ0pMNl68z5E
 rZqilo5LpHeqaE2sOeJq348=
X-Google-Smtp-Source: APXvYqyMF1Akn6/4rKezH7Cqam/+MS7qOgJmgjePWAM8pmRHtHzpV2thgBq2xomQgiJLw+5e0v1Y/w==
X-Received: by 2002:a17:902:e584:: with SMTP id
 cl4mr10938735plb.160.1565991458223; 
 Fri, 16 Aug 2019 14:37:38 -0700 (PDT)
Received: from localhost.localdomain ([157.41.169.31])
 by smtp.gmail.com with ESMTPSA id z13sm7016861pfa.94.2019.08.16.14.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 14:37:37 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: rspringer@google.com
Subject: [PATCH] staging: gasket: Remove unnecessary line-breaks in function
 signatures
Date: Sat, 17 Aug 2019 03:07:02 +0530
Message-Id: <20190816213702.32116-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 toddpoynor@google.com, Sumera Priyadarsini <sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the function signatures for gasket_read_page_table_size,
gasket_read_simple_page_table_size, gasket_partition_page_table,
gasket_config_coherent_allocator to avoid  the checkpatch.pl warning:

	CHECK: Lines should not end with a '('

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 7ecfba4f2b06..240f9bb10b71 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -39,8 +39,7 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 }
 
 /* Read the size of the page table. */
-static int gasket_read_page_table_size(
-	struct gasket_dev *gasket_dev,
+static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
@@ -66,8 +65,7 @@ static int gasket_read_page_table_size(
 }
 
 /* Read the size of the simple page table. */
-static int gasket_read_simple_page_table_size(
-	struct gasket_dev *gasket_dev,
+static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
 	struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
@@ -93,8 +91,7 @@ static int gasket_read_simple_page_table_size(
 }
 
 /* Set the boundary between the simple and extended page tables. */
-static int gasket_partition_page_table(
-	struct gasket_dev *gasket_dev,
+static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 	struct gasket_page_table_ioctl __user *argp)
 {
 	int ret;
@@ -185,8 +182,7 @@ static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
  * Reserve structures for coherent allocation, and allocate or free the
  * corresponding memory.
  */
-static int gasket_config_coherent_allocator(
-	struct gasket_dev *gasket_dev,
+static int gasket_config_coherent_allocator(struct gasket_dev *gasket_dev,
 	struct gasket_coherent_alloc_config_ioctl __user *argp)
 {
 	int ret;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
