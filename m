Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CE8A16DB
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 12:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7FC87463;
	Thu, 29 Aug 2019 10:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXRNKM9EO1Mn; Thu, 29 Aug 2019 10:51:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC20F81BBA;
	Thu, 29 Aug 2019 10:51:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4A11BF2CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0BFEE820A1
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1v9jmx5MEw6 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 10:51:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7E0388AD3
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 10:50:22 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98F2D2189D;
 Thu, 29 Aug 2019 10:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567075822;
 bh=l4bD2X66wQYH9bFuxf5F1FvSh18IMJFDWESpsXZ5qBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q3PEA99czadxvoNpw2ANW5bfMHOPi8iDoIgTxOJvq//Tm1DTWzCzSTVPCp5f09Gbd
 +Pmg8z2jP2X3XFko3z+H2GhD1UjSu0lnF6kBDvEzFsDO2+eZ4DfmOp+RIWzzqpLjBR
 sj/ziuyWctXt9U4oxZzE6NUd8cOxS6cgL0wSRZl8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 11/29] binder: take read mode of mmap_sem in
 binder_alloc_free_page()
Date: Thu, 29 Aug 2019 06:49:51 -0400
Message-Id: <20190829105009.2265-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829105009.2265-1-sashal@kernel.org>
References: <20190829105009.2265-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, Tyler Hicks <tyhicks@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tyler Hicks <tyhicks@canonical.com>

[ Upstream commit 60d4885710836595192c42d3e04b27551d30ec91 ]

Restore the behavior of locking mmap_sem for reading in
binder_alloc_free_page(), as was first done in commit 3013bf62b67a
("binder: reduce mmap_sem write-side lock"). That change was
inadvertently reverted by commit 5cec2d2e5839 ("binder: fix race between
munmap() and direct reclaim").

In addition, change the name of the label for the error path to
accurately reflect that we're taking the lock for reading.

Backporting note: This fix is only needed when *both* of the commits
mentioned above are applied. That's an unlikely situation since they
both landed during the development of v5.1 but only one of them is
targeted for stable.

Fixes: 5cec2d2e5839 ("binder: fix race between munmap() and direct reclaim")
Signed-off-by: Tyler Hicks <tyhicks@canonical.com>
Acked-by: Todd Kjos <tkjos@android.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/android/binder_alloc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index a654ccfd1a222..21dc20c52cd4d 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -962,8 +962,8 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
 	mm = alloc->vma_vm_mm;
 	if (!mmget_not_zero(mm))
 		goto err_mmget;
-	if (!down_write_trylock(&mm->mmap_sem))
-		goto err_down_write_mmap_sem_failed;
+	if (!down_read_trylock(&mm->mmap_sem))
+		goto err_down_read_mmap_sem_failed;
 	vma = binder_alloc_get_vma(alloc);
 
 	list_lru_isolate(lru, item);
@@ -978,7 +978,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
 
 		trace_binder_unmap_user_end(alloc, index);
 	}
-	up_write(&mm->mmap_sem);
+	up_read(&mm->mmap_sem);
 	mmput(mm);
 
 	trace_binder_unmap_kernel_start(alloc, index);
@@ -993,7 +993,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
 	mutex_unlock(&alloc->mutex);
 	return LRU_REMOVED_RETRY;
 
-err_down_write_mmap_sem_failed:
+err_down_read_mmap_sem_failed:
 	mmput_async(mm);
 err_mmget:
 err_page_already_freed:
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
