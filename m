Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8ECF06F1
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 21:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85C322226B;
	Tue,  5 Nov 2019 20:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r15sAq45jq3K; Tue,  5 Nov 2019 20:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AF3020432;
	Tue,  5 Nov 2019 20:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 097121BF334
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 20:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 04FF189DEE
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 20:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CM5eGT3w4o6 for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 20:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE19289DE9
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 20:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572985883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bBpsVnOm2Iw9vk68TEBuezjUdaQ9ObuSYB51z2SdbAc=;
 b=avVVbuWKuWyvx+yal7SAP6oh+VGhL5N0goZq0Sf+fiZd9aX4ikQ87BpENVB7cXFXahUMKD
 0GYmGYsh9HkkBelHUznw1Njcq98f6em2pgTyWGWK1xvyo8I70rVMzvFQy8y0sGQatcQU9X
 ukeEZENDs3M3Df14i+BpncwZWKuxajw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-zTK-3plmNT2sFf3o-zKI6g-1; Tue, 05 Nov 2019 15:31:21 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A09A18064D1;
 Tue,  5 Nov 2019 20:31:12 +0000 (UTC)
Received: from [10.36.116.98] (ovpn-116-98.ams2.redhat.com [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 564CE3CC6;
 Tue,  5 Nov 2019 20:30:54 +0000 (UTC)
Subject: Re: [PATCH v1 03/10] KVM: Prepare kvm_is_reserved_pfn() for
 PG_reserved changes
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-4-david@redhat.com>
 <CAPcyv4jyTxEpw5ep5Noy0YRV7Dybzj+8OTVMwRK_zeFigF-LsQ@mail.gmail.com>
 <bbe59155-24ae-f229-e182-107730423c47@redhat.com>
 <01adb4cb-6092-638c-0bab-e61322be7cf5@redhat.com>
 <613f3606-748b-0e56-a3ad-1efaffa1a67b@redhat.com>
 <20191105160000.GC8128@linux.intel.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <ed89cd61-7c45-8c9c-ffeb-f27b1872bd7a@redhat.com>
Date: Tue, 5 Nov 2019 21:30:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191105160000.GC8128@linux.intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: zTK-3plmNT2sFf3o-zKI6g-1
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
Cc: linux-hyperv@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 KVM list <kvm@vger.kernel.org>, Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Linux MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, X86 ML <x86@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Vlastimil Babka <vbabka@suse.cz>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 kvm-ppc@vger.kernel.org, Qian Cai <cai@lca.pw>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Adam Borowski <kilobyte@angband.pl>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Johannes Weiner <hannes@cmpxchg.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>>> I think I know what's going wrong:
>>>
>>> Pages that are pinned via gfn_to_pfn() and friends take a references,
>>> however are often released via
>>> kvm_release_pfn_clean()/kvm_release_pfn_dirty()/kvm_release_page_clean()...
>>>
>>>
>>> E.g., in arch/x86/kvm/x86.c:reexecute_instruction()
>>>
>>> ...
>>> pfn = gfn_to_pfn(vcpu->kvm, gpa_to_gfn(gpa));
>>> ...
>>> kvm_release_pfn_clean(pfn);
>>>
>>>
>>>
>>> void kvm_release_pfn_clean(kvm_pfn_t pfn)
>>> {
>>> 	if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn))
>>> 		put_page(pfn_to_page(pfn));
>>> }
>>>
>>> This function makes perfect sense as the counterpart for kvm_get_pfn():
>>>
>>> void kvm_get_pfn(kvm_pfn_t pfn)
>>> {
>>> 	if (!kvm_is_reserved_pfn(pfn))
>>> 		get_page(pfn_to_page(pfn));
>>> }
>>>
>>>
>>> As all ZONE_DEVICE pages are currently reserved, pages pinned via
>>> gfn_to_pfn() and friends will often not see a put_page() AFAIKS.
> 
> Assuming gup() takes a reference for ZONE_DEVICE pages, yes, this is a
> KVM bug.

Yes, it does take a reference AFAIKs. E.g.,

mm/gup.c:gup_pte_range():
...
		if (pte_devmap(pte)) {
			if (unlikely(flags & FOLL_LONGTERM))
				goto pte_unmap;

			pgmap = get_dev_pagemap(pte_pfn(pte), pgmap);
			if (unlikely(!pgmap)) {
				undo_dev_pagemap(nr, nr_start, pages);
				goto pte_unmap;
			}
		} else if (pte_special(pte))
			goto pte_unmap;

		VM_BUG_ON(!pfn_valid(pte_pfn(pte)));
		page = pte_page(pte);

		head = try_get_compound_head(page, 1);

try_get_compound_head() will increment the reference count.

> 
>>> Now, my patch does not change that, the result of
>>> kvm_is_reserved_pfn(pfn) will be unchanged. A proper fix for that would
>>> probably be
>>>
>>> a) To drop the reference to ZONE_DEVICE pages in gfn_to_pfn() and
>>> friends, after you successfully pinned the pages. (not sure if that's
>>> the right thing to do but you're the expert)
>>>
>>> b) To not use kvm_release_pfn_clean() and friends on pages that were
>>> definitely pinned.
> 
> This is already KVM's intent, i.e. the purpose of the PageReserved() check
> is simply to avoid putting a non-existent reference.  The problem is that
> KVM assumes pages with PG_reserved set are never pinned, which AFAICT was
> true when the code was first added.
> 
>> (talking to myself, sorry)
>>
>> Thinking again, dropping this patch from this series could effectively also
>> fix that issue. E.g., kvm_release_pfn_clean() and friends would always do a
>> put_page() if "pfn_valid() and !PageReserved()", so after patch 9 also on
>> ZONDE_DEVICE pages.
> 
> Yeah, this appears to be the correct fix.
> 
>> But it would have side effects that might not be desired. E.g.,:
>>
>> 1. kvm_pfn_to_page() would also return ZONE_DEVICE pages (might even be the
>> right thing to do).
> 
> This should be ok, at least on x86.  There are only three users of
> kvm_pfn_to_page().  Two of those are on allocations that are controlled by
> KVM and are guaranteed to be vanilla MAP_ANONYMOUS.  The third is on guest
> memory when running a nested guest, and in that case supporting ZONE_DEVICE
> memory is desirable, i.e. KVM should play nice with a guest that is backed
> by ZONE_DEVICE memory.
> 
>> 2. kvm_set_pfn_dirty() would also set ZONE_DEVICE pages dirty (might be
>> okay)
> 
> This is ok from a KVM perspective.

What about

void kvm_get_pfn(kvm_pfn_t pfn)
{
	if (!kvm_is_reserved_pfn(pfn))
		get_page(pfn_to_page(pfn));
}

Is a pure get_page() sufficient in case of ZONE_DEVICE?
(asking because of the live references obtained via 
get_dev_pagemap(pte_pfn(pte), pgmap) in mm/gup.c:gup_pte_range() 
somewhat confuse me :) )


> 
> The scarier code (for me) is transparent_hugepage_adjust() and
> kvm_mmu_zap_collapsible_spte(), as I don't at all understand the
> interaction between THP and _PAGE_DEVMAP.

The x86 KVM MMU code is one of the ugliest code I know (sorry, but it 
had to be said :/ ). Luckily, this should be independent of the 
PG_reserved thingy AFAIKs.

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
