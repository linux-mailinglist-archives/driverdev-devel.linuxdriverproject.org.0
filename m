Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A86E1318
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 09:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3FD762040C;
	Wed, 23 Oct 2019 07:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g85FOvj-hQmF; Wed, 23 Oct 2019 07:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4D39C204CF;
	Wed, 23 Oct 2019 07:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0871BF311
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 07:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 246408760E
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 07:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 58zyc7ZXdmBA for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 07:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 86D7D8760D
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 07:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571815607;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kqj7mWapMXwFuuq2/mW1H9c11PZgA0AV8N9N9x1ibmk=;
 b=ckoX6bYqXETU7YMu96OyHRl5LFunGPlocmkxCnu+/rZ5j6/0kUk1ai8bTU0SDVJoYyXH/0
 lMcPa1zdUQgAY0Rvbc0iomY2osK73+O42MtVA06sIjjPvd0Dg3jDfuZ8pEWyTNUtp9DhHs
 oAiXnpaRD/Mcx9VYg/2ZqOJvsBOGWQQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-6siTvHv7N3OCx9U1X4BmBg-1; Wed, 23 Oct 2019 03:26:45 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CA4580183D;
 Wed, 23 Oct 2019 07:26:39 +0000 (UTC)
Received: from [10.36.117.79] (ovpn-117-79.ams2.redhat.com [10.36.117.79])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2089C5C219;
 Wed, 23 Oct 2019 07:26:17 +0000 (UTC)
Subject: Re: [PATCH RFC v1 00/12] mm: Don't mark hotplugged pages PG_reserved
 (including ZONE_DEVICE)
To: Dan Williams <dan.j.williams@intel.com>
References: <20191022171239.21487-1-david@redhat.com>
 <CAPcyv4gJ+2he2E-6D0QZvkFWvRM9Fsvn9cAoPZbcU4zvsDHcEQ@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <acf86afd-a45c-5d83-daff-3bfb840d48a7@redhat.com>
Date: Wed, 23 Oct 2019 09:26:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAPcyv4gJ+2he2E-6D0QZvkFWvRM9Fsvn9cAoPZbcU4zvsDHcEQ@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 6siTvHv7N3OCx9U1X4BmBg-1
X-Mimecast-Spam-Score: 0
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-hyperv@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 KVM list <kvm@vger.kernel.org>, Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Linux MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, X86 ML <x86@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
 Sasha Levin <sashal@kernel.org>, Juergen Gross <jgross@suse.com>,
 kvm-ppc@vger.kernel.org, Qian Cai <cai@lca.pw>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22.10.19 23:54, Dan Williams wrote:
> Hi David,
> 
> Thanks for tackling this!

Thanks for having a look :)

[...]


>> I am probably a little bit too careful (but I don't want to break things).
>> In most places (besides KVM and vfio that are nuts), the
>> pfn_to_online_page() check could most probably be avoided by a
>> is_zone_device_page() check. However, I usually get suspicious when I see
>> a pfn_valid() check (especially after I learned that people mmap parts of
>> /dev/mem into user space, including memory without memmaps. Also, people
>> could memmap offline memory blocks this way :/). As long as this does not
>> hurt performance, I think we should rather do it the clean way.
> 
> I'm concerned about using is_zone_device_page() in places that are not
> known to already have a reference to the page. Here's an audit of
> current usages, and the ones I think need to cleaned up. The "unsafe"
> ones do not appear to have any protections against the device page
> being removed (get_dev_pagemap()). Yes, some of these were added by
> me. The "unsafe? HMM" ones need HMM eyes because HMM leaks device
> pages into anonymous memory paths and I'm not up to speed on how it
> guarantees 'struct page' validity vs device shutdown without using
> get_dev_pagemap().
> 
> smaps_pmd_entry(): unsafe
> 
> put_devmap_managed_page(): safe, page reference is held
> 
> is_device_private_page(): safe? gpu driver manages private page lifetime
> 
> is_pci_p2pdma_page(): safe, page reference is held
> 
> uncharge_page(): unsafe? HMM
> 
> add_to_kill(): safe, protected by get_dev_pagemap() and dax_lock_page()
> 
> soft_offline_page(): unsafe
> 
> remove_migration_pte(): unsafe? HMM
> 
> move_to_new_page(): unsafe? HMM
> 
> migrate_vma_pages() and helpers: unsafe? HMM
> 
> try_to_unmap_one(): unsafe? HMM
> 
> __put_page(): safe
> 
> release_pages(): safe
> 
> I'm hoping all the HMM ones can be converted to
> is_device_private_page() directlly and have that routine grow a nice
> comment about how it knows it can always safely de-reference its @page
> argument.
> 
> For the rest I'd like to propose that we add a facility to determine
> ZONE_DEVICE by pfn rather than page. The most straightforward why I
> can think of would be to just add another bitmap to mem_section_usage
> to indicate if a subsection is ZONE_DEVICE or not.

(it's a somewhat unrelated bigger discussion, but we can start discussing it in this thread)

I dislike this for three reasons

a) It does not protect against any races, really, it does not improve things.
b) We do have the exact same problem with pfn_to_online_page(). As long as we
   don't hold the memory hotplug lock, memory can get offlined and remove any time. Racy.
