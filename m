Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B42807EE09
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 09:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1640786A0F;
	Fri,  2 Aug 2019 07:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSlJWSVmFY-A; Fri,  2 Aug 2019 07:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 038F2869FE;
	Fri,  2 Aug 2019 07:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF72A1BF41D
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 07:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABB72882DB
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 07:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OFMQARdVEYVZ for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 07:51:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 526A388295
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 07:51:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAAA220644;
 Fri,  2 Aug 2019 07:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564732287;
 bh=kzEEtbjjrdPAyzxrRRGRUcKmUt5I/OGfmVyN7CZTUMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KBK3hTK/g/w1aS9eKJB4kyQ5nqJ6ZCuZXyoR+ReQBa1K4Bu7vGSDPSACtOCtfACHo
 a1B7nFMVv3skMPHQKGVGcFCv4Rbo6B9rHuqN756eyGLeuLaLvYRgs0qCHfIJBDNutS
 RXDR6sYF4uSLMhhhCLYAW7jWbFfdigVvBzm6JRxw=
Date: Fri, 2 Aug 2019 09:51:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ajay Kaher <akaher@vmware.com>
Subject: Re: [PATCH v5 1/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Message-ID: <20190802075124.GG26174@kroah.com>
References: <1562005928-1929-1-git-send-email-akaher@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562005928-1929-1-git-send-email-akaher@vmware.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mhocko@suse.com, peterx@redhat.com, matanb@mellanox.com, linux-mm@kvack.org,
 amakhalov@vmware.com, sean.hefty@intel.com, srivatsab@vmware.com,
 aarcange@redhat.com, linux-rdma@vger.kernel.org, rppt@linux.ibm.com,
 dledford@redhat.com, jgg@mellanox.com, riandrews@android.com,
 hal.rosenstock@gmail.com, devel@driverdev.osuosl.org, jannh@google.com,
 leonro@mellanox.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 yishaih@mellanox.com, oleg@redhat.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, arve@android.com, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org,
 mike.kravetz@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 02, 2019 at 12:02:05AM +0530, Ajay Kaher wrote:
> From: Andrea Arcangeli <aarcange@redhat.com>
> 
> commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.
> 
> The core dumping code has always run without holding the mmap_sem for
> writing, despite that is the only way to ensure that the entire vma
> layout will not change from under it.  Only using some signal
> serialization on the processes belonging to the mm is not nearly enough.
> This was pointed out earlier.  For example in Hugh's post from Jul 2017:
> 
>   https://lkml.kernel.org/r/alpine.LSU.2.11.1707191716030.2055@eggly.anvils
> 
>   "Not strictly relevant here, but a related note: I was very surprised
>    to discover, only quite recently, how handle_mm_fault() may be called
>    without down_read(mmap_sem) - when core dumping. That seems a
>    misguided optimization to me, which would also be nice to correct"
> 
> In particular because the growsdown and growsup can move the
> vm_start/vm_end the various loops the core dump does around the vma will
> not be consistent if page faults can happen concurrently.
> 
> Pretty much all users calling mmget_not_zero()/get_task_mm() and then
> taking the mmap_sem had the potential to introduce unexpected side
> effects in the core dumping code.
> 
> Adding mmap_sem for writing around the ->core_dump invocation is a
> viable long term fix, but it requires removing all copy user and page
> faults and to replace them with get_dump_page() for all binary formats
> which is not suitable as a short term fix.
> 
> For the time being this solution manually covers the places that can
> confuse the core dump either by altering the vma layout or the vma flags
> while it runs.  Once ->core_dump runs under mmap_sem for writing the
> function mmget_still_valid() can be dropped.
> 
> Allowing mmap_sem protected sections to run in parallel with the
> coredump provides some minor parallelism advantage to the swapoff code
> (which seems to be safe enough by never mangling any vma field and can
> keep doing swapins in parallel to the core dumping) and to some other
> corner case.
> 
> In order to facilitate the backporting I added "Fixes: 86039bd3b4e6"
> however the side effect of this same race condition in /proc/pid/mem
> should be reproducible since before 2.6.12-rc2 so I couldn't add any
> other "Fixes:" because there's no hash beyond the git genesis commit.
> 
> Because find_extend_vma() is the only location outside of the process
> context that could modify the "mm" structures under mmap_sem for
> reading, by adding the mmget_still_valid() check to it, all other cases
> that take the mmap_sem for reading don't need the new check after
> mmget_not_zero()/get_task_mm().  The expand_stack() in page fault
> context also doesn't need the new check, because all tasks under core
> dumping are frozen.
> 
> Link: http://lkml.kernel.org/r/20190325224949.11068-1-aarcange@redhat.com
> Fixes: 86039bd3b4e6 ("userfaultfd: add new syscall to provide memory externalization")
> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> Reported-by: Jann Horn <jannh@google.com>
> Suggested-by: Oleg Nesterov <oleg@redhat.com>
> Acked-by: Peter Xu <peterx@redhat.com>
> Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
> Reviewed-by: Oleg Nesterov <oleg@redhat.com>
> Reviewed-by: Jann Horn <jannh@google.com>
> Acked-by: Jason Gunthorpe <jgg@mellanox.com>
> Acked-by: Michal Hocko <mhocko@suse.com>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> [akaher@vmware.com: stable 4.9 backport
> -  handle binder_update_page_range - mhocko@suse.com]
> Signed-off-by: Ajay Kaher <akaher@vmware.com>
> ---
> drivers/android/binder.c |  6 ++++++
> fs/proc/task_mmu.c       | 18 ++++++++++++++++++
> fs/userfaultfd.c         |  9 +++++++++
> include/linux/mm.h       | 21 +++++++++++++++++++++
> mm/mmap.c                |  6 +++++-
> 5 files changed, 59 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 80499f4..f05ab8f 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -581,6 +581,12 @@ static int binder_update_page_range(struct binder_proc *proc, int allocate,
> 	if (mm) {
> 		down_write(&mm->mmap_sem);
> +		if (!mmget_still_valid(mm)) {
> +			if (allocate == 0)
> +				goto free_range;
> +			goto err_no_vma;
> +		}
> +
> 		vma = proc->vma;
> 		if (vma && mm != proc->vma_vm_mm) {
> 			pr_err("%d: vma mm and task mm mismatch\n",
> diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
> index 5138e78..4b207b1 100644
> --- a/fs/proc/task_mmu.c
> +++ b/fs/proc/task_mmu.c
> @@ -1057,6 +1057,24 @@ static ssize_t clear_refs_write(struct file *file, const char __user *buf,

This patch is oddly corrupted, and I can't figure out how to fix it up.

When applying it, I get following error:

patching file drivers/android/binder.c
patch: **** malformed patch at line 102: diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c

So something is odd here.

Can you please fix this up, and resend the series so that they can be
applied?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
