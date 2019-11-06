Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DDDF0F58
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 07:57:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E29081BC8;
	Wed,  6 Nov 2019 06:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrtNcZn-kxs4; Wed,  6 Nov 2019 06:57:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E4058A4DE;
	Wed,  6 Nov 2019 06:57:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF0291BF487
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 06:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B92E089CEB
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 06:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iE2-FAx8-3F for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 06:57:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77CB689CEA
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573023424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gHhiVRGjTg2z5h3dRfpoqGRkrXa+G8taPvqq9+5Ox4o=;
 b=SRtP8Fln1eP9pf1T2MuOK56VKv9DSNmVShxpAwY8MqGAX6v2ouXF1X4m9XowP6c01f8K00
 R+RcWMI4DOXoJ4uZzkrOcZRX29aYjcMEm+InlsCT+gowIrEK4kaGmRbR30RQyg+6S4LF3M
 /itbaFKlofdj88Q9WIyIN8k43zQGUdI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-W8IUVLyUMSC0rC0dumrlPQ-1; Wed, 06 Nov 2019 01:57:02 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7029E8017E0;
 Wed,  6 Nov 2019 06:56:55 +0000 (UTC)
Received: from [10.36.116.143] (ovpn-116-143.ams2.redhat.com [10.36.116.143])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB0E15D70E;
 Wed,  6 Nov 2019 06:56:35 +0000 (UTC)
Subject: Re: [PATCH v1 03/10] KVM: Prepare kvm_is_reserved_pfn() for
 PG_reserved changes
To: Dan Williams <dan.j.williams@intel.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <CAPcyv4jyTxEpw5ep5Noy0YRV7Dybzj+8OTVMwRK_zeFigF-LsQ@mail.gmail.com>
 <bbe59155-24ae-f229-e182-107730423c47@redhat.com>
 <01adb4cb-6092-638c-0bab-e61322be7cf5@redhat.com>
 <613f3606-748b-0e56-a3ad-1efaffa1a67b@redhat.com>
 <20191105160000.GC8128@linux.intel.com>
 <ed89cd61-7c45-8c9c-ffeb-f27b1872bd7a@redhat.com>
 <CAPcyv4htPCeui80fOOno+7AFo3V-=VEiWkAv8j+-Kkad+UnFGQ@mail.gmail.com>
 <20191105231316.GE23297@linux.intel.com>
 <CAPcyv4iRP0Sz=mcT+iuoVaD4-o2q1nCH2Hixc5OkfWu+SBQmkg@mail.gmail.com>
 <CAPcyv4i7tnjyghYhSjK8fxUu8Qkdc2RuD9kUwJcKEMDzOf51ng@mail.gmail.com>
 <20191106000315.GI23297@linux.intel.com>
 <CAPcyv4hppbefem9pHiQV5-djriGrzcuo0hxVnJwqB=+2iuOh2w@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <694202e7-d8e6-6ac8-6e47-3553b298bbcc@redhat.com>
