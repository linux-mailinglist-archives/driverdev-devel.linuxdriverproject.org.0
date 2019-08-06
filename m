Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF283A61
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7933F220DD;
	Tue,  6 Aug 2019 20:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHGGOZD8MWUR; Tue,  6 Aug 2019 20:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C090722098;
	Tue,  6 Aug 2019 20:39:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF00A1BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D620181F48
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqP32tPb75Oo for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:39:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6A2A81EAA
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 20:39:17 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d49e5760000>; Tue, 06 Aug 2019 13:39:18 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 06 Aug 2019 13:39:17 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 06 Aug 2019 13:39:17 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 6 Aug
 2019 20:39:16 +0000
Subject: Re: [PATCH v2 01/34] mm/gup: add make_dirty arg to
 put_user_pages_dirty_lock()
To: Ira Weiny <ira.weiny@intel.com>, <john.hubbard@gmail.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
 <20190804224915.28669-2-jhubbard@nvidia.com>
 <20190806173945.GA4748@iweiny-DESK2.sc.intel.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <0e232d84-e6ea-159e-91d4-77e938377161@nvidia.com>
Date: Tue, 6 Aug 2019 13:39:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806173945.GA4748@iweiny-DESK2.sc.intel.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565123958; bh=kP7gTuC3ZdPRsl2ZM8hKtRsMZoJPCXuUqs/7ZYFYlas=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=De7r6lQUtbn+GTEsMqljgVKTlQIrCw8ZESuRqc7w4LEYPASOCDyQM6KfNGQouIjYR
 fh0BckBJVbNT9AbXMQb66ZhMKSleBMpCp4Q67sEppT12m031guaO+mSQiN77Vubrty
 dLwAVLGyjRDyH8bKz/ie59UuEUjWXDBsQB9IGYcfiHyqrDkJ8dhLAwUMAPjRDqyeiY
 KJw8zEX2A8/HIUmoazoyVwItiLDzuGpYh0geDqgdodA5dwJzt0S2azlo+PhdmfDHXO
 6GhmRkzx66GKpfVpxeAm8ztIGHTRgebRJf3i5iJHgoMtdv7J6YmmRpepQCyIfl7KA0
 CyUb7h3ZsvM+w==
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
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/6/19 10:39 AM, Ira Weiny wrote:
> On Sun, Aug 04, 2019 at 03:48:42PM -0700, john.hubbard@gmail.com wrote:
>> From: John Hubbard <jhubbard@nvidia.com>
...
>> -
>>  /**
>> - * put_user_pages_dirty() - release and dirty an array of gup-pinned pages
>> - * @pages:  array of pages to be marked dirty and released.
>> + * put_user_pages_dirty_lock() - release and optionally dirty gup-pinned pages
>> + * @pages:  array of pages to be maybe marked dirty, and definitely released.
> 
> Better would be.
> 
> @pages:  array of pages to be put

OK, I'll change to that wording.

> 
>>   * @npages: number of pages in the @pages array.
>> + * @make_dirty: whether to mark the pages dirty
>>   *
>>   * "gup-pinned page" refers to a page that has had one of the get_user_pages()
>>   * variants called on that page.
>>   *
>>   * For each page in the @pages array, make that page (or its head page, if a
>> - * compound page) dirty, if it was previously listed as clean. Then, release
>> - * the page using put_user_page().
>> + * compound page) dirty, if @make_dirty is true, and if the page was previously
>> + * listed as clean. In any case, releases all pages using put_user_page(),
>> + * possibly via put_user_pages(), for the non-dirty case.
> 
> I don't think users of this interface need this level of detail.  I think
> something like.
> 
>  * For each page in the @pages array, release the page.  If @make_dirty is
>  * true, mark the page dirty prior to release.

Yes, it is too wordy, I'll change to that.

> 
...
>> -void put_user_pages_dirty_lock(struct page **pages, unsigned long npages)
>> -{
>> -	__put_user_pages_dirty(pages, npages, set_page_dirty_lock);
>> +	/*
>> +	 * TODO: this can be optimized for huge pages: if a series of pages is
>> +	 * physically contiguous and part of the same compound page, then a
>> +	 * single operation to the head page should suffice.
>> +	 */
> 
> I think this comment belongs to the for loop below...  or just something about
> how to make this and put_user_pages() more efficient.  It is odd, that this is
> the same comment as in put_user_pages()...

Actually I think I'll just delete the comment entirely, it's just noise really.

> 
> The code is good.  So... Other than the comments.
> 
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>


Thanks for the review!


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
