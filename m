Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAF339A4B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 01:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03E824ED33;
	Sat, 13 Mar 2021 00:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RK998f5NT-MA; Sat, 13 Mar 2021 00:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 943744ED29;
	Sat, 13 Mar 2021 00:07:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC6561BF3EF
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 00:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA490605F9
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 00:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMzQ_HwdoDd4 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 00:07:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92DAD605EC
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 00:07:32 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id u4so9442868ljo.6
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vo9Ds2p7ZTRdygb1CNZixssOPWsBAJIixTFMLb5+SLY=;
 b=K4TcHTgP6bwgveRf3jHJPDOViPdwLCTpgpPvLQCZjh26+EvoRbpbYRi8Y1yctIT2yY
 RKvUcG1n8OwrO9lLNLERPINl0+rrRC4Eh1g+qdKg4KB9Kf0sSkgXfO/vA1RXeadbkByL
 /m1WJKzHOZrYesB39+FMqd7ha9GA0/5nmgNMS6AoG6EhbW3MVWpHnOh8UM3JbpnuUUZH
 wp2fo/6HXjF2X0jnrCROB9+IN8eACWxqQQNiWA1+02oMJdUzSKBgGqCMKp0oiNp/9XxB
 GwIsuWZP1pl5FvHCOPPbohJIK7rP4xvdLF9Dv8zQIuWzWqeqJgvR2gQ0SFvM0O4WoTHx
 tBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vo9Ds2p7ZTRdygb1CNZixssOPWsBAJIixTFMLb5+SLY=;
 b=VqQ9/avyan94bAHE2CYJl6jzqIaTk6bCj6cEZ0rZMHGEkxtWqJx5gQQfl9h37H0eC9
 2CLYMRwPKtEYywlY0Uu1IDA11P4Ld/ZtldhgK6srkXhJrcKqmApAjIlqSSUVLMXyEBlA
 vTyAbm8KrjDUNsGcIpZpDAfLZ8VDef66jF0/xxq3CnNRuV02oqomCT35Pht2AzUVtNYV
 UHAgKJRAzErpW56ORbzOUiaCp1IvdKMFCUimrjpN/Y3nIWGpVxuIl6xHZwEujG95xc2W
 WLcfXGAn728bpzDRL+Mj/z1sHRVxtg2vdk58aEv2+Uf/BizARlsKY2t8i+AfUOIsY4r+
 hpIg==
X-Gm-Message-State: AOAM530mIGYIqzbE745zkX3cGSrpwesD6Wd3Boah5H7dIAf4A8RCEcFC
 HwMDNb2rQ8/ENWKf/R0/ZWQVM7J3TGAMCyvrjKWn8PSUbT4=
X-Google-Smtp-Source: ABdhPJxo9Wbb0yWL8tKwiR3yrEJLZIKbUfYDlxIYTV9ha45zSqUNsxXc1n3CpHVI4DfIpfp6IwshLK9/cs8olr1noqs=
X-Received: by 2002:a2e:8018:: with SMTP id j24mr3875242ljg.188.1615594050328; 
 Fri, 12 Mar 2021 16:07:30 -0800 (PST)
MIME-Version: 1.0
References: <20210311184629.589725-1-dualli@chromium.org>
 <20210311184629.589725-4-dualli@chromium.org>
