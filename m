Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0BC3624F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 18:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2C2A4069D;
	Fri, 16 Apr 2021 16:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IW2fCzjQ1ECB; Fri, 16 Apr 2021 16:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3347405CA;
	Fri, 16 Apr 2021 16:00:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68EE01BF3BF
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 16:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 567D660E28
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 16:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRGLCZG7Sz0W for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 16:00:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B915F60E27
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 16:00:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4241A6113D;
 Fri, 16 Apr 2021 16:00:42 +0000 (UTC)
Date: Fri, 16 Apr 2021 18:00:38 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <20210416160038.ojbhqf73dkrl4dk6@wittgenstein>
References: <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
 <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
 <20210416134252.v3zfjp36tpk33tqz@wittgenstein>
 <YHmanzAMdeCtZUjy@zeniv-ca.linux.org.uk>
 <20210416151310.nqkxfwocm32lnqfq@wittgenstein>
 <YHmu3/Cw4bUnTSH9@zeniv-ca.linux.org.uk>
 <20210416155815.ayjpnx37dv3a4jos@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416155815.ayjpnx37dv3a4jos@wittgenstein>
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

On Fri, Apr 16, 2021 at 05:58:25PM +0200, Christian Brauner wrote:
> On Fri, Apr 16, 2021 at 03:35:59PM +0000, Al Viro wrote:
> > On Fri, Apr 16, 2021 at 05:13:10PM +0200, Christian Brauner wrote:
> > 
> > > My point here was more that the _file_ has already been opened _before_
> > > that call to io_uring_add_task_file(). But any potential non-trivial
> > > side-effects of opening that file that you correctly pointed out in an
> > > earlier mail has already happened by that time.
> > 
> > The file comes from io_uring_get_file(), the entire thing is within the
> > io_ring_ctx constructor and the only side effect there is ->ring_sock
> > creation.  And that stays until the io_ring_ctx is freed.  I'm _not_
> > saying I like io_uring style in general, BTW - in particular,
> > ->ring_sock->file handling is a kludge (as is too much of interation
> > with AF_UNIX machinery there).  But from side effects POV we are fine
> > there.
> > 
> > > Granted there are more
> > > obvious examples, e.g. the binder stuff.
> > > 
> > > 		int fd = get_unused_fd_flags(O_CLOEXEC);
> > > 
> > > 		if (fd < 0) {
> > > 			binder_debug(BINDER_DEBUG_TRANSACTION,
> > > 				     "failed fd fixup txn %d fd %d\n",
> > > 				     t->debug_id, fd);
> > > 			ret = -ENOMEM;
> > > 			break;
> > > 		}
> > > 		binder_debug(BINDER_DEBUG_TRANSACTION,
> > > 			     "fd fixup txn %d fd %d\n",
> > > 			     t->debug_id, fd);
> > > 		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
> > > 		fd_install(fd, fixup->file);
> > > 		fixup->file = NULL;
> > > 		if (binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
> > > 						fixup->offset, &fd,
> > > 						sizeof(u32))) {
> > > 			ret = -EINVAL;
> > > 			break;
> > > 		}
> > 
> > ... and it's actually broken, since this
> >         /* All copies must be 32-bit aligned and 32-bit size */
> > 	if (!check_buffer(alloc, buffer, buffer_offset, bytes))
> > 		return -EINVAL;
> > in binder_alloc_copy_to_buffer() should've been done *before*
> > fd_install().  If anything, it's an example of the situation when
> > fd_receive() would be wrong...
> 
> They could probably refactor this but I'm not sure why they'd bother. If
> they fail processing any of those files they end up aborting the
> whole transaction.
> (And the original code didn't check the error code btw.)

(dma_buf_fd() seems like another good candidate. But again, I don't have
any plans to shove this down anyone's throat.)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
