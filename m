Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56D81211
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 08:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6154E85F84;
	Mon,  5 Aug 2019 06:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZF6Tfb9Hink2; Mon,  5 Aug 2019 06:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42D1E85E51;
	Mon,  5 Aug 2019 06:03:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E1321BF48C
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 06:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02457864D8
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 06:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPVDhBXpJwNf for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 06:03:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2872864C5
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 06:03:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02FDD2182B;
 Mon,  5 Aug 2019 06:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564985013;
 bh=Gek0nSOBXV/zkrQ+QvKwPzbCExQoQbuDXLX3kboI1Bo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=L/gMHBnbPo3u/VRPJtDqRBMvnGq75kgxg7oPVTsPMBjboQSxqUaqTqtjMyCeY713m
 6nTB4vxDemiXrk5qYz1azFO9xzT5XVY9ibCCxeAdeEQKzp3p/okzjjJWdZJSuMvsvW
 cKlGpJ++upQjp3z3AggtCWoRqyexith3+pjQfLeI=
Subject: Patch "infiniband: fix race condition between infiniband mlx4,
 mlx5  driver and core dumping" has been added to the 4.9-stable tree
To: aarcange@redhat.com, akaher@vmware.com, akpm@linux-foundation.org,
 amakhalov@vmware.com, arve@android.com, bvikas@vmware.com,
 devel@driverdev.osuosl.org, dledford@redhat.com, gregkh@linuxfoundation.org,
 hal.rosenstock@gmail.com, jannh@google.com, jgg@mellanox.com,
 jglisse@redhat.com, leonro@mellanox.com, linux-mm@kvack.org,
 matanb@mellanox.com, mhocko@suse.com, mike.kravetz@oracle.com, oleg@redhat.com,
 peterx@redhat.com, riandrews@android.com, rppt@linux.ibm.com,
 sean.hefty@intel.com, srinidhir@vmware.com, srivatsa@csail.mit.edu,
 srivatsab@vmware.com, torvalds@linux-foundation.org, viro@zeniv.linux.org.uk,
 vsirnapalli@vmware.com, yishaih@mellanox.com
From: <gregkh@linuxfoundation.org>
Date: Mon, 05 Aug 2019 08:03:20 +0200
In-Reply-To: <1564891168-30016-2-git-send-email-akaher@vmware.com>
Message-ID: <156498500091241@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


This is a note to let you know that I've just added the patch titled

    infiniband: fix race condition between infiniband mlx4, mlx5  driver and core dumping

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     infiniband-fix-race-condition-between-infiniband-mlx4-mlx5-driver-and-core-dumping.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From akaher@vmware.com  Mon Aug  5 08:01:12 2019
From: Ajay Kaher <akaher@vmware.com>
Date: Sun, 4 Aug 2019 09:29:26 +0530
Subject: infiniband: fix race condition between infiniband mlx4, mlx5  driver and core dumping
To: <aarcange@redhat.com>, <jannh@google.com>, <oleg@redhat.com>, <peterx@redhat.com>, <rppt@linux.ibm.com>, <jgg@mellanox.com>, <mhocko@suse.com>
Cc: srinidhir@vmware.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org, amakhalov@vmware.com, sean.hefty@intel.com, srivatsa@csail.mit.edu, srivatsab@vmware.com, devel@driverdev.osuosl.org, linux-rdma@vger.kernel.org, bvikas@vmware.com, dledford@redhat.com, akaher@vmware.com, riandrews@android.com, hal.rosenstock@gmail.com, vsirnapalli@vmware.com, leonro@mellanox.com, jglisse@redhat.com, viro@zeniv.linux.org.uk, gregkh@linuxfoundation.org, yishaih@mellanox.com, matanb@mellanox.com, stable@vger.kernel.org, arve@android.com, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, torvalds@linux-foundation.org, mike.kravetz@oracle.com
Message-ID: <1564891168-30016-2-git-send-email-akaher@vmware.com>

From: Ajay Kaher <akaher@vmware.com>

This patch is the extension of following upstream commit to fix
the race condition between get_task_mm() and core dumping
for IB->mlx4 and IB->mlx5 drivers:

commit 04f5866e41fb ("coredump: fix race condition between
mmget_not_zero()/get_task_mm() and core dumping")'

Thanks to Jason for pointing this.

Signed-off-by: Ajay Kaher <akaher@vmware.com>
Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/infiniband/hw/mlx4/main.c |    4 +++-
 drivers/infiniband/hw/mlx5/main.c |    3 +++
 2 files changed, 6 insertions(+), 1 deletion(-)

--- a/drivers/infiniband/hw/mlx4/main.c
+++ b/drivers/infiniband/hw/mlx4/main.c
@@ -1172,6 +1172,8 @@ static void mlx4_ib_disassociate_ucontex
 	 * mlx4_ib_vma_close().
 	 */
 	down_write(&owning_mm->mmap_sem);
+	if (!mmget_still_valid(owning_mm))
+		goto skip_mm;
 	for (i = 0; i < HW_BAR_COUNT; i++) {
 		vma = context->hw_bar_info[i].vma;
 		if (!vma)
@@ -1190,7 +1192,7 @@ static void mlx4_ib_disassociate_ucontex
 		/* context going to be destroyed, should not access ops any more */
 		context->hw_bar_info[i].vma->vm_ops = NULL;
 	}
-
+skip_mm:
 	up_write(&owning_mm->mmap_sem);
 	mmput(owning_mm);
 	put_task_struct(owning_process);
--- a/drivers/infiniband/hw/mlx5/main.c
+++ b/drivers/infiniband/hw/mlx5/main.c
@@ -1307,6 +1307,8 @@ static void mlx5_ib_disassociate_ucontex
 	 * mlx5_ib_vma_close.
 	 */
 	down_write(&owning_mm->mmap_sem);
+	if (!mmget_still_valid(owning_mm))
+		goto skip_mm;
 	list_for_each_entry_safe(vma_private, n, &context->vma_private_list,
 				 list) {
 		vma = vma_private->vma;
@@ -1321,6 +1323,7 @@ static void mlx5_ib_disassociate_ucontex
 		list_del(&vma_private->list);
 		kfree(vma_private);
 	}
+skip_mm:
 	up_write(&owning_mm->mmap_sem);
 	mmput(owning_mm);
 	put_task_struct(owning_process);


Patches currently in stable-queue which might be from akaher@vmware.com are

queue-4.9/infiniband-fix-race-condition-between-infiniband-mlx4-mlx5-driver-and-core-dumping.patch
queue-4.9/coredump-fix-race-condition-between-collapse_huge_page-and-core-dumping.patch
queue-4.9/coredump-fix-race-condition-between-mmget_not_zero-get_task_mm-and-core-dumping.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