Date: Wed, 6 Nov 2019 07:56:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAPcyv4hppbefem9pHiQV5-djriGrzcuo0hxVnJwqB=+2iuOh2w@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: W8IUVLyUMSC0rC0dumrlPQ-1
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
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 devel@driverdev.osuosl.org, Stefano Stabellini <sstabellini@kernel.org>,
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
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Adam Borowski <kilobyte@angband.pl>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 06.11.19 01:08, Dan Williams wrote:
> On Tue, Nov 5, 2019 at 4:03 PM Sean Christopherson
> <sean.j.christopherson@intel.com> wrote:
>>
>> On Tue, Nov 05, 2019 at 03:43:29PM -0800, Dan Williams wrote:
>>> On Tue, Nov 5, 2019 at 3:30 PM Dan Williams <dan.j.williams@intel.com> wrote:
>>>>
>>>> On Tue, Nov 5, 2019 at 3:13 PM Sean Christopherson
>>>> <sean.j.christopherson@intel.com> wrote:
>>>>>
>>>>> On Tue, Nov 05, 2019 at 03:02:40PM -0800, Dan Williams wrote:
>>>>>> On Tue, Nov 5, 2019 at 12:31 PM David Hildenbrand <david@redhat.com> wrote:
>>>>>>>> The scarier code (for me) is transparent_hugepage_adjust() and
>>>>>>>> kvm_mmu_zap_collapsible_spte(), as I don't at all understand the
>>>>>>>> interaction between THP and _PAGE_DEVMAP.
>>>>>>>
>>>>>>> The x86 KVM MMU code is one of the ugliest code I know (sorry, but it
>>>>>>> had to be said :/ ). Luckily, this should be independent of the
>>>>>>> PG_reserved thingy AFAIKs.
>>>>>>
>>>>>> Both transparent_hugepage_adjust() and kvm_mmu_zap_collapsible_spte()
>>>>>> are honoring kvm_is_reserved_pfn(), so again I'm missing where the
>>>>>> page count gets mismanaged and leads to the reported hang.
>>>>>
>>>>> When mapping pages into the guest, KVM gets the page via gup(), which
>>>>> increments the page count for ZONE_DEVICE pages.  But KVM puts the page
>>>>> using kvm_release_pfn_clean(), which skips put_page() if PageReserved()
>>>>> and so never puts its reference to ZONE_DEVICE pages.
>>>>
>>>> Oh, yeah, that's busted.
>>>
>>> Ugh, it's extra busted because every other gup user in the kernel
>>> tracks the pages resulting from gup and puts them (put_page()) when
>>> they are done. KVM wants to forget about whether it did a gup to get
>>> the page and optionally trigger put_page() based purely on the pfn.
>>> Outside of VFIO device assignment that needs pages pinned for DMA, why
>>> does KVM itself need to pin pages? If pages are pinned over a return
>>> to userspace that needs to be a FOLL_LONGTERM gup.
>>
>> Short answer, KVM pins the page to ensure correctness with respect to the
>> primary MMU invalidating the associated host virtual address, e.g. when
>> the page is being migrated or unmapped from host userspace.
>>
>> The main use of gup() is to handle guest page faults and map pages into
>> the guest, i.e. into KVM's secondary MMU.  KVM uses gup() to both get the
>> PFN and to temporarily pin the page.  The pin is held just long enough to
>> guaranteed that any invalidation via the mmu_notifier will be stalled
>> until after KVM finishes installing the page into the secondary MMU, i.e.
>> the pin is short-term and not held across a return to userspace or entry
>> into the guest.  When a subsequent mmu_notifier invalidation occurs, KVM
>> pulls the PFN from the secondary MMU and uses that to update accessed
>> and dirty bits in the host.
>>
>> There are a few other KVM flows that eventually call into gup(), but those
>> are "traditional" short-term pins and use put_page() directly.
> 
> Ok, I was misinterpreting the effect of the bug with what KVM is using
> the reference to do.
> 
> To your other point:
> 
>> But David's proposed fix for the above refcount bug is to omit the patch
>> so that KVM no longer treats ZONE_DEVICE pages as reserved.  That seems
>> like the right thing to do, including for thp_adjust(), e.g. it would
>> naturally let KVM use 2mb pages for the guest when a ZONE_DEVICE page is
>> mapped with a huge page (2mb or above) in the host.  The only hiccup is
>> figuring out how to correctly transfer the reference.
> 
> That might not be the only hiccup. There's currently no such thing as
> huge pages for ZONE_DEVICE, there are huge *mappings* (pmd and pud),
> but the result of pfn_to_page() on such a mapping does not yield a
> huge 'struct page'. It seems there are other paths in KVM that assume
> that more typical page machinery is active like SetPageDirty() based
> on kvm_is_reserved_pfn(). While I told David that I did not want to
> see more usage of is_zone_device_page(), this patch below (untested)
> seems a cleaner path with less surprises:
> 
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 4df0aa6b8e5c..fbea17c1810c 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -1831,7 +1831,8 @@ EXPORT_SYMBOL_GPL(kvm_release_page_clean);
> 
>   void kvm_release_pfn_clean(kvm_pfn_t pfn)
>   {
> -       if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn))
> +       if ((!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn)) ||
> +           (pfn_valid(pfn) && is_zone_device_page(pfn_to_page(pfn))))
>                  put_page(pfn_to_page(pfn));
>   }
>   EXPORT_SYMBOL_GPL(kvm_release_pfn_clean);

I had the same thought, but I do wonder about the kvm_get_pfn() users, 
e.g.,:

hva_to_pfn_remapped():
	r = follow_pfn(vma, addr, &pfn);
	...
	kvm_get_pfn(pfn);
	...

We would not take a reference for ZONE_DEVICE, but later drop one 
reference via kvm_release_pfn_clean(). IOW, kvm_get_pfn() gets *really* 
dangerous to use. I can't tell if this can happen right now.

We do have 3 users of kvm_get_pfn() that we have to audit before this 
change. Also, we should add a comment to kvm_get_pfn() that it should 
never be used with possible ZONE_DEVICE pages.

Also, we should add a comment to kvm_release_pfn_clean(), describing why 
we treat ZONE_DEVICE in a special way here.


We can then progress like this

1. Get this fix upstream, it's somewhat unrelated to this series.
2. This patch here remains as is in this series (+/- documentation update)
3. Long term, rework KVM to not have to not treat ZONE_DEVICE like 
reserved pages. E.g., get rid of kvm_get_pfn(). Then, this special zone 
check can go.

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
