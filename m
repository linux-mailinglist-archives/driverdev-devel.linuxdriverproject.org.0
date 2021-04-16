Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5B03624C5
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 17:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1906884AD6;
	Fri, 16 Apr 2021 15:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyWiQ097kp7D; Fri, 16 Apr 2021 15:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C14984ACB;
	Fri, 16 Apr 2021 15:58:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FD9C1BF3BF
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B80240420
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CccNfYP695w for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 15:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8667B4035C
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 15:58:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7631B610EA;
 Fri, 16 Apr 2021 15:58:18 +0000 (UTC)
Date: Fri, 16 Apr 2021 17:58:15 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <20210416155815.ayjpnx37dv3a4jos@wittgenstein>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
 <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
 <20210416134252.v3zfjp36tpk33tqz@wittgenstein>
 <YHmanzAMdeCtZUjy@zeniv-ca.linux.org.uk>
 <20210416151310.nqkxfwocm32lnqfq@wittgenstein>
 <YHmu3/Cw4bUnTSH9@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHmu3/Cw4bUnTSH9@zeniv-ca.linux.org.uk>
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

On Fri, Apr 16, 2021 at 03:35:59PM +0000, Al Viro wrote:
> On Fri, Apr 16, 2021 at 05:13:10PM +0200, Christian Brauner wrote:
> 
> > My point here was more that the _file_ has already been opened _before_
> > that call to io_uring_add_task_file(). But any potential non-trivial
> > side-effects of opening that file that you correctly pointed out in an
> > earlier mail has already happened by that time.
> 
> The file comes from io_uring_get_file(), the entire thing is within the
> io_ring_ctx constructor and the only side effect there is ->ring_sock
> creation.  And that stays until the io_ring_ctx is freed.  I'm _not_
> saying I like io_uring style in general, BTW - in particular,
> ->ring_sock->file handling is a kludge (as is too much of interation
> with AF_UNIX machinery there).  But from side effects POV we are fine
> there.
> 
> > Granted there are more
> > obvious examples, e.g. the binder stuff.
> > 
> > 		int fd = get_unused_fd_flags(O_CLOEXEC);
> > 
> > 		if (fd < 0) {
> > 			binder_debug(BINDER_DEBUG_TRANSACTION,
> > 				     "failed fd fixup txn %d fd %d\n",
> > 				     t->debug_id, fd);
> > 			ret = -ENOMEM;
> > 			break;
> > 		}
> > 		binder_debug(BINDER_DEBUG_TRANSACTION,
> > 			     "fd fixup txn %d fd %d\n",
> > 			     t->debug_id, fd);
> > 		trace_binder_transaction_fd_recv(t, fd, fixup->offset);
> > 		fd_install(fd, fixup->file);
> > 		fixup->file = NULL;
> > 		if (binder_alloc_copy_to_buffer(&proc->alloc, t->buffer,
> > 						fixup->offset, &fd,
> > 						sizeof(u32))) {
> > 			ret = -EINVAL;
> > 			break;
> > 		}
> 
> ... and it's actually broken, since this
>         /* All copies must be 32-bit aligned and 32-bit size */
> 	if (!check_buffer(alloc, buffer, buffer_offset, bytes))
> 		return -EINVAL;
> in binder_alloc_copy_to_buffer() should've been done *before*
> fd_install().  If anything, it's an example of the situation when
> fd_receive() would be wrong...

They could probably refactor this but I'm not sure why they'd bother. If
they fail processing any of those files they end up aborting the
whole transaction.
(And the original code didn't check the error code btw.)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
