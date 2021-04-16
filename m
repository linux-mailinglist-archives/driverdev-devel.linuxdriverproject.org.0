Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AF361931
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 07:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC30F40279;
	Fri, 16 Apr 2021 05:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9i4abiQE5oC; Fri, 16 Apr 2021 05:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D8EF40273;
	Fri, 16 Apr 2021 05:20:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3858B1BF373
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 05:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2774160DBD
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 05:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-vv-yEAt-66 for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 05:20:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk [142.44.231.140])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0593F60784
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 05:20:19 +0000 (UTC)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lXGtS-005gO5-MU; Fri, 16 Apr 2021 05:19:50 +0000
Date: Fri, 16 Apr 2021 05:19:50 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401104034.52qaaoea27htkpbh@wittgenstein>
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

On Thu, Apr 01, 2021 at 12:40:34PM +0200, Christian Brauner wrote:
> My suggestion was to look at all the places were we currently open-code
> this in drivers/:
> 
> drivers/android/binder.c:               int fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/char/tpm/tpm_vtpm_proxy.c:      fd = get_unused_fd_flags(O_RDWR);
> drivers/dma-buf/dma-buf.c:      fd = get_unused_fd_flags(flags);
> drivers/dma-buf/sw_sync.c:      int fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/dma-buf/sync_file.c:    int fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpio/gpiolib-cdev.c:    fd = get_unused_fd_flags(O_RDONLY | O_CLOEXEC);
> drivers/gpio/gpiolib-cdev.c:    fd = get_unused_fd_flags(O_RDONLY | O_CLOEXEC);
> drivers/gpio/gpiolib-cdev.c:    fd = get_unused_fd_flags(O_RDONLY | O_CLOEXEC);
> drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:         fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/drm_atomic_uapi.c:      fence_state->fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/drm_lease.c:    fd = get_unused_fd_flags(cl->flags & (O_CLOEXEC | O_NONBLOCK));
> drivers/gpu/drm/drm_syncobj.c:  fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/drm_syncobj.c:  int fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c:           out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:         out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/msm/msm_gem_submit.c:           out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/virtio/virtgpu_ioctl.c:         out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c:                out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/infiniband/core/rdma_core.c:    new_fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/media/mc/mc-request.c:  fd = get_unused_fd_flags(O_CLOEXEC);
> drivers/misc/cxl/api.c: rc = get_unused_fd_flags(flags);
> drivers/scsi/cxlflash/ocxl_hw.c:        rc = get_unused_fd_flags(flags);
> drivers/scsi/cxlflash/ocxl_hw.c:                dev_err(dev, "%s: get_unused_fd_flags failed rc=%d\n",
> drivers/tty/pty.c:      fd = get_unused_fd_flags(flags);
> drivers/vfio/vfio.c:    ret = get_unused_fd_flags(O_CLOEXEC);
> drivers/virt/nitro_enclaves/ne_misc_dev.c:      enclave_fd = get_unused_fd_flags(O_CLOEXEC);
> 
> and see whether all of them can be switched to simply using
> receive_fd(). I did a completely untested rough sketch to illustrate
> what I meant by using binder and devpts Xie seems to have just picked
> those two. But the change is obviously only worth it if all or nearly
> all callers can be switched over without risk of regression.
> It would most likely simplify quite a few codepaths though especially in
> the error paths since we can get rid of put_unused_fd() cleanup.
> 
> But it requires buy in from others obviously.

Opening a file can have non-trivial side effects; reserving a descriptor
can't.  Moreover, if you look at the second hit in your list, you'll see
that we do *NOT* want that combined thing there - fd_install() is
completely irreversible, so we can't do that until we made sure the
reply (struct vtpm_proxy_new_dev) has been successfully copied to
userland.  No, your receive_fd_user() does not cover that.

There's a bunch of other cases like that - the next ones on your list
are drivers/dma-buf/sw_sync.c and drivers/dma-buf/sync_file.c, etc.

So I would consider receive_fd() as an attractive nuisance if it
is ever suggested (and available) for wide use...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
