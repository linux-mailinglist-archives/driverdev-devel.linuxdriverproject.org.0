Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A3C36263D
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 19:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61BAD60E46;
	Fri, 16 Apr 2021 17:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iW99-9kWgmws; Fri, 16 Apr 2021 17:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91A2760BAE;
	Fri, 16 Apr 2021 17:00:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1CC1BF297
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 17:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0751984B59
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 17:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwDd7G-EQ88n for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 17:00:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk
 [IPv6:2607:5300:60:148a::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4096684584
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 17:00:25 +0000 (UTC)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lXRpD-005oHE-Uz; Fri, 16 Apr 2021 17:00:12 +0000
Date: Fri, 16 Apr 2021 17:00:11 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <YHnCm0Zzi+envOGB@zeniv-ca.linux.org.uk>
References: <YGWYZYbBzglUCxB2@kroah.com>
 <20210401104034.52qaaoea27htkpbh@wittgenstein>
 <YHkedhnn1wdVFTV3@zeniv-ca.linux.org.uk>
 <YHkmxCyJ8yekgGKl@zeniv-ca.linux.org.uk>
 <20210416134252.v3zfjp36tpk33tqz@wittgenstein>
 <YHmanzAMdeCtZUjy@zeniv-ca.linux.org.uk>
 <20210416151310.nqkxfwocm32lnqfq@wittgenstein>
 <YHmu3/Cw4bUnTSH9@zeniv-ca.linux.org.uk>
 <20210416155815.ayjpnx37dv3a4jos@wittgenstein>
 <20210416160038.ojbhqf73dkrl4dk6@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416160038.ojbhqf73dkrl4dk6@wittgenstein>
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

On Fri, Apr 16, 2021 at 06:00:38PM +0200, Christian Brauner wrote:

> (dma_buf_fd() seems like another good candidate. But again, I don't have
> any plans to shove this down anyone's throat.)

Sure, there are candidates for such a helper.  Just as there are legitimate
users of anon_inode_getfd().

However, it is *NOT* something we can use as a vehicle for some hooks (pardon
the obscenity); it won't be consistently used in all cases - it simply is not
feasible for many of the fd_install() users.

Incidentally, looking at the user of receive_fd_user(), I would say that it
would be easier to follow in this form:
	case VDUSE_IOTLB_GET_ENTRY: {
		struct vduse_iotlb_entry entry;
		struct vhost_iotlb_map *map;
		struct vduse_iova_domain *domain = dev->domain;
		struct file *f = NULL;

		if (copy_from_user(&entry, argp, sizeof(entry)))
			return -EFAULT;
		entry.fd = get_unused_fd_flags(perm_to_file_flags(entry.perm));
		if (entry.fd < 0)
			return entry.fd;
		spin_lock(&domain->iotlb_lock);
		map = vhost_iotlb_itree_first(domain->iotlb,
					      entry.start, entry.start + 1);
		if (map) {
			struct vdpa_map_file *map_file = map->opaque;

			f = get_file(map_file->file);
			entry.offset = map_file->offset;
			entry.start = map->start;
			entry.last = map->last;
			entry.perm = map->perm;
		}
		spin_unlock(&domain->iotlb_lock);
		if (!f) {
			put_unused_fd(entry.fd);
			return -EINVAL;
		}
		if (copy_to_user(argp, &entry, sizeof(entry))) {
			put_unused_fd(entry.fd);
			fput(f);
			return -EFAULT;
		}
		// point of no return
		fd_install(entry.fd, f);
		return 0;
	}
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