c) We mix in ZONE specific stuff into the core. It should be "just another zone"

What I propose instead (already discussed in https://lkml.org/lkml/2019/10/10/87)

1. Convert SECTION_IS_ONLINE to SECTION_IS_ACTIVE
2. Convert SECTION_IS_ACTIVE to a subsection bitmap
3. Introduce pfn_active() that checks against the subsection bitmap
4. Once the memmap was initialized / prepared, set the subsection active
   (similar to SECTION_IS_ONLINE in the buddy right now)
5. Before the memmap gets invalidated, set the subsection inactive
   (similar to SECTION_IS_ONLINE in the buddy right now)
5. pfn_to_online_page() = pfn_active() && zone != ZONE_DEVICE
6. pfn_to_device_page() = pfn_active() && zone == ZONE_DEVICE

Especially, driver-reserved device memory will not get set active in
the subsection bitmap.

Now to the race. Taking the memory hotplug lock at random places is ugly. I do
wonder if we can use RCU:

The user of pfn_active()/pfn_to_online_page()/pfn_to_device_page():

	/* the memmap is guaranteed to remain active under RCU */
	rcu_read_lock();
	if (pfn_active(random_pfn)) {
		page = pfn_to_page(random_pfn);
		... use the page, stays valid
	}
	rcu_unread_lock();

Memory offlining/memremap code:

	set_subsections_inactive(pfn, nr_pages); /* clears the bit atomically */
	synchronize_rcu();
	/* all users saw the bitmap update, we can invalide the memmap */
	remove_pfn_range_from_zone(zone, pfn, nr_pages);

> 
>>
>> I only gave it a quick test with DIMMs on x86-64, but didn't test the
>> ZONE_DEVICE part at all (any tips for a nice QEMU setup?). Compile-tested
>> on x86-64 and PPC.
> 
> I'll give it a spin, but I don't think the kernel wants to grow more
> is_zone_device_page() users.

Let's recap. In this RFC, I introduce a total of 4 (!) users only.
The other parts can rely on pfn_to_online_page() only.

1. "staging: kpc2000: Prepare transfer_complete_cb() for PG_reserved changes"
- Basically never used with ZONE_DEVICE.
- We hold a reference!
- All it protects is a SetPageDirty(page);

2. "staging/gasket: Prepare gasket_release_page() for PG_reserved changes"
- Same as 1.

3. "mm/usercopy.c: Prepare check_page_span() for PG_reserved changes"
- We come via virt_to_head_page() / virt_to_head_page(), not sure about 
  references (I assume this should be fine as we don't come via random 
  PFNs)
- We check that we don't mix Reserved (including device memory) and CMA 
  pages when crossing compound pages.

I think we can drop 1. and 2., resulting in a total of 2 new users in
the same context. I think that is totally tolerable to finally clean
this up.


However, I think we also have to clarify if we need the change in 3 at all.
It comes from

commit f5509cc18daa7f82bcc553be70df2117c8eedc16
Author: Kees Cook <keescook@chromium.org>
Date:   Tue Jun 7 11:05:33 2016 -0700

    mm: Hardened usercopy
    
    This is the start of porting PAX_USERCOPY into the mainline kernel. This
    is the first set of features, controlled by CONFIG_HARDENED_USERCOPY. The
    work is based on code by PaX Team and Brad Spengler, and an earlier port
    from Casey Schaufler. Additional non-slab page tests are from Rik van Riel.
[...]
    - otherwise, object must not span page allocations (excepting Reserved
      and CMA ranges)

Not sure if we really have to care about ZONE_DEVICE at this point.


-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
