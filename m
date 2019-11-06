Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CE5F0AE8
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 01:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 71DF92269B;
	Wed,  6 Nov 2019 00:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cMKsFSopr-5P; Wed,  6 Nov 2019 00:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B82A522650;
	Wed,  6 Nov 2019 00:09:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D46171BF329
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 00:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9791722668
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 00:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qp3cgdRarI44 for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 00:08:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0905722650
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 00:08:44 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id b16so19287555otk.9
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 16:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBnxU3butVFZM7AnAXfHT8dkMjtUFYfyCvUDW61SXV0=;
 b=e+Di3mlc5nguC0AjBP91KU4QLtXyLv60VHL8bcA2yTFqSx8GzUT3JPnO2SUvw9dJ3e
 x892tG+naCnJ7xx1/XyJqFBd5BAvIkbzvc8Hm+iANPYt1TTQlO54TnNTT2/Vr/wnnHwU
 cWH/uHsxgeOfe757EoaxLRwaf5ARnH5aT0zdOmRUm2qEb9I99F92KkPxOUH4REMi83wk
 kEyAkGq3/W1xKyxTMdH0KRUk/WXIRl4YbdL49pTFBgS4yeLctZvOTpoL9B1muQPVqJmY
 p3ipEL1tac4Bnfpc8lK1KzxSavaLkdb1VqqzcOJA3HvnvhhzQSrRj7AaXeANHjyy47rG
 tLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBnxU3butVFZM7AnAXfHT8dkMjtUFYfyCvUDW61SXV0=;
 b=g1ftzc/jpGigzKc9vjAUdTpfEXA34Xz1lo5OJBEOSso/hAv4KxGqy09oBacpCYc89F
 xJFHLULi1BbsdcvgO5IAhGAAxALt8o6wgbixiSjCNf45PsoD5/cugZwoz52UbUOre0YE
 2ilubJYud4RdT5ieGvAkhyh2jKcAauLzpC20XTGSkgw9NqRYmnNmLD1rS9GUHvBfDlo4
 UHopIwwYsJrTCXWnEYvFJKcG/FRhLuq8L0ePHEc3gIhAG4OsFJtcBWzgqLKJYzEwYBqT
 03c5sjDTuV8I7sl1cjoYeSjJrzLab0kyWt0opaK2Kl81SpK9LBKNm+YTBVJ+gYKenKbu
 BOLg==
X-Gm-Message-State: APjAAAXbWXO5RNoY5ZkRvZnNCIYypvxVejsBWNzkuwFtSHnmRZ75ODkb
 ctRcAGxrViNDm9rujLFQ4NsjdoL2t3v77yyBhTFGpIhWDg0=
X-Google-Smtp-Source: APXvYqy6XKydDtiqLti7hhnEPqaloEXe8khYaaQC8o7B44In3kaSUL1URuHERGnTYAOJPrixGMDMzxSCyGGCNLsXEME=
X-Received: by 2002:a9d:5f11:: with SMTP id f17mr24252119oti.207.1572998924064; 
 Tue, 05 Nov 2019 16:08:44 -0800 (PST)
MIME-Version: 1.0
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
In-Reply-To: <20191106000315.GI23297@linux.intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 5 Nov 2019 16:08:32 -0800
Message-ID: <CAPcyv4hppbefem9pHiQV5-djriGrzcuo0hxVnJwqB=+2iuOh2w@mail.gmail.com>
Subject: Re: [PATCH v1 03/10] KVM: Prepare kvm_is_reserved_pfn() for
 PG_reserved changes
To: Sean Christopherson <sean.j.christopherson@intel.com>
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
 KVM list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Linux MM <linux-mm@kvack.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 5, 2019 at 4:03 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> On Tue, Nov 05, 2019 at 03:43:29PM -0800, Dan Williams wrote:
