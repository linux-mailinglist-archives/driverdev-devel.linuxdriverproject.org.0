Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AB2E292E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 05:53:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4EB287804;
	Thu, 24 Oct 2019 03:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRJZIe0r2-a5; Thu, 24 Oct 2019 03:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9168987766;
	Thu, 24 Oct 2019 03:53:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9B541BF909
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 03:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 900568827F
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 03:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xgaDlWmLCWi6 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 03:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13A5188266
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 03:53:05 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F4221FB;
 Wed, 23 Oct 2019 20:53:04 -0700 (PDT)
Received: from [10.162.43.133] (p8cg001049571a15.blr.arm.com [10.162.43.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 33C723F71A; Wed, 23 Oct 2019 20:52:45 -0700 (PDT)
Subject: Re: [PATCH RFC v1 01/12] mm/memory_hotplug: Don't allow to
 online/offline memory blocks with holes
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org
References: <20191022171239.21487-1-david@redhat.com>
 <20191022171239.21487-2-david@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4aa3c72b-8991-9e43-80d7-a906ae79160b@arm.com>
Date: Thu, 24 Oct 2019 09:23:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191022171239.21487-2-david@redhat.com>
Content-Language: en-US
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
 Dan Williams <dan.j.williams@intel.com>, kvm-ppc@vger.kernel.org,
 Qian Cai <cai@lca.pw>, Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 10/22/2019 10:42 PM, David Hildenbrand wrote:
> Our onlining/offlining code is unnecessarily complicated. Only memory
> blocks added during boot can have holes. Hotplugged memory never has
> holes. That memory is already online.

Why hot plugged memory at runtime cannot have holes (e.g a semi bad DIMM).
Currently, do we just abort adding that memory block if there are holes ?

> 
> When we stop allowing to offline memory blocks with holes, we implicitly
> stop to online memory blocks with holes.

Reducing hotplug support for memory blocks with holes just to simplify
the code. Is it worth ?

> 
> This allows to simplify the code. For example, we no longer have to
> worry about marking pages that fall into memory holes PG_reserved when
> onlining memory. We can stop setting pages PG_reserved.

Could not there be any other way of tracking these holes if not the page
reserved bit. In the memory section itself and corresponding struct pages
just remained poisoned ? Just wondering, might be all wrong here.

> 
> Offlining memory blocks added during boot is usually not guranteed to work
> either way. So stopping to do that (if anybody really used and tested

That guarantee does not exist right now because how boot memory could have
been used after boot not from a limitation of the memory hot remove itself.

> this over the years) should not really hurt. For the use case of
> offlining memory to unplug DIMMs, we should see no change. (holes on
> DIMMs would be weird)

Holes on DIMM could be due to HW errors affecting only parts of it. By not
allowing such DIMM's hot add and remove, we are definitely reducing the
scope of overall hotplug functionality. Is code simplification in itself
is worth this reduction in functionality ?

> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/memory_hotplug.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 561371ead39a..7210f4375279 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -1447,10 +1447,19 @@ static void node_states_clear_node(int node, struct memory_notify *arg)
>  		node_clear_state(node, N_MEMORY);
>  }
>  
> +static int count_system_ram_pages_cb(unsigned long start_pfn,
> +				     unsigned long nr_pages, void *data)
> +{
> +	unsigned long *nr_system_ram_pages = data;
> +
> +	*nr_system_ram_pages += nr_pages;
> +	return 0;
> +}
> +
>  static int __ref __offline_pages(unsigned long start_pfn,
>  		  unsigned long end_pfn)
>  {
> -	unsigned long pfn, nr_pages;
> +	unsigned long pfn, nr_pages = 0;
>  	unsigned long offlined_pages = 0;
>  	int ret, node, nr_isolate_pageblock;
>  	unsigned long flags;
> @@ -1461,6 +1470,20 @@ static int __ref __offline_pages(unsigned long start_pfn,
>  
>  	mem_hotplug_begin();
>  
> +	/*
> +	 * We don't allow to offline memory blocks that contain holes
> +	 * and consecuently don't allow to online memory blocks that contain
> +	 * holes. This allows to simplify the code quite a lot and we don't
> +	 * have to mess with PG_reserved pages for memory holes.
> +	 */
> +	walk_system_ram_range(start_pfn, end_pfn - start_pfn, &nr_pages,
> +			      count_system_ram_pages_cb);
> +	if (nr_pages != end_pfn - start_pfn) {
> +		ret = -EINVAL;
> +		reason = "memory holes";
> +		goto failed_removal;
> +	}
> +
>  	/* This makes hotplug much easier...and readable.
>  	   we assume this for now. .*/
>  	if (!test_pages_in_a_zone(start_pfn, end_pfn, &valid_start,
> @@ -1472,7 +1495,6 @@ static int __ref __offline_pages(unsigned long start_pfn,
>  
>  	zone = page_zone(pfn_to_page(valid_start));
>  	node = zone_to_nid(zone);
> -	nr_pages = end_pfn - start_pfn;
>  
>  	/* set above range as isolated */
>  	ret = start_isolate_page_range(start_pfn, end_pfn,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
