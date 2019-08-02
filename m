Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 252AA800C2
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:15:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76BDE87E81;
	Fri,  2 Aug 2019 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joicww-ciogb; Fri,  2 Aug 2019 19:15:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D5FD87846;
	Fri,  2 Aug 2019 19:15:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A98631BF2A3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A21F787C83
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KHhoPOU0ceZU for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:15:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 08E7287846
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 19:15:48 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d448be40000>; Fri, 02 Aug 2019 12:15:49 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 12:15:47 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 02 Aug 2019 12:15:47 -0700
Received: from [10.2.171.217] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 19:15:46 +0000
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
To: Jan Kara <jack@suse.cz>, Matthew Wilcox <willy@infradead.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
Date: Fri, 2 Aug 2019 12:14:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802145227.GQ25064@quack2.suse.cz>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564773349; bh=Ykr8zuBl8qD6qRk+6CuJmCvWs6y/6SnwmHdkeYBJDDI=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=dIZIhWEtL/6DtZGzemgJsDJsVLyADAMaN//lJ1grJLFkCmFOkzTj/rs0FvLfEl2Hi
 oGzaotnI6n/OU/9zhZLMfdrrUHRJGxX7AYLyG2WZvgX4Lg54c2pU4PjbkWrNUgOXfI
 uv8TTyv/DF3hYu24iq7PnVxsiQftZ7SHYqoH7NBkU536G72MURkyt2TZuU0HsMwqx1
 3Glf+aCLRqZtZbMei0ZGioStTFz2Vyclh08xm02uGWhgBmLM1you/SeWFTun4O+4QV
 968ZBWSTwuYIseJKnsPYve06ID75kz8N2rJE61L933vzLxD+Ru7sU6sLx/7LpcpGPg
 O3OFkZJZEBCjA==
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
 intel-gfx@lists.freedesktop.org, john.hubbard@gmail.com,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/2/19 7:52 AM, Jan Kara wrote:
> On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
>> On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
>>> On Fri 02-08-19 11:12:44, Michal Hocko wrote:
>>>> On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
>>>> [...]
>>>>> 2) Convert all of the call sites for get_user_pages*(), to
>>>>> invoke put_user_page*(), instead of put_page(). This involves dozens of
>>>>> call sites, and will take some time.
>>>>
>>>> How do we make sure this is the case and it will remain the case in the
>>>> future? There must be some automagic to enforce/check that. It is simply
>>>> not manageable to do it every now and then because then 3) will simply
>>>> be never safe.
>>>>
>>>> Have you considered coccinele or some other scripted way to do the
>>>> transition? I have no idea how to deal with future changes that would
>>>> break the balance though.

Hi Michal,

Yes, I've thought about it, and coccinelle falls a bit short (it's not smart
enough to know which put_page()'s to convert). However, there is a debug
option planned: a yet-to-be-posted commit [1] uses struct page extensions
(obviously protected by CONFIG_DEBUG_GET_USER_PAGES_REFERENCES) to add
a redundant counter. That allows:

void __put_page(struct page *page)
{
	...
	/* Someone called put_page() instead of put_user_page() */
	WARN_ON_ONCE(atomic_read(&page_ext->pin_count) > 0);

>>>
>>> Yeah, that's why I've been suggesting at LSF/MM that we may need to create
>>> a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
>>> references got converted by using this wrapper instead of gup. The
>>> counterpart would then be more logically named as unpin_page() or whatever
>>> instead of put_user_page().  Sure this is not completely foolproof (you can
>>> create new callsite using vaddr_pin_pages() and then just drop refs using
>>> put_page()) but I suppose it would be a high enough barrier for missed
>>> conversions... Thoughts?

The debug option above is still a bit simplistic in its implementation (and maybe
not taking full advantage of the data it has), but I think it's preferable,
because it monitors the "core" and WARNs.

Instead of the wrapper, I'm thinking: documentation and the passage of time,
plus the debug option (perhaps enhanced--probably once I post it someone will
notice opportunities), yes?

>>
>> I think the API we really need is get_user_bvec() / put_user_bvec(),
>> and I know Christoph has been putting some work into that.  That avoids
>> doing refcount operations on hundreds of pages if the page in question is
>> a huge page.  Once people are switched over to that, they won't be tempted
>> to manually call put_page() on the individual constituent pages of a bvec.
> 
> Well, get_user_bvec() is certainly a good API for one class of users but
> just looking at the above series, you'll see there are *many* places that
> just don't work with bvecs at all and you need something for those.
> 

Yes, there are quite a few places that don't involve _bvec, as we can see
right here. So we need something. Andrew asked for a debug option some time
ago, and several people (Dave Hansen, Dan Williams, Jerome) had the idea
of vmap-ing gup pages separately, so you can definitely tell where each
page came from. I'm hoping not to have to go to that level of complexity
though.


[1] "mm/gup: debug tracking of get_user_pages() references" :
https://github.com/johnhubbard/linux/commit/21ff7d6161ec2a14d3f9d17c98abb00cc969d4d6

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
