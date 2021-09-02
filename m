Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DD83FF04E
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Sep 2021 17:36:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B99C61527;
	Thu,  2 Sep 2021 15:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ShjdQt2YVH1; Thu,  2 Sep 2021 15:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C7B614CA;
	Thu,  2 Sep 2021 15:36:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A30901BF4DA
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 15:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 916F24077F
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 15:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uu2aGRrX3eEM for <devel@linuxdriverproject.org>;
 Thu,  2 Sep 2021 15:35:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4E1340788
 for <devel@driverdev.osuosl.org>; Thu,  2 Sep 2021 15:35:49 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id l18so4308441lji.12
 for <devel@driverdev.osuosl.org>; Thu, 02 Sep 2021 08:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gqsE0hcACBYtzOEUSRWmq502BlYXjpyMpHHF4zb++1Y=;
 b=YvMoLhTqope6Anvbg2E/49DdR0bfBTbd3WBFEpizcH0H43hqwki7cGgzsjtRtm+AoT
 38FGEfBZmCZH/fn2WSrE++8YwficAwTcjLRvKO3D6bSuwFqVx5xBEgPxK9YLo7hVU5rj
 dPqO+SLEHJoOqbsTFmWAXZ9/nLfrf980M/fNjCa6aDWHW3jRJis7MGBQyl0ZmGZ4Gnpg
 8LO/NCLH8ziH2DY+BmiRAIvw9INsp90XK5BE73m7OhmMpz2/99leispqO6agIGSvQtXh
 1qQ6+kgAfUZY0Do2zuglHu0P6NbjVln1NC3EVkF46q0Ufila1YAXVB5lZAvfabZFqDG5
 YACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gqsE0hcACBYtzOEUSRWmq502BlYXjpyMpHHF4zb++1Y=;
 b=EVtKVQYhmBPb0MMhTqnva7aTX3V4kNo6Qx4f12PIUgNGmvEU1V6TUS6r+WwkuykU4x
 PVg6jiHCLKO8iasJ1SeIMrB+skrvlSKIXhRu97XCcn5yrAnNABvtPUff2OsI2nl/OTVA
 wILMVZLd1TGxIGPJIlTE2iIcJ6f43sT76Wtn1MW+jkgHzHOxSk4fQTSbP3iK6LmqnMsI
 BSJiC/yqroKKBcpQ/raSMS+KoqNLnswTzlJV2BwLTdA1wmWO8vDWgk64lxbO1jVYjyfh
 rST6MAFPcIqCQm4d41s06vI74HXVp5AvxqwcywReZ5dtsVpGJKQWbaOY1GTYoZGJVU/B
 WzjQ==
X-Gm-Message-State: AOAM531Bmuv4EOmTycoD+2uJGTGGazxZSvrRBmcKDZw3OkQdGvtQlKPu
 eLkw6LxJRrabM9kNaiwidbty7vveIvlywd05jRCLBA==
X-Google-Smtp-Source: ABdhPJzJ2ZXLD2ye7fiTVTjas7hr69B87RP5P3F3ORamACWW63F58/LqhV8yp2vp3VXog/b65mHOHs0VwizfSYBzHlQ=
X-Received: by 2002:a05:651c:118f:: with SMTP id
 w15mr3130589ljo.47.1630596947384; 
 Thu, 02 Sep 2021 08:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210830195146.587206-1-tkjos@google.com>
 <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
In-Reply-To: <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 2 Sep 2021 08:35:35 -0700
Message-ID: <CAHRSSExONtUFu0Mb8uJeVKcyDYb8=1PO7a=aQ=DUEpA5kAcTQA@mail.gmail.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
To: Martijn Coenen <maco@android.com>
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
 stable <stable@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 kernel-team@android.com, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 31, 2021 at 12:24 AM Martijn Coenen <maco@android.com> wrote:
