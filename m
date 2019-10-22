Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C16E0DFA
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 00:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5854120534;
	Tue, 22 Oct 2019 22:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pn1uKkdeW+8N; Tue, 22 Oct 2019 22:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 701B7203BE;
	Tue, 22 Oct 2019 22:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8B5E1BF331
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 22:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E407286378
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 22:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MDdU2wWdJ897 for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 22:00:10 +0000 (UTC)
X-Greylist: delayed 00:05:07 by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F418784F5A
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:00:09 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 60so15615965otu.0
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 15:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X+xhy3C7ct4Wd70Xt4OQNAyYmD6XISU1mkD27wwsH4c=;
 b=e6GVBLMv/V4iAdkfWlAXzADW0DLH0ywch5G0LGr+6++slwJhs2ysGTULdUcotQKYgd
 WvTyOi8z9vET1krZn1EMRocnjmPrLDAWWBl0e+DDdfTIVpda3KbYcobsSukz/xXtnWSC
 ZQtGJrQtK05zIxxgAns0ZaO0HHZ9zxQd3iOnrg9SRoBF3dwEbgxB6kbHp1i3JTqB9Fj9
 opopASozuNvGmtfcE2psfc/mttjRcEa+QRgxLSQdWXH9K3QGe+2rJ5AJpXwm355yEKqj
 kWc+H/zOB1wp7gTllbz46Sbxau/Gyb16yQFt7zE0emKw99oiq7QMqumCqJj5kMsWralz
 baBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X+xhy3C7ct4Wd70Xt4OQNAyYmD6XISU1mkD27wwsH4c=;
 b=edu4eLxdi6gmraP0sxGDwoQiiQyOp4Xidsq/mXGiaJocSyotFhp3aXgO73+w08ehdl
 lRLczfX+yZdDQefR0B62ElviQSzzf4k5/k1JeO3mKIfjlfdOO6DDApt8/se28AAz9B4M
 af23ifKs3x+yIVMjcmNpp9jx2WYxXMZddt1VtSpA+5uX1Dc1ZlZ7o56XM8FaazQz8FRU
 3Ik+vHe9W8ZXobmsXWuN7VT7R83Qhs8H3fuEsj4vLoR+2PM47YlqO/VBPF/LcvF3nRjw
 BhNri2ca+wxJegL4Ic7aCzMX3BgFbHk9S25ofJzf66ugskf5/JbVYP1Ve2JO8ygucDCn
 oYxQ==
X-Gm-Message-State: APjAAAWUqey4oZJtkG3Vu6L4FuU2bKz74Kl2AO3G0hHV0PY9dNaWzz6q
 8iLThvqWT5lPg9giZJTIBOrA0YZJWLI2FGnZkZn95A==
X-Google-Smtp-Source: APXvYqwiQBeyg9j33QDXGkD1y7feKBrNdPRGKNKM/b+c8diEhCMBl1zIP9b9Mw2m1ljAM+dxjsHOktasSwWYIWy9hhA=
X-Received: by 2002:a05:6830:1b78:: with SMTP id
 d24mr4571406ote.363.1571781301217; 
 Tue, 22 Oct 2019 14:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191022171239.21487-1-david@redhat.com>
In-Reply-To: <20191022171239.21487-1-david@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 22 Oct 2019 14:54:47 -0700
Message-ID: <CAPcyv4gJ+2he2E-6D0QZvkFWvRM9Fsvn9cAoPZbcU4zvsDHcEQ@mail.gmail.com>
Subject: Re: [PATCH RFC v1 00/12] mm: Don't mark hotplugged pages PG_reserved
 (including ZONE_DEVICE)
To: David Hildenbrand <david@redhat.com>
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
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
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
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>,
 Sasha Levin <sashal@kernel.org>, kvm-ppc@vger.kernel.org,
 Qian Cai <cai@lca.pw>, Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
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

Hi David,

Thanks for tackling this!

On Tue, Oct 22, 2019 at 10:13 AM David Hildenbrand <david@redhat.com> wrote:
>
> This series is based on [2], which should pop up in linux/next soon:
>         https://lkml.org/lkml/2019/10/21/1034
>
> This is the result of a recent discussion with Michal ([1], [2]). Right
> now we set all pages PG_reserved when initializing hotplugged memmaps. This
> includes ZONE_DEVICE memory. In case of system memory, PG_reserved is
> cleared again when onlining the memory, in case of ZONE_DEVICE memory
> never. In ancient times, we needed PG_reserved, because there was no way
> to tell whether the memmap was already properly initialized. We now have
> SECTION_IS_ONLINE for that in the case of !ZONE_DEVICE memory. ZONE_DEVICE
> memory is already initialized deferred, and there shouldn't be a visible
> change in that regard.
>
> I remember that some time ago, we already talked about stopping to set
> ZONE_DEVICE pages PG_reserved on the list, but I never saw any patches.
> Also, I forgot who was part of the discussion :)

You got me, Alex, and KVM folks on the Cc, so I'd say that was it.

> One of the biggest fear were side effects. I went ahead and audited all
> users of PageReserved(). The ones that don't need any care (patches)
> can be found below. I will double check and hope I am not missing something
> important.
>
> I am probably a little bit too careful (but I don't want to break things).
> In most places (besides KVM and vfio that are nuts), the
> pfn_to_online_page() check could most probably be avoided by a
> is_zone_device_page() check. However, I usually get suspicious when I see
> a pfn_valid() check (especially after I learned that people mmap parts of
> /dev/mem into user space, including memory without memmaps. Also, people
> could memmap offline memory blocks this way :/). As long as this does not
> hurt performance, I think we should rather do it the clean way.

I'm concerned about using is_zone_device_page() in places that are not
known to already have a reference to the page. Here's an audit of
current usages, and the ones I think need to cleaned up. The "unsafe"
ones do not appear to have any protections against the device page
being removed (get_dev_pagemap()). Yes, some of these were added by
me. The "unsafe? HMM" ones need HMM eyes because HMM leaks device
pages into anonymous memory paths and I'm not up to speed on how it
guarantees 'struct page' validity vs device shutdown without using
get_dev_pagemap().

smaps_pmd_entry(): unsafe

put_devmap_managed_page(): safe, page reference is held

is_device_private_page(): safe? gpu driver manages private page lifetime

is_pci_p2pdma_page(): safe, page reference is held

uncharge_page(): unsafe? HMM

add_to_kill(): safe, protected by get_dev_pagemap() and dax_lock_page()

soft_offline_page(): unsafe

remove_migration_pte(): unsafe? HMM

move_to_new_page(): unsafe? HMM

migrate_vma_pages() and helpers: unsafe? HMM

try_to_unmap_one(): unsafe? HMM

__put_page(): safe

release_pages(): safe

I'm hoping all the HMM ones can be converted to
is_device_private_page() directlly and have that routine grow a nice
comment about how it knows it can always safely de-reference its @page
argument.

For the rest I'd like to propose that we add a facility to determine
ZONE_DEVICE by pfn rather than page. The most straightforward why I
can think of would be to just add another bitmap to mem_section_usage
to indicate if a subsection is ZONE_DEVICE or not.

>
> I only gave it a quick test with DIMMs on x86-64, but didn't test the
> ZONE_DEVICE part at all (any tips for a nice QEMU setup?). Compile-tested
> on x86-64 and PPC.

I'll give it a spin, but I don't think the kernel wants to grow more
is_zone_device_page() users.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
