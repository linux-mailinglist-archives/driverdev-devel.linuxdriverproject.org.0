Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C44F8272168
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C4428688F;
	Mon, 21 Sep 2020 10:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-r2NMAByFOz; Mon, 21 Sep 2020 10:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C5A78682F;
	Mon, 21 Sep 2020 10:42:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 882E41BF34C
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8491A8682F
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwCI9U-FyE4R for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F5C486819
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:42:47 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1AE7F8EA4FB39AF6CF93;
 Mon, 21 Sep 2020 18:42:43 +0800 (CST)
Received: from [10.174.177.116] (10.174.177.116) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Mon, 21 Sep 2020 18:42:39 +0800
Subject: Re: [PATCH -next] binder: simplify the return expression of
 binder_mmap
To: Christian Brauner <christian.brauner@ubuntu.com>
References: <20200921082423.2590938-1-liushixin2@huawei.com>
 <20200921080830.vrki7dcm64l46ppb@wittgenstein>
From: Liu Shixin <liushixin2@huawei.com>
Message-ID: <b156861c-785e-c657-076d-d62a848d04db@huawei.com>
Date: Mon, 21 Sep 2020 18:42:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200921080830.vrki7dcm64l46ppb@wittgenstein>
X-Originating-IP: [10.174.177.116]
X-CFilter-Loop: Reflected
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
 Suren Baghdasaryan <surenb@google.com>, Hridya
 Valsaraju <hridya@google.com>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020/9/21 16:08, Christian Brauner wrote:

> On Mon, Sep 21, 2020 at 04:24:23PM +0800, Liu Shixin wrote:
>> Simplify the return expression.
>>
>> Signed-off-by: Liu Shixin <liushixin2@huawei.com>
>> ---
> Why not is all I can really say. :) But if this is about simplifying you
> could get rid of the "ret" and "failure string" variables, and the goto
> in that function completely by doing sm like this (__completely
> untested__):

Thanks for your advice. I will modify and test it.

Regards,
Liu Shixin

>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f936530a19b0..26f4dc81b008 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -5182,9 +5182,7 @@ static const struct vm_operations_struct binder_vm_ops = {
>
>  static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>  {
> -       int ret;
>         struct binder_proc *proc = filp->private_data;
> -       const char *failure_string;
>
>         if (proc->tsk != current->group_leader)
>                 return -EINVAL;
> @@ -5196,9 +5194,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>                      (unsigned long)pgprot_val(vma->vm_page_prot));
>
>         if (vma->vm_flags & FORBIDDEN_MMAP_FLAGS) {
> -               ret = -EPERM;
> -               failure_string = "bad vm_flags";
> -               goto err_bad_arg;
> +               pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> +                               proc->pid, vma->vm_start, vma->vm_end, "bad vm_flags", -EPERM);
> +               return -EPERM;
>         }
>         vma->vm_flags |= VM_DONTCOPY | VM_MIXEDMAP;
>         vma->vm_flags &= ~VM_MAYWRITE;
> @@ -5206,15 +5204,7 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>         vma->vm_ops = &binder_vm_ops;
>         vma->vm_private_data = proc;
>
> -       ret = binder_alloc_mmap_handler(&proc->alloc, vma);
> -       if (ret)
> -               return ret;
> -       return 0;
> -
> -err_bad_arg:
> -       pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> -              proc->pid, vma->vm_start, vma->vm_end, failure_string, ret);
> -       return ret;
> +       return binder_alloc_mmap_handler(&proc->alloc, vma);
>  }
>
> Christian
> .
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