>
> On Mon, Aug 30, 2021 at 9:51 PM 'Todd Kjos' via kernel-team
> <kernel-team@android.com> wrote:
> >
> > During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> > cleanup may close 1 or more fds. The close operations are
> > completed using the task work mechanism -- which means the thread
> > needs to return to userspace or the file object may never be
> > dereferenced -- which can lead to hung processes.
> >
> > Force the binder thread back to userspace if an fd is closed during
> > BC_FREE_BUFFER handling.
> >
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> Reviewed-by: Martijn Coenen <maco@android.com>

Please also add to stable releases 5.4 and later.

>
> > ---
> >  drivers/android/binder.c | 23 +++++++++++++++++------
> >  1 file changed, 17 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index bcec598b89f2..c2823f0d588f 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -1852,6 +1852,7 @@ static void binder_deferred_fd_close(int fd)
> >  }
> >
> >  static void binder_transaction_buffer_release(struct binder_proc *proc,
> > +                                             struct binder_thread *thread,
> >                                               struct binder_buffer *buffer,
> >                                               binder_size_t failed_at,
> >                                               bool is_failure)
> > @@ -2011,8 +2012,16 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
> >                                                 &proc->alloc, &fd, buffer,
> >                                                 offset, sizeof(fd));
> >                                 WARN_ON(err);
> > -                               if (!err)
> > +                               if (!err) {
> >                                         binder_deferred_fd_close(fd);
> > +                                       /*
> > +                                        * Need to make sure the thread goes
> > +                                        * back to userspace to complete the
> > +                                        * deferred close
> > +                                        */
> > +                                       if (thread)
> > +                                               thread->looper_need_return = true;
> > +                               }
> >                         }
> >                 } break;
> >                 default:
> > @@ -3105,7 +3114,7 @@ static void binder_transaction(struct binder_proc *proc,
> >  err_copy_data_failed:
> >         binder_free_txn_fixups(t);
> >         trace_binder_transaction_failed_buffer_release(t->buffer);
> > -       binder_transaction_buffer_release(target_proc, t->buffer,
> > +       binder_transaction_buffer_release(target_proc, NULL, t->buffer,
> >                                           buffer_offset, true);
> >         if (target_node)
> >                 binder_dec_node_tmpref(target_node);
> > @@ -3184,7 +3193,9 @@ static void binder_transaction(struct binder_proc *proc,
> >   * Cleanup buffer and free it.
> >   */
> >  static void
> > -binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
> > +binder_free_buf(struct binder_proc *proc,
> > +               struct binder_thread *thread,
> > +               struct binder_buffer *buffer)
> >  {
> >         binder_inner_proc_lock(proc);
> >         if (buffer->transaction) {
> > @@ -3212,7 +3223,7 @@ binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
> >                 binder_node_inner_unlock(buf_node);
> >         }
> >         trace_binder_transaction_buffer_release(buffer);
> > -       binder_transaction_buffer_release(proc, buffer, 0, false);
> > +       binder_transaction_buffer_release(proc, thread, buffer, 0, false);
> >         binder_alloc_free_buf(&proc->alloc, buffer);
> >  }
> >
> > @@ -3414,7 +3425,7 @@ static int binder_thread_write(struct binder_proc *proc,
> >                                      proc->pid, thread->pid, (u64)data_ptr,
> >                                      buffer->debug_id,
> >                                      buffer->transaction ? "active" : "finished");
> > -                       binder_free_buf(proc, buffer);
> > +                       binder_free_buf(proc, thread, buffer);
> >                         break;
> >                 }
> >
> > @@ -4107,7 +4118,7 @@ static int binder_thread_read(struct binder_proc *proc,
> >                         buffer->transaction = NULL;
> >                         binder_cleanup_transaction(t, "fd fixups failed",
> >                                                    BR_FAILED_REPLY);
> > -                       binder_free_buf(proc, buffer);
> > +                       binder_free_buf(proc, thread, buffer);
> >                         binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
> >                                      "%d:%d %stransaction %d fd fixups failed %d/%d, line %d\n",
> >                                      proc->pid, thread->pid,
> > --
> > 2.33.0.259.gc128427fd7-goog
> >
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
