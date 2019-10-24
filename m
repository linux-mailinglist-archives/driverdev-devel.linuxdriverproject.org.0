Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC1CE3305
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:51:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2763288292;
	Thu, 24 Oct 2019 12:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id InOiCEdekC9e; Thu, 24 Oct 2019 12:51:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F6B78825E;
	Thu, 24 Oct 2019 12:51:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B151F1BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACA59203FC
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BsnGeKy-q9r for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B79D20361
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571921466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VqSy8TCDLSQZcjVM8MQ9Z6hcBHgAy+Iy/TvGqZXo7OA=;
 b=Mrt1yQZlf1ieHEuWSJnd+2ZtaTRGGPFjzLzU9jOLRcO/4zGqg1TRvvxF8LHNhdthdioq42
 hVpJIBYWxn0zSLEkij6g2x875/ydSsf2Q2vNOJV5CXGtqxNWyZOIbReKUzARHtQSBgz2V0
 8dR2Gfko41eJG8riNl6QWIXGHeFhP7k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-JiSCvq7dO9yuvbmKAN7FCA-1; Thu, 24 Oct 2019 08:51:04 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F41D80183D;
 Thu, 24 Oct 2019 12:50:59 +0000 (UTC)
Received: from [10.36.116.141] (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A6B315D70E;
 Thu, 24 Oct 2019 12:50:39 +0000 (UTC)
Subject: Re: [PATCH RFC v1 00/12] mm: Don't mark hotplugged pages PG_reserved
 (including ZONE_DEVICE)
From: David Hildenbrand <david@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
References: <20191022171239.21487-1-david@redhat.com>
 <CAPcyv4gJ+2he2E-6D0QZvkFWvRM9Fsvn9cAoPZbcU4zvsDHcEQ@mail.gmail.com>
 <acf86afd-a45c-5d83-daff-3bfb840d48a7@redhat.com>
Organization: Red Hat GmbH
Message-ID: <db5fbcb4-a67a-125a-3965-66066a4a68bc@redhat.com>
Date: Thu, 24 Oct 2019 14:50:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <acf86afd-a45c-5d83-daff-3bfb840d48a7@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: JiSCvq7dO9yuvbmKAN7FCA-1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 23.10.19 09:26, David Hildenbrand wrote:
> On 22.10.19 23:54, Dan Williams wrote:
>> Hi David,
>>
>> Thanks for tackling this!
> 
> Thanks for having a look :)
> 
> [...]
> 
> 
>>> I am probably a little bit too careful (but I don't want to break things).
>>> In most places (besides KVM and vfio that are nuts), the
>>> pfn_to_online_page() check could most probably be avoided by a
>>> is_zone_device_page() check. However, I usually get suspicious when I see
>>> a pfn_valid() check (especially after I learned that people mmap parts of
>>> /dev/mem into user space, including memory without memmaps. Also, people
>>> could memmap offline memory blocks this way :/). As long as this does not
>>> hurt performance, I think we should rather do it the clean way.
>>
>> I'm concerned about using is_zone_device_page() in places that are not
>> known to already have a reference to the page. Here's an audit of
>> current usages, and the ones I think need to cleaned up. The "unsafe"
>> ones do not appear to have any protections against the device page
>> being removed (get_dev_pagemap()). Yes, some of these were added by
>> me. The "unsafe? HMM" ones need HMM eyes because HMM leaks device
>> pages into anonymous memory paths and I'm not up to speed on how it
>> guarantees 'struct page' validity vs device shutdown without using
>> get_dev_pagemap().
>>
>> smaps_pmd_entry(): unsafe
>>
>> put_devmap_managed_page(): safe, page reference is held
>>
>> is_device_private_page(): safe? gpu driver manages private page lifetime
>>
>> is_pci_p2pdma_page(): safe, page reference is held
>>
>> uncharge_page(): unsafe? HMM
>>
>> add_to_kill(): safe, protected by get_dev_pagemap() and dax_lock_page()
>>
>> soft_offline_page(): unsafe
>>
>> remove_migration_pte(): unsafe? HMM
>>
>> move_to_new_page(): unsafe? HMM
>>
>> migrate_vma_pages() and helpers: unsafe? HMM
>>
>> try_to_unmap_one(): unsafe? HMM
>>
>> __put_page(): safe
>>
>> release_pages(): safe
>>
>> I'm hoping all the HMM ones can be converted to
>> is_device_private_page() directlly and have that routine grow a nice
>> comment about how it knows it can always safely de-reference its @page
>> argument.
>>
>> For the rest I'd like to propose that we add a facility to determine
>> ZONE_DEVICE by pfn rather than page. The most straightforward why I
>> can think of would be to just add another bitmap to mem_section_usage
>> to indicate if a subsection is ZONE_DEVICE or not.
> 
> (it's a somewhat unrelated bigger discussion, but we can start discussing it in this thread)
> 
> I dislike this for three reasons
> 
> a) It does not protect against any races, really, it does not improve things.
> b) We do have the exact same problem with pfn_to_online_page(). As long as we
>     don't hold the memory hotplug lock, memory can get offlined and remove any time. Racy.
> c) We mix in ZONE specific stuff into the core. It should be "just another zone"
> 
> What I propose instead (already discussed in https://lkml.org/lkml/2019/10/10/87)
> 
> 1. Convert SECTION_IS_ONLINE to SECTION_IS_ACTIVE
> 2. Convert SECTION_IS_ACTIVE to a subsection bitmap
> 3. Introduce pfn_active() that checks against the subsection bitmap
> 4. Once the memmap was initialized / prepared, set the subsection active
>     (similar to SECTION_IS_ONLINE in the buddy right now)
> 5. Before the memmap gets invalidated, set the subsection inactive
>     (similar to SECTION_IS_ONLINE in the buddy right now)
> 5. pfn_to_online_page() = pfn_active() && zone != ZONE_DEVICE
> 6. pfn_to_device_page() = pfn_active() && zone == ZONE_DEVICE
> 

Dan, I am suspecting that you want a pfn_to_zone() that will not touch 
the memmap, because it could potentially (altmap) lie on slow memory, right?

A modification might make this possible (but I am not yet sure if we 
want a less generic MM implementation just to fine tune slow memmap 
access here)

1. Keep SECTION_IS_ONLINE as it is with the same semantics
2. Introduce a subsection bitmap to record active ("initialized memmap")
    PFNs. E.g., also set it when setting sections online.
3. Introduce pfn_active() that checks against the subsection bitmap
4. Once the memmap was initialized / prepared, set the subsection active
    (similar to SECTION_IS_ONLINE in the buddy right now)
5. Before the memmap gets invalidated, set the subsection inactive
    (similar to SECTION_IS_ONLINE in the buddy right now)
5. pfn_to_online_page() = pfn_active() && section == SECTION_IS_ONLINE
    (or keep it as is, depends on the RCU locking we eventually
     implement)
6. pfn_to_device_page() = pfn_active() && section != SECTION_IS_ONLINE
7. use pfn_active() whenever we don't care about the zone.

Again, not really a friend of that, it hardcodes ZONE_DEVICE vs. 
!ZONE_DEVICE. When we do a random "pfn_to_page()" (e.g., a pfn walker) 
we really want to touch the memmap right away either way. So we can also 
directly read the zone from it. I really do prefer right now a more 
generic implementation.

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
