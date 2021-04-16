Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB96362391
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 17:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCEA684896;
	Fri, 16 Apr 2021 15:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNlbgSZYQilq; Fri, 16 Apr 2021 15:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 809D18484D;
	Fri, 16 Apr 2021 15:13:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 689DB1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64B4C607EB
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpjmCsi7xVz4 for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 15:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55FE360678
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 15:13:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6142E61026;
 Fri, 16 Apr 2021 15:13:13 +0000 (UTC)
Date: Fri, 16 Apr 2021 17:13:10 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <20210416151310.nqkxfwocm32lnqfq@wittgenstein>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
 <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
 <20210416134252.v3zfjp36tpk33tqz@wittgenstein>
 <YHmanzAMdeCtZUjy@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHmanzAMdeCtZUjy@zeniv-ca.linux.org.uk>
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
 Greg KH <gregkh@linuxfoundation.org>, jasowang@redhat.com,
 linux-fsdevel@vger.kernel.org, sargun@sargun.me, hch@infradead.org,
 Xie Yongji <xieyongji@bytedance.com>, arve@android.com, joel@joelfernandes.org,
 hridya@google.com, maco@android.com, surenb@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 16, 2021 at 02:09:35PM +0000, Al Viro wrote:
> On Fri, Apr 16, 2021 at 03:42:52PM +0200, Christian Brauner wrote:
> > > > are drivers/dma-buf/sw_sync.c and drivers/dma-buf/sync_file.c, etc.
> > > 
> > > FWIW, pretty much all ioctls that return descriptor as part of a structure
> > > stored to user-supplied address tend to be that way; some don't have any
> > > other output fields (in which case they probably would've been better off
> > > with just passing the descriptor as return value of ioctl(2)).  Those
> > > might be served by that receive_fd_user() helper; anything that has several
> > > outputs won't be.  The same goes for anything that has hard-to-undo
> > > operations as part of what they need to do:
> > > 	reserve fd
> > > 	set file up
> > > 	do hard-to-undo stuff
> > > 	install into descriptor table
> > > is the only feasible order of operations - reservation can fail, so
> > > it must go before the hard-to-undo part and install into descriptor
> > > table can't be undone at all, so it must come last.  Looks like
> > > e.g. drivers/virt/nitro_enclaves/ne_misc_dev.c case might be of
> > > that sort...
> > 
> > If receive_fd() or your receive_fd_user() proposal can replace a chunk
> 
> My what proposal?  The thing is currently in linux/file.h, put there
> by Kees half a year ago...

Yeah, I know. I was just referring to that line:

> > > might be served by that receive_fd_user() helper; anything that has several

I wasn't trying to imply you were the author or instigator of the api.

> 
> > of open-coded places in modules where the split between reserving the
> > file descriptor and installing it is pointless it's probably already
> > worth it.
> 
> A helper for use in some of the simplest cases, with big fat warnings
> not to touch if the things are not entirely trivial - sure, why not,
> same as we have anon_inode_getfd().  But that's a convenience helper,
> not a general purpose primitive.
> 
> > Random example from io_uring where the file is already opened
> > way before (which yes, isn't a module afaik but another place where we
> > have that pattern):
> > 
> > static int io_uring_install_fd(struct io_ring_ctx *ctx, struct file *file)
> > {
> > 	int ret, fd;
> > 
> > 	fd = get_unused_fd_flags(O_RDWR | O_CLOEXEC);
> > 	if (fd < 0)
> > 		return fd;
> > 
> > 	ret = io_uring_add_task_file(ctx);
> 
> Huh?  It's
>         ret = io_uring_add_task_file(ctx, file);
> in the mainline and I don't see how that sucker could work without having
> file passed to it.

My point here was more that the _file_ has already been opened _before_
that call to io_uring_add_task_file(). But any potential non-trivial
side-effects of opening that file that you correctly pointed out in an
earlier mail has already happened by that time. Granted there are more
obvious examples, e.g. the binder stuff.

		int fd = get_unused_fd_flags(O_CLOEXEC);

		if (fd < 0) {
			binder_debug(BINDER_DEBUG_TRANSACTION,
				     "failed fd fixup txn %d fd %d\n",
				     t->debug_id, fd);
			ret = -ENOMEM;
			break;
		}
		binder_debug(BINDER_DEBUG_TRANSACTION,
			     "fd fixup txn %d fd %d\n",
			     t->debug_id, fd);
		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
		fd_install(fd, fixup->file);
		fixup->file = NULL;
		if (binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
						fixup->offset, &fd,
						sizeof(u32))) {
			ret = -EINVAL;
			break;
		}
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
