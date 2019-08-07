Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A005B847E1
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 10:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 367932267B;
	Wed,  7 Aug 2019 08:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xOfEMdX2im-3; Wed,  7 Aug 2019 08:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5A1722643;
	Wed,  7 Aug 2019 08:46:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BA181BF488
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 08:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 155B886E42
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 08:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1bVwXDni-VNA for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 08:46:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12CE386E41
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 08:46:53 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8E81EAD29;
 Wed,  7 Aug 2019 08:46:50 +0000 (UTC)
Date: Wed, 7 Aug 2019 10:46:49 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190807084649.GQ11812@dhcp22.suse.cz>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807083726.GA14658@quack2.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-fbdev@vger.kernel.org, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 amd-gfx@lists.freedesktop.org, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 john.hubbard@gmail.com, linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed 07-08-19 10:37:26, Jan Kara wrote:
> On Fri 02-08-19 12:14:09, John Hubbard wrote:
> > On 8/2/19 7:52 AM, Jan Kara wrote:
> > > On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
> > > > On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
> > > > > On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> > > > > > On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
> > > > > > [...]
> > > > > > > 2) Convert all of the call sites for get_user_pages*(), to
> > > > > > > invoke put_user_page*(), instead of put_page(). This involves dozens of
> > > > > > > call sites, and will take some time.
> > > > > > 
> > > > > > How do we make sure this is the case and it will remain the case in the
> > > > > > future? There must be some automagic to enforce/check that. It is simply
> > > > > > not manageable to do it every now and then because then 3) will simply
> > > > > > be never safe.
> > > > > > 
> > > > > > Have you considered coccinele or some other scripted way to do the
> > > > > > transition? I have no idea how to deal with future changes that would
> > > > > > break the balance though.
> > 
> > Hi Michal,
> > 
> > Yes, I've thought about it, and coccinelle falls a bit short (it's not smart
> > enough to know which put_page()'s to convert). However, there is a debug
> > option planned: a yet-to-be-posted commit [1] uses struct page extensions
> > (obviously protected by CONFIG_DEBUG_GET_USER_PAGES_REFERENCES) to add
> > a redundant counter. That allows:
> > 
> > void __put_page(struct page *page)
> > {
> > 	...
> > 	/* Someone called put_page() instead of put_user_page() */
> > 	WARN_ON_ONCE(atomic_read(&page_ext->pin_count) > 0);
> > 
> > > > > 
> > > > > Yeah, that's why I've been suggesting at LSF/MM that we may need to create
> > > > > a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
> > > > > references got converted by using this wrapper instead of gup. The
> > > > > counterpart would then be more logically named as unpin_page() or whatever
> > > > > instead of put_user_page().  Sure this is not completely foolproof (you can
> > > > > create new callsite using vaddr_pin_pages() and then just drop refs using
> > > > > put_page()) but I suppose it would be a high enough barrier for missed
> > > > > conversions... Thoughts?
> > 
> > The debug option above is still a bit simplistic in its implementation
> > (and maybe not taking full advantage of the data it has), but I think
> > it's preferable, because it monitors the "core" and WARNs.
> > 
> > Instead of the wrapper, I'm thinking: documentation and the passage of
> > time, plus the debug option (perhaps enhanced--probably once I post it
> > someone will notice opportunities), yes?
> 
> So I think your debug option and my suggested renaming serve a bit
> different purposes (and thus both make sense). If you do the renaming, you
> can just grep to see unconverted sites. Also when someone merges new GUP
> user (unaware of the new rules) while you switch GUP to use pins instead of
> ordinary references, you'll get compilation error in case of renaming
> instead of hard to debug refcount leak without the renaming. And such
> conflict is almost bound to happen given the size of GUP patch set... Also
> the renaming serves against the "coding inertia" - i.e., GUP is around for
> ages so people just use it without checking any documentation or comments.
> After switching how GUP works, what used to be correct isn't anymore so
> renaming the function serves as a warning that something has really
> changed.

Fully agreed!

> Your refcount debug patches are good to catch bugs in the conversions done
> but that requires you to be able to excercise the code path in the first
> place which may require particular HW or so, and you also have to enable
> the debug option which means you already aim at verifying the GUP
> references are treated properly.
> 
> 								Honza
> 
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
