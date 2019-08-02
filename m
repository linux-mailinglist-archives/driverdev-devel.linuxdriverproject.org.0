Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24185802C1
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 00:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36F28860FF;
	Fri,  2 Aug 2019 22:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33HmfBX4WLQA; Fri,  2 Aug 2019 22:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D327C85313;
	Fri,  2 Aug 2019 22:32:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B55091BF831
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA69686370
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3jO6LlPaWWav for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 22:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2855F8633B
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 22:32:38 +0000 (UTC)
Received: from tleilax.poochiereds.net (cpe-71-70-156-158.nc.res.rr.com
 [71.70.156.158])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58F57206A3;
 Fri,  2 Aug 2019 22:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564785158;
 bh=z6ytUlp+CIECyVYgzsmKAgNAlD3y+8CHq71PuCQ0D+c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=cpjIBy8JqGDmfo2YvJ1zHX2H3F5SzV7XyBEUvKOoDGfZiHGtVeJHlsiNF8f/o/lw/
 1IriX/50tm1jxxFU6BHxnU7AmYr31cK1qfEIW7FiUI67JvLd42gEz50jymZEZTSESa
 2e28o/zwwAXm5Iq/SkAmipJbFc8z+f7/iU9PnXtA=
Message-ID: <2f0d5993e9731808b73b0018f5fc4b3335fc6373.camel@kernel.org>
Subject: Re: [PATCH 03/34] net/ceph: convert put_page() to put_user_page*()
From: Jeff Layton <jlayton@kernel.org>
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 02 Aug 2019 18:32:33 -0400
In-Reply-To: <20190802022005.5117-4-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-4-jhubbard@nvidia.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
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
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 Sage Weil <sage@redhat.com>, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 Ilya Dryomov <idryomov@gmail.com>, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-08-01 at 19:19 -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Ilya Dryomov <idryomov@gmail.com>
> Cc: Sage Weil <sage@redhat.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: ceph-devel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  net/ceph/pagevec.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/net/ceph/pagevec.c b/net/ceph/pagevec.c
> index 64305e7056a1..c88fff2ab9bd 100644
> --- a/net/ceph/pagevec.c
> +++ b/net/ceph/pagevec.c
> @@ -12,13 +12,7 @@
>  
>  void ceph_put_page_vector(struct page **pages, int num_pages, bool dirty)
>  {
> -	int i;
> -
> -	for (i = 0; i < num_pages; i++) {
> -		if (dirty)
> -			set_page_dirty_lock(pages[i]);
> -		put_page(pages[i]);
> -	}
> +	put_user_pages_dirty_lock(pages, num_pages, dirty);
>  	kvfree(pages);
>  }
>  EXPORT_SYMBOL(ceph_put_page_vector);

This patch looks sane enough. Assuming that the earlier patches are OK:

Acked-by: Jeff Layton <jlayton@kernel.org>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
