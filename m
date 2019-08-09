Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1A7879C1
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 14:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4568C22803;
	Fri,  9 Aug 2019 12:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cx3-x8BMTFc1; Fri,  9 Aug 2019 12:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A1279203B7;
	Fri,  9 Aug 2019 12:20:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 539F11BF2CF
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 12:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5027F86A22
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 12:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wX2REd0EBWWm for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 12:20:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1257F863C5
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 12:20:49 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 464kpy5K69z9sBF;
 Fri,  9 Aug 2019 22:20:42 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: John Hubbard <jhubbard@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3 38/41] powerpc: convert put_page() to put_user_page*()
In-Reply-To: <248c9ab2-93cc-6d8b-606d-d85b83e791e5@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <20190807013340.9706-39-jhubbard@nvidia.com>
 <87k1botdpx.fsf@concordia.ellerman.id.au>
 <248c9ab2-93cc-6d8b-606d-d85b83e791e5@nvidia.com>
Date: Fri, 09 Aug 2019 22:20:40 +1000
Message-ID: <875zn6ttrb.fsf@concordia.ellerman.id.au>
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?utf-8?B?SsOpcsO0?= =?utf-8?B?bWU=?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

John Hubbard <jhubbard@nvidia.com> writes:
> On 8/7/19 10:42 PM, Michael Ellerman wrote:
>> Hi John,
>> 
>> john.hubbard@gmail.com writes:
>>> diff --git a/arch/powerpc/mm/book3s64/iommu_api.c b/arch/powerpc/mm/book3s64/iommu_api.c
>>> index b056cae3388b..e126193ba295 100644
>>> --- a/arch/powerpc/mm/book3s64/iommu_api.c
>>> +++ b/arch/powerpc/mm/book3s64/iommu_api.c
>>> @@ -203,6 +202,7 @@ static void mm_iommu_unpin(struct mm_iommu_table_group_mem_t *mem)
>>>  {
>>>  	long i;
>>>  	struct page *page = NULL;
>>> +	bool dirty = false;
>> 
>> I don't think you need that initialisation do you?
>> 
>
> Nope, it can go. Fixed locally, thanks.

Thanks.

> Did you get a chance to look at enough of the other bits to feel comfortable 
> with the patch, overall?

Mostly :) It's not really my area, but all the conversions looked
correct to me as best as I could tell.

So I'm fine for it to go in as part of the series:

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
