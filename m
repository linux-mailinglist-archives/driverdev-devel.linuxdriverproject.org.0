Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE201E8E6A
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F0B389441;
	Sat, 30 May 2020 06:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Q8Ss3HWBhrk; Sat, 30 May 2020 06:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8714893BE;
	Sat, 30 May 2020 06:56:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78EA91BF873
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72F91204A4
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyY9lJnm8yCq for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 95A2B22219
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FA2021534;
 Sat, 30 May 2020 06:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821763;
 bh=5bcWPbVOrG7j+OP6Xyz7uIKyWpwnQnhVLv2vj0C97fs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qCqQPQX6tuEKE9sWbP4thIvVSFBRDrjLG7KuASo0RrQBSXTsv3eKrld68NtPbRWlx
 9Ra9PAJq8uE9lBwsfrBN2igc6Q1P0Fj4f9WLTJ71SBVhOfDbrhvou1diC4tbMn2iL9
 DjUjeql1aJkWrCs8nDtjRKsStxAPvEZFnncjnfGA=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPV-001hpE-4k; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 15/41] media: atomisp: add debug for hmm alloc
Date: Sat, 30 May 2020 08:55:32 +0200
Message-Id: <6b9fbe34195df5a2ef410f0e877b47ba90bb2aa3.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The hmm code is still complex and has bugs. Add a debug print
when memory gets allocated, in order to help identifying what's
happening out there.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/hmm/hmm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 5e983442ca80..c8a6e2d6e498 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -253,7 +253,7 @@ ia_css_ptr hmm_alloc(size_t bytes, enum hmm_bo_type type,
 		goto alloc_page_err;
 	}
 
-	/* Combind the virtual address and pages togather */
+	/* Combine the virtual address and pages together */
 	ret = hmm_bo_bind(bo);
 	if (ret) {
 		dev_err(atomisp_dev, "hmm_bo_bind failed.\n");
@@ -265,6 +265,10 @@ ia_css_ptr hmm_alloc(size_t bytes, enum hmm_bo_type type,
 	if (attrs & ATOMISP_MAP_FLAG_CLEARED)
 		hmm_set(bo->start, 0, bytes);
 
+	    dev_dbg(atomisp_dev,
+	    "%s: pages: 0x%08x (%ld bytes), type: %d from highmem %d, user ptr %p, cached %d\n",
+	    __func__, bo->start, bytes, type, from_highmem, userptr, cached);
+
 	return bo->start;
 
 bind_err:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
