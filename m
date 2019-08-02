Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D57FC22
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 16:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A2A088638;
	Fri,  2 Aug 2019 14:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6T2Z166Zn7r; Fri,  2 Aug 2019 14:24:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1AED885AD;
	Fri,  2 Aug 2019 14:24:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 562971BF343
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 14:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 527BF885C3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 14:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UvlLBij9LZjR for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:24:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B34F9885AD
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 14:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jvuzp+6FCROkRR+waxcd/xSBD2jk0LdlEwwlmE/QRVo=; b=G2sxycFAx+YSXemaZWFj5rBoO
 L5W+suRd87Fzi03i9UbUkz+K/l4OLA7u4vdCzpFKd8kbKkpNT5POJKTjl3Y9NgF+IfuEQiw+Ya9sZ
 Uz98GhfWAglGYt98RBvfBnca/15T9G/n1hhy4hthNjlrIrfsKUlfX1Lr9suoRAYQ/pICfFJo13kmR
 L+hbvfVY5BZygvFEilaamnzYAdT/2P4dTNkPPWEPWi3WZyJpk4mE3pZYxvO4hCe5QB9xougEB5c3g
 IV0U5HMFOk+fqAqk6ui4QqQV5LiDqQxBtFq8kG3bamWa6AZ5dtGBvDFf6uxZiiuQmelcNvOe6qNsg
 wQg03COuw==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1htYU7-0007La-VU; Fri, 02 Aug 2019 14:24:43 +0000
Date: Fri, 2 Aug 2019 07:24:43 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190802142443.GB5597@bombadil.infradead.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802124146.GL25064@quack2.suse.cz>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
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

On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
> On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> > On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
> > [...]
> > > 2) Convert all of the call sites for get_user_pages*(), to
> > > invoke put_user_page*(), instead of put_page(). This involves dozens of
> > > call sites, and will take some time.
> > 
> > How do we make sure this is the case and it will remain the case in the
> > future? There must be some automagic to enforce/check that. It is simply
> > not manageable to do it every now and then because then 3) will simply
> > be never safe.
> > 
> > Have you considered coccinele or some other scripted way to do the
> > transition? I have no idea how to deal with future changes that would
> > break the balance though.
> 
> Yeah, that's why I've been suggesting at LSF/MM that we may need to create
> a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
> references got converted by using this wrapper instead of gup. The
> counterpart would then be more logically named as unpin_page() or whatever
> instead of put_user_page().  Sure this is not completely foolproof (you can
> create new callsite using vaddr_pin_pages() and then just drop refs using
> put_page()) but I suppose it would be a high enough barrier for missed
> conversions... Thoughts?

I think the API we really need is get_user_bvec() / put_user_bvec(),
and I know Christoph has been putting some work into that.  That avoids
doing refcount operations on hundreds of pages if the page in question is
a huge page.  Once people are switched over to that, they won't be tempted
to manually call put_page() on the individual constituent pages of a bvec.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
