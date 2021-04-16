Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5C0362148
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 15:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A21AD60E00;
	Fri, 16 Apr 2021 13:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRrqIcmOeeaN; Fri, 16 Apr 2021 13:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D19F460678;
	Fri, 16 Apr 2021 13:43:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AA901BF335
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 13:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75D774029A
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 13:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbB4hq0XeILO for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 13:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB982400C2
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 13:43:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64BE361152;
 Fri, 16 Apr 2021 13:42:56 +0000 (UTC)
Date: Fri, 16 Apr 2021 15:42:52 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <20210416134252.v3zfjp36tpk33tqz@wittgenstein>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
 <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
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

On Fri, Apr 16, 2021 at 05:55:16AM +0000, Al Viro wrote:
> On Fri, Apr 16, 2021 at 05:19:50AM +0000, Al Viro wrote:
> > On Thu, Apr 01, 2021 at 12:40:34PM +0200, Christian Brauner wrote:
> 
> > > and see whether all of them can be switched to simply using
> > > receive_fd(). I did a completely untested rough sketch to illustrate
> > > what I meant by using binder and devpts Xie seems to have just picked
> > > those two. But the change is obviously only worth it if all or nearly
> > > all callers can be switched over without risk of regression.
> > > It would most likely simplify quite a few codepaths though especially in
> > > the error paths since we can get rid of put_unused_fd() cleanup.
> > > 
> > > But it requires buy in from others obviously.
> > 
> > Opening a file can have non-trivial side effects; reserving a descriptor
> > can't.  Moreover, if you look at the second hit in your list, you'll see
> > that we do *NOT* want that combined thing there - fd_install() is
> > completely irreversible, so we can't do that until we made sure the
> > reply (struct vtpm_proxy_new_dev) has been successfully copied to
> > userland.  No, your receive_fd_user() does not cover that.
> > 
> > There's a bunch of other cases like that - the next ones on your list
> > are drivers/dma-buf/sw_sync.c and drivers/dma-buf/sync_file.c, etc.
> 
> FWIW, pretty much all ioctls that return descriptor as part of a structure
> stored to user-supplied address tend to be that way; some don't have any
> other output fields (in which case they probably would've been better off
> with just passing the descriptor as return value of ioctl(2)).  Those
> might be served by that receive_fd_user() helper; anything that has several
> outputs won't be.  The same goes for anything that has hard-to-undo
> operations as part of what they need to do:
> 	reserve fd
> 	set file up
> 	do hard-to-undo stuff
> 	install into descriptor table
> is the only feasible order of operations - reservation can fail, so
> it must go before the hard-to-undo part and install into descriptor
> table can't be undone at all, so it must come last.  Looks like
> e.g. drivers/virt/nitro_enclaves/ne_misc_dev.c case might be of
> that sort...

If receive_fd() or your receive_fd_user() proposal can replace a chunk
of open-coded places in modules where the split between reserving the
file descriptor and installing it is pointless it's probably already
worth it. Random example from io_uring where the file is already opened
way before (which yes, isn't a module afaik but another place where we
have that pattern):

static int io_uring_install_fd(struct io_ring_ctx *ctx, struct file *file)
{
	int ret, fd;

	fd = get_unused_fd_flags(O_RDWR | O_CLOEXEC);
	if (fd < 0)
		return fd;

	ret = io_uring_add_task_file(ctx);
	if (ret) {
		put_unused_fd(fd);
		return ret;
	}
	fd_install(fd, file);
	return fd;
}

A practical question also is whether the security receive hook thing
actually belongs into the receive_fd() and receive_fd_user() helpers for
the general case or whether that's just something that very few callers
would want. But in any case I'm unlikely to have time on my hands to
play with sm like this any time soon.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
