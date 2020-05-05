Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8F91C60C0
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 21:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 483748883D;
	Tue,  5 May 2020 19:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyfUNAk0W1Vv; Tue,  5 May 2020 19:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA86A886E1;
	Tue,  5 May 2020 19:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDB8A1BF364
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 19:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E87D4875AD
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 19:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lrc+dbGXZKZP for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 19:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 235AA811DF
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 19:07:08 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id m7so1036491plt.5
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 12:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fWyOOrvUK77uA/msSZdDDnmybty7hQPcowq4Z58m++0=;
 b=BPHouBLZVWeHaubUI19wpiMPuNtIWM6/YUERDUNe9MNgSmVVq0+cuxhz5bbxK3kGR/
 UxcdfDx5R8f3MQ80bBtDEUMhM0+5IrSRG1k40tEN/KtDJEk+cwmfyVkJy8XAOFHr8iZV
 F4yJrLmDlhHmTlklDWECl6sk8bPgMQ2UzPK0tbwjp46p+Zg9ks/sU6Oi6OCWWSH+iOB3
 W0bCCNjZW9NvvDQZt7CCmoZ3WNfRiAeq9LraUzBiD/CEpqKX37b7yIu+KkT6Sg0vWC5i
 0TcYCFn7ETDBN3JI4s/uaXI2hQlYqm7S+dmA9jFiQBQtqioeyCarQZr4EkFEIw6owo/M
 F3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fWyOOrvUK77uA/msSZdDDnmybty7hQPcowq4Z58m++0=;
 b=O8wsTddK6KBEbLsfo9s3UsIEe+q2o0JBjXBXhYjd3/JDEb9Uew1kpu84NbChtWcJ3v
 QlTezu1vk4ikl9E2S7DhZnNyMFOfb7Yc0tksbbtEGJr4TfpiBmhv852i0lQ5HE+RmvJI
 XH/9D+BzOH2dFmXJmo6rYGyU5Cv2/SystkUZLu9Tt1W4053uO1AmvEeFIRoLx46j4i5w
 wvhDF7mBUPDgJW/PbN9nycDX2WsGUaSCI+tTXd7btAUAeCbwobMDz5zx4wATp82m2lVf
 fdMtppihm0shv9WiYQGlmIhQPFgccFG3MVmBZgiOZuDSf+wjDCErvxLEJg4+4OCyg0ak
 w86Q==
X-Gm-Message-State: AGi0PuZCiY0b9pUGCJJZSabxowbezslX9o2BK330Bm84MtfT/9qHmiNI
 QNz7P0uYk4wogi1fBfA6lqM=
X-Google-Smtp-Source: APiQypIii3zV6Elp7IO251v6M6vB2QPxZ+fMr3HRaeN0DRbvD8NEebNCns+Io+5802VclUQUQzICSw==
X-Received: by 2002:a17:90a:9e9:: with SMTP id 96mr4913003pjo.41.1588705627557; 
 Tue, 05 May 2020 12:07:07 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.167.156.195])
 by smtp.gmail.com with ESMTPSA id 138sm2664906pfz.31.2020.05.05.12.07.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 12:07:06 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: tony.luck@intel.com, fenghua.yu@intel.com, rspringer@google.com,
 toddpoynor@google.com, benchan@chromium.org, gregkh@linuxfoundation.org,
 jens.wiklander@linaro.org, akpm@linux-foundation.org,
 santosh.shilimkar@oracle.com, davem@davemloft.net, kuba@kernel.org,
 jack@suse.cz, jhubbard@nvidia.com, ira.weiny@intel.com, jglisse@redhat.com
Subject: [RFC] mm/gup.c: Updated return value of {get|pin}_user_pages_fast()
Date: Wed,  6 May 2020 00:44:19 +0530
Message-Id: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tee-dev@lists.linaro.org, linux-mm@kvack.org,
 inux-ia64@vger.kernel.org, Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
and no of pinned pages. The only case where these two functions will
return 0, is for nr_pages <= 0, which doesn't find a valid use case.
But if at all any, then a -ERRNO will be returned instead of 0, which
means {get|pin}_user_pages_fast() will have 2 return values -errno &
no of pinned pages.

