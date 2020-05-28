Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0DD1E5762
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68B4186F96;
	Thu, 28 May 2020 06:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEZnClB5WiOJ; Thu, 28 May 2020 06:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F373786D7B;
	Thu, 28 May 2020 06:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBDF11BF27F
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB1AA20529
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uoYbgrWKnlQm for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E2442046A
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 175C721548;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=wIU4L8fcCAnFawFS/JHH3TeHXuSwoOH6ncEx3KzNzKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T/qtPvxl8+9ryvCQsEIR04LiXUn4RZQPIGlxf6RJuZnQ4puKNFYrConlYOzQ7ulLq
 MPmR1fUKoT7aoZdV18wj3UmVJMGNQNvYmmyKqKgDnnddy76gv2/165GVNELqvmNU7s
 zB6tb3Vsn7o1LyJ39YaS5nz1oDtkokkeHBUQDz3k=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo8-000VHk-2w; Thu, 28 May 2020 08:14:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 10/20] media: atomisp: add debug message to help debugging hmm
 code
Date: Thu, 28 May 2020 08:14:10 +0200
Message-Id: <a4b9ab6712e830e101ffa0f16c8bfe933db77bac.1590646166.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646166.git.mchehab+huawei@kernel.org>
References: <cover.1590646166.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The hmm code is partially based on a fork from 3.10 code,
and has bugs.

Add debug there to help tracking what happens there.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
index 6fce8c95be1d..b6dcd246d7af 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
@@ -1015,6 +1015,11 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 		bo->mem_type = HMM_BO_MEM_TYPE_USER;
 	}
 
+	dev_dbg(atomisp_dev, "%s: %d %s pages were allocated as 0x%08x\n",
+		__func__,
+		bo->pgnr,
+		bo->mem_type == HMM_BO_MEM_TYPE_USER ? "user" : "pfn", page_nr);
+
 	/* can be written by caller, not forced */
 	if (page_nr != bo->pgnr) {
 		dev_err(atomisp_dev,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
