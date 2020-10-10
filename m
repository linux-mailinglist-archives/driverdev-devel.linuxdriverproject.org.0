Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD38B289D10
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 03:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1F1520442;
	Sat, 10 Oct 2020 01:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0B3mcsd25rSx; Sat, 10 Oct 2020 01:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7957A203DD;
	Sat, 10 Oct 2020 01:30:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74C6E1BF34A
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 01:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67570203DD
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 01:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UhX-rqJhX-J2 for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 01:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DF01D203E8
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 01:30:39 +0000 (UTC)
Received: from sol.localdomain (172-10-235-113.lightspeed.sntcca.sbcglobal.net
 [172.10.235.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E006206D9;
 Sat, 10 Oct 2020 01:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602293439;
 bh=sHFyDh52gnsvc+uI8yhUC5uDYbYkQCvra+rDiRMmAvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kwaFsg+FwkcbT1hA6vX2rbzC7SEHg0ckV7q6+TfKUuTYp7lijGzsxhx1D9MfT9qZg
 puzd9VwNUhNC7pSZTswv9TmxeVvsyOKe33XMZMPqVG5rfdvIuh+YhVfWI5Z4mrkh0S
 V8+sp7izCEY2Jms4cmTCzh86mPIYz7uaZ6k3dzLQ=
Date: Fri, 9 Oct 2020 18:30:36 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH RFC PKS/PMEM 22/58] fs/f2fs: Utilize new kmap_thread()
Message-ID: <20201010013036.GD1122@sol.localdomain>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-23-ira.weiny@intel.com>
 <20201009213434.GA839@sol.localdomain>
 <20201010003954.GW20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010003954.GW20115@casper.infradead.org>
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
Cc: linux-aio@kvack.org, linux-efi@vger.kernel.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 linux-mmc@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 target-devel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 Ingo Molnar <mingo@redhat.com>, intel-wired-lan@lists.osuosl.org,
 kexec@lists.infradead.org, xen-devel@lists.xenproject.org,
 linux-ext4@vger.kernel.org, bpf@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fenghua Yu <fenghua.yu@intel.com>,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-um@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 io-uring@vger.kernel.org, linux-cachefs@redhat.com, linux-nfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 01:39:54AM +0100, Matthew Wilcox wrote:
> On Fri, Oct 09, 2020 at 02:34:34PM -0700, Eric Biggers wrote:
> > On Fri, Oct 09, 2020 at 12:49:57PM -0700, ira.weiny@intel.com wrote:
> > > The kmap() calls in this FS are localized to a single thread.  To avoid
> > > the over head of global PKRS updates use the new kmap_thread() call.
> > >
> > > @@ -2410,12 +2410,12 @@ static inline struct page *f2fs_pagecache_get_page(
> > >  
> > >  static inline void f2fs_copy_page(struct page *src, struct page *dst)
> > >  {
> > > -	char *src_kaddr = kmap(src);
> > > -	char *dst_kaddr = kmap(dst);
> > > +	char *src_kaddr = kmap_thread(src);
> > > +	char *dst_kaddr = kmap_thread(dst);
> > >  
> > >  	memcpy(dst_kaddr, src_kaddr, PAGE_SIZE);
> > > -	kunmap(dst);
> > > -	kunmap(src);
> > > +	kunmap_thread(dst);
> > > +	kunmap_thread(src);
> > >  }
> > 
> > Wouldn't it make more sense to switch cases like this to kmap_atomic()?
> > The pages are only mapped to do a memcpy(), then they're immediately unmapped.
> 
> Maybe you missed the earlier thread from Thomas trying to do something
> similar for rather different reasons ...
> 
> https://lore.kernel.org/lkml/20200919091751.011116649@linutronix.de/

I did miss it.  I'm not subscribed to any of the mailing lists it was sent to.

Anyway, it shouldn't matter.  Patchsets should be standalone, and not require
reading random prior threads on linux-kernel to understand.

And I still don't really understand.  After this patchset, there is still code
nearly identical to the above (doing a temporary mapping just for a memcpy) that
would still be using kmap_atomic().  Is the idea that later, such code will be
converted to use kmap_thread() instead?  If not, why use one over the other?

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
