Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E147F70E
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 14:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C040F86ACF;
	Fri,  2 Aug 2019 12:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTwtANV58OF4; Fri,  2 Aug 2019 12:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73D2386A94;
	Fri,  2 Aug 2019 12:41:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B58F1BF378
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 12:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 311A788558
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 12:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XrzLwQqQbcV for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 12:41:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59F6988550
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 12:41:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 20E6FAF94;
 Fri,  2 Aug 2019 12:41:48 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id F40A51E3F4D; Fri,  2 Aug 2019 14:41:46 +0200 (CEST)
Date: Fri, 2 Aug 2019 14:41:46 +0200
From: Jan Kara <jack@suse.cz>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190802124146.GL25064@quack2.suse.cz>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802091244.GD6461@dhcp22.suse.cz>
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, john.hubbard@gmail.com,
 linux-block@vger.kernel.org,
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

On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
> [...]
> > 2) Convert all of the call sites for get_user_pages*(), to
> > invoke put_user_page*(), instead of put_page(). This involves dozens of
> > call sites, and will take some time.
> 
> How do we make sure this is the case and it will remain the case in the
> future? There must be some automagic to enforce/check that. It is simply
> not manageable to do it every now and then because then 3) will simply
> be never safe.
> 
> Have you considered coccinele or some other scripted way to do the
> transition? I have no idea how to deal with future changes that would
> break the balance though.

Yeah, that's why I've been suggesting at LSF/MM that we may need to create
a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
references got converted by using this wrapper instead of gup. The
counterpart would then be more logically named as unpin_page() or whatever
instead of put_user_page().  Sure this is not completely foolproof (you can
create new callsite using vaddr_pin_pages() and then just drop refs using
put_page()) but I suppose it would be a high enough barrier for missed
conversions... Thoughts?

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
