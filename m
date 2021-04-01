Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF4135144A
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 13:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1EA660BBE;
	Thu,  1 Apr 2021 11:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzR51krUzUCo; Thu,  1 Apr 2021 11:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB9C960BAF;
	Thu,  1 Apr 2021 11:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03EAD1BF82F
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E562E849FA
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0n256ygvjgG for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 11:11:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AA2883D8C
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 11:11:40 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u9so2278846ejj.7
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 04:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D7Ks/Z1/15BVenCmAbBTO0uUaD3ULivGFXWIuCr3cbw=;
 b=jcMeG3dJTx++QQlbtOVZAFV7IHCOPQaPwnTZN1xmnNftwZfA9Y1X053DR0bnHc3zaH
 xjNDaRhPr5OfRPxeDC9qD++q0YceSuj/8hMA2iUDzXVP+Wy9t3n2FDh9BzN87yF30ida
 2gW31J/vIrPmtsTKoX4MFbmwGE6NqWp8xiZ6Wapl9iOVSi7Mrg6IJOXM6qICDwDoTwyb
 7ivhYZEjZWNXVeS8+Rlsxavczk1Wt1chpTfEFuMMuzsmGX9Wuxz09cAXuMPRsrWXm9Jo
 olZ26jQ5QAu77yZZxk2Yx7Vjxk6POO0wTB5eDWjXgL6ayNMq3JhvUZaj9hgI5u+wufec
 FtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D7Ks/Z1/15BVenCmAbBTO0uUaD3ULivGFXWIuCr3cbw=;
 b=Uluhb2I/zTqN4PyzZC3aSi2UolL8Q04bKIseLADQngvgTO9yKbyMBEwdQQLVjQ/ACk
 7Hmxch1zXcJ10c+7avczWzQOGMjQFwYNo1fuaWGxKUTSCtJ2q3/vCE9XmpJA+zETuZtf
 urcfi0G9GlJjzewnhnvAUo0WvypNJra2TprahPAEOVELcHmV/EsMYo2UHUnhW2cH3Fmc
 P0HNoFj4L9lrhLGg0a3Q5RmJSaQa9lw/1tB9Q5lFhzRk9wctKtQGt0nz+FHaoQSnQZd1
 ni2yvoVXrqncdZYZsMgjltG1vaOaXXMKg20EG33Wm9sf/1kPyXuwqudcKy8lZUmlaYBc
 dupw==
X-Gm-Message-State: AOAM532HLPYZIPFsXcX/4rCgXmblW/1mhlAZKqLaSGAtycuM1J4fJQNs
 GMI7p1Xa2S+4dOErVdh08iA88MzoIm8zv0If3aLe
X-Google-Smtp-Source: ABdhPJzYPJj8TMVxBnPcoH06lXyByIvGxOspPt79banZ7a9arHvTkwRZZo0qeXOdE4SXbpvj1d7OcmSB0jjbGdjEBTw=
X-Received: by 2002:a17:906:2a16:: with SMTP id
 j22mr8549413eje.247.1617275498569; 
 Thu, 01 Apr 2021 04:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com> <20210401104034.52qaaoea27htkpbh@wittgenstein>
In-Reply-To: <20210401104034.52qaaoea27htkpbh@wittgenstein>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 19:11:27 +0800
Message-ID: <CACycT3v3b7sfswm5Og9Pk-Q=FTD_RabTudv3TkHqo8fdSQvsXA@mail.gmail.com>
Subject: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
To: Christian Brauner <christian.brauner@ubuntu.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, keescook@chromium.org,
 Greg KH <gregkh@linuxfoundation.org>, Jason Wang <jasowang@redhat.com>,
 sargun@sargun.me, Christoph Hellwig <hch@infradead.org>, hridya@google.com,
 arve@android.com, viro@zeniv.linux.org.uk, joel@joelfernandes.org,
 linux-fsdevel@vger.kernel.org, maco@android.com, surenb@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 1, 2021 at 6:40 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Thu, Apr 01, 2021 at 11:54:45AM +0200, Greg KH wrote:
> > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > Use receive_fd() to receive file from another process instead of
> > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > the logic and also makes sure we don't miss any security stuff.
> >
> > But no logic is simplified here, and nothing is "missed", so I do not
> > understand this change at all.
> >
> > >
> > > Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
> > > ---
> > >  drivers/android/binder.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > index c119736ca56a..080bcab7d632 100644
> > > --- a/drivers/android/binder.c
> > > +++ b/drivers/android/binder.c
> > > @@ -3728,7 +3728,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
> > >     int ret = 0;
> > >
> > >     list_for_each_entry(fixup, &t->fd_fixups, fixup_entry) {
> > > -           int fd = get_unused_fd_flags(O_CLOEXEC);
> > > +           int fd  = receive_fd(fixup->file, O_CLOEXEC);
> >
> > Why 2 spaces?
> >
> > >
> > >             if (fd < 0) {
> > >                     binder_debug(BINDER_DEBUG_TRANSACTION,
> > > @@ -3741,7 +3741,7 @@ static int binder_apply_fd_fixups(struct binder_proc *proc,
> > >                          "fd fixup txn %d fd %d\n",
> > >                          t->debug_id, fd);
> > >             trace_binder_transaction_fd_recv(t, fd, fixup->offset);
> > > -           fd_install(fd, fixup->file);
> > > +           fput(fixup->file);
> >
> > Are you sure this is the same???
> >
> > I d onot understand the need for this change at all, what is wrong with
> > the existing code here?
>
> I suggested something like this.
> Some time back we added receive_fd() for seccomp and SCM_RIGHTS to have
> a unified way of installing file descriptors including taking care of
> handling sockets and running security hooks. The helper also encompasses
> the whole get_unused_fd() + fd_install dance.
> My suggestion was to look at all the places were we currently open-code
> this in drivers/:
>

Sorry for not following your suggestion. Yes, I looked at those
places. But I found that we will add security_file_receive()
implicitly if we replace get_unused_fd() + fd_install() with
receive_fd() for most drivers. Not sure if there will be some
regression. So I only do that where I think security_file_receive() is
needed, that is this patch. Although it looks like this is not a good
idea now...

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
