Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5743FC36C
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Aug 2021 09:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5151981D70;
	Tue, 31 Aug 2021 07:25:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zykP8nU4zx5T; Tue, 31 Aug 2021 07:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7058481A58;
	Tue, 31 Aug 2021 07:25:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 835DD1BF348
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 07:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 722CE403C3
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 07:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=android.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQ5kqzlSkL82 for <devel@linuxdriverproject.org>;
 Tue, 31 Aug 2021 07:24:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89CD94030F
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 07:24:52 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id e1so10059898plt.11
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 00:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HRmn2HSjIyoyl5frN1JOdwhv1jt4tYR/jznN931pQCc=;
 b=W41bBzENunWIPZGT70XTQ00/4JnKxG7675YoBNn/BC+6i5PNbLAeodHCYDxybVjcmu
 qFgp3TB+nSH2E7rmZt0sBiBYw+Y5c4JQ36hyuDIc1JQxwAyuTZwQYlqIswJnTJYUELXD
 aZf1VLcJ+mWmrLj/QrFDipHMTaroujCrLRBKcLLJHOCPlGHWRS5cmsZ4oHgZgtMgRk54
 F7oOCW3GwlVFet1305G9xWZj5Ay6FX8oCjgyYyDJORSk5QTOsQ/53otmyUmx5Z4xyU1C
 67+E8kKZzk7vJ9j1kKnLVZY3QpUIim4uXEZ7BN7M9JSu36TBNWiEOfFrg6RGo/phzAVu
 JgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HRmn2HSjIyoyl5frN1JOdwhv1jt4tYR/jznN931pQCc=;
 b=tMW1OUVyIwSV74sl1uPH+Ws33Ded1ZV1b+R9dq6ylILcI25Lc0zUL6lj0caA1Xlo0w
 io+qsWWmm5xgPh7CbbS+hALZd7/5VN/azG8LpjZwHSnnhxnIOJ7ZbIjhsqes5CxMZvOp
 Mg+riZ1Dq1Ez1Dj9V7xDTEi+jjiQFw0r2e+aCAIIDTynyb/InIao/qXwFl+oJ6bQuSUL
 Vxo4erkk20oqAbkRuLLMP+gx2JMZtAjnx2kH3ncRw+H9uOzyND+YUKvjwCcMDiypx5Er
 Xs/4s/Yf0Lbt0LSonMoEgs4HcUxRfx5YRzX9JIe8LozdEP7ptjMd2phrh9tXcmaeNNfS
 rlyg==
X-Gm-Message-State: AOAM5301/3pacotmEUbSFBhSnbb75KQMIhrtux0Hh91Fl7R4aN+1Colq
 FA0B688+mSF/4NXJYhTObzPCMIr7lqzQlPPVh8s8iw==
X-Google-Smtp-Source: ABdhPJzoS9DdKnYQUkbtZAQSn4bnjxyR+xzpi2fokmo+9QTwxCtzqiKfpyGKOpBi7GwEiy1jX+9pldHWJo0DUuequSM=
X-Received: by 2002:a17:90b:78f:: with SMTP id
 l15mr3754035pjz.181.1630394691968; 
 Tue, 31 Aug 2021 00:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210830195146.587206-1-tkjos@google.com>
In-Reply-To: <20210830195146.587206-1-tkjos@google.com>
From: Martijn Coenen <maco@android.com>
Date: Tue, 31 Aug 2021 09:24:40 +0200
Message-ID: <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
To: Todd Kjos <tkjos@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 kernel-team@android.com, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 30, 2021 at 9:51 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
>
> During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> cleanup may close 1 or more fds. The close operations are
> completed using the task work mechanism -- which means the thread
> needs to return to userspace or the file object may never be
> dereferenced -- which can lead to hung processes.
>
> Force the binder thread back to userspace if an fd is closed during
> BC_FREE_BUFFER handling.
>
> Signed-off-by: Todd Kjos <tkjos@google.com>
Reviewed-by: Martijn Coenen <maco@android.com>

> ---
>  drivers/android/binder.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index bcec598b89f2..c2823f0d588f 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -1852,6 +1852,7 @@ static void binder_deferred_fd_close(int fd)
>  }
>
>  static void binder_transaction_buffer_release(struct binder_proc *proc,
> +                                             struct binder_thread *thread,
>                                               struct binder_buffer *buffer,
>                                               binder_size_t failed_at,
>                                               bool is_failure)
> @@ -2011,8 +2012,16 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
>                                                 &proc->alloc, &fd, buffer,
>                                                 offset, sizeof(fd));
>                                 WARN_ON(err);
> -                               if (!err)
> +                               if (!err) {
>                                         binder_deferred_fd_close(fd);
> +                                       /*
> +                                        * Need to make sure the thread goes
> +                                        * back to userspace to complete the
> +                                        * deferred close
> +                                        */
> +                                       if (thread)
> +                                               thread->looper_need_return = true;
> +                               }
>                         }
>                 } break;
>                 default:
> @@ -3105,7 +3114,7 @@ static void binder_transaction(struct binder_proc *proc,
>  err_copy_data_failed:
>         binder_free_txn_fixups(t);
>         trace_binder_transaction_failed_buffer_release(t->buffer);
> -       binder_transaction_buffer_release(target_proc, t->buffer,
> +       binder_transaction_buffer_release(target_proc, NULL, t->buffer,
>                                           buffer_offset, true);
>         if (target_node)
>                 binder_dec_node_tmpref(target_node);
> @@ -3184,7 +3193,9 @@ static void binder_transaction(struct binder_proc *proc,
>   * Cleanup buffer and free it.
>   */
>  static void
> -binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
> +binder_free_buf(struct binder_proc *proc,
> +               struct binder_thread *thread,
> +               struct binder_buffer *buffer)
>  {
>         binder_inner_proc_lock(proc);
>         if (buffer->transaction) {
> @@ -3212,7 +3223,7 @@ binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
>                 binder_node_inner_unlock(buf_node);
>         }
>         trace_binder_transaction_buffer_release(buffer);
> -       binder_transaction_buffer_release(proc, buffer, 0, false);
> +       binder_transaction_buffer_release(proc, thread, buffer, 0, false);
>         binder_alloc_free_buf(&proc->alloc, buffer);
>  }
>
> @@ -3414,7 +3425,7 @@ static int binder_thread_write(struct binder_proc *proc,
>                                      proc->pid, thread->pid, (u64)data_ptr,
>                                      buffer->debug_id,
>                                      buffer->transaction ? "active" : "finished");
> -                       binder_free_buf(proc, buffer);
> +                       binder_free_buf(proc, thread, buffer);
>                         break;
>                 }
>
> @@ -4107,7 +4118,7 @@ static int binder_thread_read(struct binder_proc *proc,
>                         buffer->transaction = NULL;
>                         binder_cleanup_transaction(t, "fd fixups failed",
>                                                    BR_FAILED_REPLY);
> -                       binder_free_buf(proc, buffer);
> +                       binder_free_buf(proc, thread, buffer);
>                         binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
>                                      "%d:%d %stransaction %d fd fixups failed %d/%d, line %d\n",
>                                      proc->pid, thread->pid,
> --
> 2.33.0.259.gc128427fd7-goog
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
