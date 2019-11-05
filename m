Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F808F0A35
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 00:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D58D286169;
	Tue,  5 Nov 2019 23:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KS4sU8srlPzj; Tue,  5 Nov 2019 23:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90DDD85E65;
	Tue,  5 Nov 2019 23:30:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09EF41BF33F
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 23:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0609085E65
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 23:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jNsZBh0crvX for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 23:30:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D850585DF6
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 23:30:11 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id z6so19243162otb.2
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 15:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R3DmgtbuDvl/nfkrniY8Ba73gr9pACG77rpNCqLOyTA=;
 b=ax5HR98WH4xqZvWHcyzuHRNGmZvT7I9m7xhGJ1uY8PDybcgBe1VmfyCLXrE48zy0BX
 vWcIHu6UYoH8HknqTIdU6Y+LYlECfapFpwLBsIAucTcvwTRYHtKiZpX6HfdTzXXEPEnk
 HWjqS+gQejFktk2XITcuM0n+yeF5sQPBkc+kK/6meBz8x9VvLBJ24hrRrJof+Z2QZCIS
 ZvRSXKB24+uJoWcJtAJmQHL6SW1XP2EN8QixZwZsl13dmEYE2GJMvXzgHqy355aGvDQ3
 F0zrp/0LqNIWlZiKW6TlpU1rB2bmBt1brju1GqeiJ5NinFlVYYEE2UC84COw1zeJ61L+
 MXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R3DmgtbuDvl/nfkrniY8Ba73gr9pACG77rpNCqLOyTA=;
 b=iZuUCiwHLr73i/qTo+yiSoMtgDIq2qWt4R7q0KpYfvqjKvSK+aFc9TClefuSnuObUx
 heH5P89C3z4zqnJRH7eFa7qy97xlbcN2VydIcFy8cmoNRLwckkQuWo4OaevCeu7BbHOT
 d+EgXEINnnuE6UAt2XWDKwlHZywvbcNQXsWAGMNxNrwcrIgENamtz1ckaR52wsGgMDKP
 7DADZ2ZRQfPrcvXnCqVVRTJdFcL1tzGU+qr53O/i/VGlfYRBVLvfItHIEbrhhQleQJT+
 XOynLrmZYfbx5JJ2MmdWQVCBcCW5ZO8D62qWT1q7JLkqYUc3cyHwIH3ScsrBq/tpKq1g
 WT+Q==
X-Gm-Message-State: APjAAAW4pPQit9EbUhmms2f15ocIRfmdHY4C4v+0mYPoGKAng/SGwB6+
 E4dvE6dE5XG0fz/5jPQ1L9PhPui/0TqoxCS7Zv00ag==
X-Google-Smtp-Source: APXvYqyxc+DmPQQN5aSk0dtRzKoWLg9GygXu/1AciWksnhJhFNdAydFP0T3vz9JQ5vwewxa4ElAmJqPI0FG8eQ5kblQ=
X-Received: by 2002:a9d:5f11:: with SMTP id f17mr24157383oti.207.1572996611041; 
 Tue, 05 Nov 2019 15:30:11 -0800 (PST)
MIME-Version: 1.0
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-4-david@redhat.com>
 <CAPcyv4jyTxEpw5ep5Noy0YRV7Dybzj+8OTVMwRK_zeFigF-LsQ@mail.gmail.com>
 <bbe59155-24ae-f229-e182-107730423c47@redhat.com>
 <01adb4cb-6092-638c-0bab-e61322be7cf5@redhat.com>
 <613f3606-748b-0e56-a3ad-1efaffa1a67b@redhat.com>
 <20191105160000.GC8128@linux.intel.com>
 <ed89cd61-7c45-8c9c-ffeb-f27b1872bd7a@redhat.com>
 <CAPcyv4htPCeui80fOOno+7AFo3V-=VEiWkAv8j+-Kkad+UnFGQ@mail.gmail.com>
 <20191105231316.GE23297@linux.intel.com>
In-Reply-To: <20191105231316.GE23297@linux.intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 5 Nov 2019 15:30:00 -0800
Message-ID: <CAPcyv4iRP0Sz=mcT+iuoVaD4-o2q1nCH2Hixc5OkfWu+SBQmkg@mail.gmail.com>
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

On Tue, Nov 5, 2019 at 3:13 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> On Tue, Nov 05, 2019 at 03:02:40PM -0800, Dan Williams wrote:
> > On Tue, Nov 5, 2019 at 12:31 PM David Hildenbrand <david@redhat.com> wrote:
> > > > The scarier code (for me) is transparent_hugepage_adjust() and
> > > > kvm_mmu_zap_collapsible_spte(), as I don't at all understand the
> > > > interaction between THP and _PAGE_DEVMAP.
> > >
> > > The x86 KVM MMU code is one of the ugliest code I know (sorry, but it
> > > had to be said :/ ). Luckily, this should be independent of the
> > > PG_reserved thingy AFAIKs.
> >
> > Both transparent_hugepage_adjust() and kvm_mmu_zap_collapsible_spte()
> > are honoring kvm_is_reserved_pfn(), so again I'm missing where the
> > page count gets mismanaged and leads to the reported hang.
>
> When mapping pages into the guest, KVM gets the page via gup(), which
> increments the page count for ZONE_DEVICE pages.  But KVM puts the page
> using kvm_release_pfn_clean(), which skips put_page() if PageReserved()
> and so never puts its reference to ZONE_DEVICE pages.

Oh, yeah, that's busted.

> My transparent_hugepage_adjust() and kvm_mmu_zap_collapsible_spte()
> comments were for a post-patch/series scenario wheren PageReserved() is
> no longer true for ZONE_DEVICE pages.

Ah, ok, for that David is preserving kvm_is_reserved_pfn() returning
true for ZONE_DEVICE because pfn_to_online_page() will fail for
ZONE_DEVICE.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