In-Reply-To: <20210311184629.589725-4-dualli@chromium.org>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 12 Mar 2021 16:07:19 -0800
Message-ID: <CAHRSSEyQTn6T6yDET-euQNrJuJa_ahCQ9ZtgPK3Os16ED2yfmQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] binder: BINDER_GET_FROZEN_INFO ioctl
To: Li Li <dualli@chromium.org>
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Android Kernel Team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 10:46 AM Li Li <dualli@chromium.org> wrote:
>
> From: Marco Ballesio <balejs@google.com>
>
> User space needs to know if binder transactions occurred to frozen
> processes. Introduce a new BINDER_GET_FROZEN ioctl and keep track of
> transactions occurring to frozen proceses.
>
> Signed-off-by: Marco Ballesio <balejs@google.com>
> Signed-off-by: Li Li <dualli@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c            | 55 +++++++++++++++++++++++++++++
>  drivers/android/binder_internal.h   |  6 ++++
>  include/uapi/linux/android/binder.h |  7 ++++
>  3 files changed, 68 insertions(+)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 38bbf9a4ce99..b4999ed04b2e 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2360,6 +2360,10 @@ static int binder_proc_transaction(struct binder_transaction *t,
>         }
>
>         binder_inner_proc_lock(proc);
> +       if (proc->is_frozen) {
> +               proc->sync_recv |= !oneway;
> +               proc->async_recv |= oneway;
> +       }
>
>         if ((proc->is_frozen && !oneway) || proc->is_dead ||
>                         (thread && thread->is_dead)) {
> @@ -4636,6 +4640,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>
>         if (!info->enable) {
>                 binder_inner_proc_lock(target_proc);
> +               target_proc->sync_recv = false;
> +               target_proc->async_recv = false;
>                 target_proc->is_frozen = false;
>                 binder_inner_proc_unlock(target_proc);
>                 return 0;
> @@ -4647,6 +4653,8 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>          * for transactions to drain.
>          */
>         binder_inner_proc_lock(target_proc);
> +       target_proc->sync_recv = false;
> +       target_proc->async_recv = false;
>         target_proc->is_frozen = true;
>         binder_inner_proc_unlock(target_proc);
>
> @@ -4668,6 +4676,33 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>         return ret;
>  }
>
> +static int binder_ioctl_get_freezer_info(
> +                               struct binder_frozen_status_info *info)
> +{
> +       struct binder_proc *target_proc;
> +       bool found = false;
> +
> +       info->sync_recv = 0;
> +       info->async_recv = 0;
> +
> +       mutex_lock(&binder_procs_lock);
> +       hlist_for_each_entry(target_proc, &binder_procs, proc_node) {
> +               if (target_proc->pid == info->pid) {
> +                       found = true;
> +                       binder_inner_proc_lock(target_proc);
> +                       info->sync_recv |= target_proc->sync_recv;
> +                       info->async_recv |= target_proc->async_recv;
> +                       binder_inner_proc_unlock(target_proc);
> +               }
> +       }
> +       mutex_unlock(&binder_procs_lock);
> +
> +       if (!found)
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
>  static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  {
>         int ret;
> @@ -4846,6 +4881,24 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>                         goto err;
>                 break;
>         }
> +       case BINDER_GET_FROZEN_INFO: {
> +               struct binder_frozen_status_info info;
> +
> +               if (copy_from_user(&info, ubuf, sizeof(info))) {
> +                       ret = -EFAULT;
> +                       goto err;
> +               }
> +
> +               ret = binder_ioctl_get_freezer_info(&info);
> +               if (ret < 0)
> +                       goto err;
> +
> +               if (copy_to_user(ubuf, &info, sizeof(info))) {
> +                       ret = -EFAULT;
> +                       goto err;
> +               }
> +               break;
> +       }
>         default:
>                 ret = -EINVAL;
>                 goto err;
> @@ -5156,6 +5209,8 @@ static void binder_deferred_release(struct binder_proc *proc)
>
>         proc->is_dead = true;
>         proc->is_frozen = false;
> +       proc->sync_recv = false;
> +       proc->async_recv = false;
>         threads = 0;
>         active_transactions = 0;
>         while ((n = rb_first(&proc->threads))) {
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index e6a53e98c6da..2872a7de68e1 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -376,6 +376,10 @@ struct binder_ref {
>   * @is_frozen:            process is frozen and unable to service
>   *                        binder transactions
>   *                        (protected by @inner_lock)
> + * @sync_recv:            process received sync transactions since last frozen
> + *                        (protected by @inner_lock)
> + * @async_recv:           process received async transactions since last frozen
> + *                        (protected by @inner_lock)
>   * @freeze_wait:          waitqueue of processes waiting for all outstanding
>   *                        transactions to be processed
>   *                        (protected by @inner_lock)
> @@ -422,6 +426,8 @@ struct binder_proc {
>         int outstanding_txns;
>         bool is_dead;
>         bool is_frozen;
> +       bool sync_recv;
> +       bool async_recv;
>         wait_queue_head_t freeze_wait;
>
>         struct list_head todo;
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> index 7eb5b818b3c1..156070d18c4f 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -223,6 +223,12 @@ struct binder_freeze_info {
>         __u32            timeout_ms;
>  };
>
> +struct binder_frozen_status_info {
> +       __u32            pid;
> +       __u32            sync_recv;
> +       __u32            async_recv;
> +};
> +
>  #define BINDER_WRITE_READ              _IOWR('b', 1, struct binder_write_read)
>  #define BINDER_SET_IDLE_TIMEOUT                _IOW('b', 3, __s64)
>  #define BINDER_SET_MAX_THREADS         _IOW('b', 5, __u32)
> @@ -234,6 +240,7 @@ struct binder_freeze_info {
>  #define BINDER_GET_NODE_INFO_FOR_REF   _IOWR('b', 12, struct binder_node_info_for_ref)
>  #define BINDER_SET_CONTEXT_MGR_EXT     _IOW('b', 13, struct flat_binder_object)
>  #define BINDER_FREEZE                  _IOW('b', 14, struct binder_freeze_info)
> +#define BINDER_GET_FROZEN_INFO         _IOWR('b', 15, struct binder_frozen_status_info)
>
>  /*
>   * NOTE: Two special error codes you should check for when calling
> --
> 2.31.0.rc2.261.g7f71774620-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