Update all the callers which deals with return value 0 accordingly.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
---
 arch/ia64/kernel/err_inject.c              | 2 +-
 drivers/platform/goldfish/goldfish_pipe.c  | 2 +-
 drivers/staging/gasket/gasket_page_table.c | 4 ++--
 drivers/tee/tee_shm.c                      | 2 +-
 mm/gup.c                                   | 6 +++---
 net/rds/rdma.c                             | 2 +-
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/ia64/kernel/err_inject.c b/arch/ia64/kernel/err_inject.c
index 8b5b8e6b..fd72218 100644
--- a/arch/ia64/kernel/err_inject.c
+++ b/arch/ia64/kernel/err_inject.c
@@ -143,7 +143,7 @@ static DEVICE_ATTR(name, 0644, show_##name, store_##name)
 	int ret;
 
 	ret = get_user_pages_fast(virt_addr, 1, FOLL_WRITE, NULL);
-	if (ret<=0) {
+	if (ret < 0) {
 #ifdef ERR_INJ_DEBUG
 		printk("Virtual address %lx is not existing.\n",virt_addr);
 #endif
diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
index 1ab207e..831449d 100644
--- a/drivers/platform/goldfish/goldfish_pipe.c
+++ b/drivers/platform/goldfish/goldfish_pipe.c
@@ -277,7 +277,7 @@ static int goldfish_pin_pages(unsigned long first_page,
 	ret = pin_user_pages_fast(first_page, requested_pages,
 				  !is_write ? FOLL_WRITE : 0,
 				  pages);
-	if (ret <= 0)
+	if (ret < 0)
 		return -EFAULT;
 	if (ret < requested_pages)
 		*iter_last_page_size = PAGE_SIZE;
diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index f6d7157..1d08e1d 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -489,11 +489,11 @@ static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
 			ret = get_user_pages_fast(page_addr - offset, 1,
 						  FOLL_WRITE, &page);
 
-			if (ret <= 0) {
+			if (ret < 0) {
 				dev_err(pg_tbl->device,
 					"get user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
 					page_addr, offset, ret);
-				return ret ? ret : -ENOMEM;
+				return ret;
 			}
 			++pg_tbl->num_active_pages;
 
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index bd679b7..2706a1f 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -230,7 +230,7 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 	if (rc > 0)
 		shm->num_pages = rc;
 	if (rc != num_pages) {
-		if (rc >= 0)
+		if (rc > 0)
 			rc = -ENOMEM;
 		ret = ERR_PTR(rc);
 		goto err;
diff --git a/mm/gup.c b/mm/gup.c
index 50681f0..8d293ed 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -2760,7 +2760,7 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
 	end = start + len;
 
 	if (end <= start)
-		return 0;
+		return -EINVAL;
 	if (unlikely(!access_ok((void __user *)start, len)))
 		return -EFAULT;
 
@@ -2805,8 +2805,8 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
  * calling get_user_pages().
  *
  * Returns number of pages pinned. This may be fewer than the number requested.
- * If nr_pages is 0 or negative, returns 0. If no pages were pinned, returns
- * -errno.
+ * If nr_pages is 0 or negative, returns -errno. If no pages were pinned,
+ * returns -errno.
  */
 int get_user_pages_fast(unsigned long start, int nr_pages,
 			unsigned int gup_flags, struct page **pages)
diff --git a/net/rds/rdma.c b/net/rds/rdma.c
index a7ae118..44b96e6 100644
--- a/net/rds/rdma.c
+++ b/net/rds/rdma.c
@@ -161,7 +161,7 @@ static int rds_pin_pages(unsigned long user_addr, unsigned int nr_pages,
 		gup_flags |= FOLL_WRITE;
 
 	ret = pin_user_pages_fast(user_addr, nr_pages, gup_flags, pages);
-	if (ret >= 0 && ret < nr_pages) {
+	if (ret > 0 && ret < nr_pages) {
 		unpin_user_pages(pages, ret);
 		ret = -EFAULT;
 	}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
