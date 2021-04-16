Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C3B36197D
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 07:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50E6040664;
	Fri, 16 Apr 2021 05:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UuBdpLjYQdjF; Fri, 16 Apr 2021 05:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E45640249;
	Fri, 16 Apr 2021 05:55:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7871BF373
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 05:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 672C840249
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 05:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlUs5E_CbLxZ for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 05:55:26 +0000 (UTC)
X-Greylist: delayed 00:35:11 by SQLgrey-1.8.0
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk
 [IPv6:2607:5300:60:148a::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D492A4012F
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 05:55:26 +0000 (UTC)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lXHRk-005glP-Ea; Fri, 16 Apr 2021 05:55:16 +0000
Date: Fri, 16 Apr 2021 05:55:16 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
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

On Fri, Apr 16, 2021 at 05:19:50AM +0000, Al Viro wrote:
> On Thu, Apr 01, 2021 at 12:40:34PM +0200, Christian Brauner wrote:

> > and see whether all of them can be switched to simply using
> > receive_fd(). I did a completely untested rough sketch to illustrate
> > what I meant by using binder and devpts Xie seems to have just picked
> > those two. But the change is obviously only worth it if all or nearly
> > all callers can be switched over without risk of regression.
> > It would most likely simplify quite a few codepaths though especially in
> > the error paths since we can get rid of put_unused_fd() cleanup.
> > 
> > But it requires buy in from others obviously.
> 
> Opening a file can have non-trivial side effects; reserving a descriptor
> can't.  Moreover, if you look at the second hit in your list, you'll see
> that we do *NOT* want that combined thing there - fd_install() is
> completely irreversible, so we can't do that until we made sure the
> reply (struct vtpm_proxy_new_dev) has been successfully copied to
> userland.  No, your receive_fd_user() does not cover that.
> 
> There's a bunch of other cases like that - the next ones on your list
> are drivers/dma-buf/sw_sync.c and drivers/dma-buf/sync_file.c, etc.

FWIW, pretty much all ioctls that return descriptor as part of a structure
stored to user-supplied address tend to be that way; some don't have any
other output fields (in which case they probably would've been better off
with just passing the descriptor as return value of ioctl(2)).  Those
might be served by that receive_fd_user() helper; anything that has several
outputs won't be.  The same goes for anything that has hard-to-undo
operations as part of what they need to do:
	reserve fd
	set file up
	do hard-to-undo stuff
	install into descriptor table
is the only feasible order of operations - reservation can fail, so
it must go before the hard-to-undo part and install into descriptor
table can't be undone at all, so it must come last.  Looks like
e.g. drivers/virt/nitro_enclaves/ne_misc_dev.c case might be of
that sort...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