> > On Tue, Nov 5, 2019 at 3:30 PM Dan Williams <dan.j.williams@intel.com> wrote:
> > >
> > > On Tue, Nov 5, 2019 at 3:13 PM Sean Christopherson
> > > <sean.j.christopherson@intel.com> wrote:
> > > >
> > > > On Tue, Nov 05, 2019 at 03:02:40PM -0800, Dan Williams wrote:
> > > > > On Tue, Nov 5, 2019 at 12:31 PM David Hildenbrand <david@redhat.com> wrote:
> > > > > > > The scarier code (for me) is transparent_hugepage_adjust() and
> > > > > > > kvm_mmu_zap_collapsible_spte(), as I don't at all understand the
> > > > > > > interaction between THP and _PAGE_DEVMAP.
> > > > > >
> > > > > > The x86 KVM MMU code is one of the ugliest code I know (sorry, but it
> > > > > > had to be said :/ ). Luckily, this should be independent of the
> > > > > > PG_reserved thingy AFAIKs.
> > > > >
> > > > > Both transparent_hugepage_adjust() and kvm_mmu_zap_collapsible_spte()
> > > > > are honoring kvm_is_reserved_pfn(), so again I'm missing where the
> > > > > page count gets mismanaged and leads to the reported hang.
> > > >
> > > > When mapping pages into the guest, KVM gets the page via gup(), which
> > > > increments the page count for ZONE_DEVICE pages.  But KVM puts the page
> > > > using kvm_release_pfn_clean(), which skips put_page() if PageReserved()
> > > > and so never puts its reference to ZONE_DEVICE pages.
> > >
> > > Oh, yeah, that's busted.
> >
> > Ugh, it's extra busted because every other gup user in the kernel
> > tracks the pages resulting from gup and puts them (put_page()) when
> > they are done. KVM wants to forget about whether it did a gup to get
> > the page and optionally trigger put_page() based purely on the pfn.
> > Outside of VFIO device assignment that needs pages pinned for DMA, why
> > does KVM itself need to pin pages? If pages are pinned over a return
> > to userspace that needs to be a FOLL_LONGTERM gup.
>
> Short answer, KVM pins the page to ensure correctness with respect to the
> primary MMU invalidating the associated host virtual address, e.g. when
> the page is being migrated or unmapped from host userspace.
>
> The main use of gup() is to handle guest page faults and map pages into
> the guest, i.e. into KVM's secondary MMU.  KVM uses gup() to both get the
> PFN and to temporarily pin the page.  The pin is held just long enough to
> guaranteed that any invalidation via the mmu_notifier will be stalled
> until after KVM finishes installing the page into the secondary MMU, i.e.
> the pin is short-term and not held across a return to userspace or entry
> into the guest.  When a subsequent mmu_notifier invalidation occurs, KVM
> pulls the PFN from the secondary MMU and uses that to update accessed
> and dirty bits in the host.
>
> There are a few other KVM flows that eventually call into gup(), but those
> are "traditional" short-term pins and use put_page() directly.

Ok, I was misinterpreting the effect of the bug with what KVM is using
the reference to do.

To your other point:

> But David's proposed fix for the above refcount bug is to omit the patch
> so that KVM no longer treats ZONE_DEVICE pages as reserved.  That seems
> like the right thing to do, including for thp_adjust(), e.g. it would
> naturally let KVM use 2mb pages for the guest when a ZONE_DEVICE page is
> mapped with a huge page (2mb or above) in the host.  The only hiccup is
> figuring out how to correctly transfer the reference.

That might not be the only hiccup. There's currently no such thing as
huge pages for ZONE_DEVICE, there are huge *mappings* (pmd and pud),
but the result of pfn_to_page() on such a mapping does not yield a
huge 'struct page'. It seems there are other paths in KVM that assume
that more typical page machinery is active like SetPageDirty() based
on kvm_is_reserved_pfn(). While I told David that I did not want to
see more usage of is_zone_device_page(), this patch below (untested)
seems a cleaner path with less surprises:

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 4df0aa6b8e5c..fbea17c1810c 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1831,7 +1831,8 @@ EXPORT_SYMBOL_GPL(kvm_release_page_clean);

 void kvm_release_pfn_clean(kvm_pfn_t pfn)
 {
-       if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn))
+       if ((!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn)) ||
+           (pfn_valid(pfn) && is_zone_device_page(pfn_to_page(pfn))))
                put_page(pfn_to_page(pfn));
 }
 EXPORT_SYMBOL_GPL(kvm_release_pfn_clean);

This is safe because the reference that KVM took earlier protects the
is_zone_device_page() lookup from racing device teardown. Otherwise,
if KVM does not have a reference it's unsafe, but that's already even
more broken because KVM would be releasing a page that it never
referenced. Every other KVM operation that assumes page allocator
pages would continue to honor kvm_is_reserved_pfn().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
