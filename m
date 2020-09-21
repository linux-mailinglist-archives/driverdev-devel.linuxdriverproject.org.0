Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C841271D52
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 10:08:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D51285566;
	Mon, 21 Sep 2020 08:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yM6IkYPUzOyp; Mon, 21 Sep 2020 08:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70F9A84C4E;
	Mon, 21 Sep 2020 08:08:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19AA01BF41A
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 08:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 989798641F
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 08:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oWlGTukch5ix for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 08:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2AA6F860A8
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 08:08:40 +0000 (UTC)
Received: from ip5f5af089.dynamic.kabel-deutschland.de ([95.90.240.137]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1kKGsA-0003Dj-SL; Mon, 21 Sep 2020 08:08:30 +0000
Date: Mon, 21 Sep 2020 10:08:30 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Liu Shixin <liushixin2@huawei.com>
Subject: Re: [PATCH -next] binder: simplify the return expression of
 binder_mmap
Message-ID: <20200921080830.vrki7dcm64l46ppb@wittgenstein>
References: <20200921082423.2590938-1-liushixin2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921082423.2590938-1-liushixin2@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 21, 2020 at 04:24:23PM +0800, Liu Shixin wrote:
> Simplify the return expression.
> 
> Signed-off-by: Liu Shixin <liushixin2@huawei.com>
> ---

Why not is all I can really say. :) But if this is about simplifying you
could get rid of the "ret" and "failure string" variables, and the goto
in that function completely by doing sm like this (__completely
untested__):

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f936530a19b0..26f4dc81b008 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -5182,9 +5182,7 @@ static const struct vm_operations_struct binder_vm_ops = {

 static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 {
-       int ret;
        struct binder_proc *proc = filp->private_data;
-       const char *failure_string;

        if (proc->tsk != current->group_leader)
                return -EINVAL;
@@ -5196,9 +5194,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
                     (unsigned long)pgprot_val(vma->vm_page_prot));

        if (vma->vm_flags & FORBIDDEN_MMAP_FLAGS) {
-               ret = -EPERM;
-               failure_string = "bad vm_flags";
-               goto err_bad_arg;
+               pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
+                               proc->pid, vma->vm_start, vma->vm_end, "bad vm_flags", -EPERM);
+               return -EPERM;
        }
        vma->vm_flags |= VM_DONTCOPY | VM_MIXEDMAP;
        vma->vm_flags &= ~VM_MAYWRITE;
@@ -5206,15 +5204,7 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
        vma->vm_ops = &binder_vm_ops;
        vma->vm_private_data = proc;

-       ret = binder_alloc_mmap_handler(&proc->alloc, vma);
-       if (ret)
-               return ret;
-       return 0;
-
-err_bad_arg:
-       pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
-              proc->pid, vma->vm_start, vma->vm_end, failure_string, ret);
-       return ret;
+       return binder_alloc_mmap_handler(&proc->alloc, vma);
 }

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
