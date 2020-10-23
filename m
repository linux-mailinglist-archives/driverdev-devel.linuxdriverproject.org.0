Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA735297400
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 18:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5906D8701F;
	Fri, 23 Oct 2020 16:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XkS+xxWsrEy9; Fri, 23 Oct 2020 16:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52EA987108;
	Fri, 23 Oct 2020 16:33:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 370871BF29C
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 16:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E2A2872E2
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 16:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jg-GAthE4BA7 for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 16:33:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2A5C872CC
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 16:33:49 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BA49246B0;
 Fri, 23 Oct 2020 16:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603470828;
 bh=jeh4YC+MxwGcd5mb9mDgW+smzNJeeNqLiKDD0oaDL0E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dp5HB/65JaGeWDQP2R/ITfNqB1n/bHLrckWbFxT5Bp9FOnlfGcjRGyEKH0DGZtaQP
 0QJIH6hjUZqRVe4jOzmY6HVrR+JwJ7wapnt/ZbDverJRmvQrYY23iK8+xDjbgIK0TD
 Mgfqtra+eUaq0iZWCMK5wW6w2jiKd0IFMRzUEUtU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kW00g-002Awp-5N; Fri, 23 Oct 2020 18:33:46 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v3 33/56] vme: fix two kernel-doc markups
Date: Fri, 23 Oct 2020 18:33:20 +0200
Message-Id: <51bfb6724975302f66d64e4ad71de451a7cbbf99.1603469755.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1603469755.git.mchehab+huawei@kernel.org>
References: <cover.1603469755.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manohar Vanga <manohar.vanga@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martyn Welch <martyn@welchs.me.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some identifiers have different names between their prototypes
and the kernel-doc markup.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/vme/vme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/vme/vme.c b/drivers/vme/vme.c
index b398293980b6..bb4fed52f74d 100644
--- a/drivers/vme/vme.c
+++ b/drivers/vme/vme.c
@@ -73,7 +73,7 @@ static struct vme_bridge *find_bridge(struct vme_resource *resource)
 }
 
 /**
- * vme_free_consistent - Allocate contiguous memory.
+ * vme_alloc_consistent - Allocate contiguous memory.
  * @resource: Pointer to VME resource.
  * @size: Size of allocation required.
  * @dma: Pointer to variable to store physical address of allocation.
@@ -647,7 +647,7 @@ int vme_master_get(struct vme_resource *resource, int *enabled,
 EXPORT_SYMBOL(vme_master_get);
 
 /**
- * vme_master_write - Read data from VME space into a buffer.
+ * vme_master_read - Read data from VME space into a buffer.
  * @resource: Pointer to VME master resource.
  * @buf: Pointer to buffer where data should be transferred.
  * @count: Number of bytes to transfer.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
