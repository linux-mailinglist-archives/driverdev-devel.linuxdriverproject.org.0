Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DC8F33B3
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 16:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2828A203DF;
	Thu,  7 Nov 2019 15:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgVfG0Vl3guh; Thu,  7 Nov 2019 15:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD714203D0;
	Thu,  7 Nov 2019 15:45:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 901E71BF484
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78F8E87670
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J65Df-g16PpC for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 15:45:34 +0000 (UTC)
X-Greylist: delayed 00:05:05 by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AAC078766C
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 15:45:34 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id i185so2333374oif.9
 for <devel@driverdev.osuosl.org>; Thu, 07 Nov 2019 07:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q58dgR5BjEdLFCMc/OF3RFMdn955E8grbP7luNA8CNY=;
 b=oKCc36Mb9fip+zU5tGKr6J+l4XlDcFUtvr2mmmCNv6TF0HlwkicRCrTT1sQlx12vxa
 UY8S81D7tBut+V/4ZkpyJtSVYco9A0bQaPWztNxHQubXXDgTxmJGos9WA1uUQELcy96J
 T6Bh3rJMvXgSo4xERJ53HxifVFLgwy/o3viVP+9B0CbTTzJLC88VhXkF2cZ+0Tuobk14
 zVNN5QACqwe5KWkIPC4t1TSKEn6spSMULzAANECJfJo6fn8JsC5HEU9YsPR/FcLvIWCT
 HseWP/zMGzW78EfAwZAkw31fNd4FCq5eyjs4aTOmObHRdvGMJcGjHaaY5l49bbOdcFbv
 BxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q58dgR5BjEdLFCMc/OF3RFMdn955E8grbP7luNA8CNY=;
 b=OdMCM03fx0oBp0z5f3R59q8HxC+zjgW0AkmOy57KO5H+acrjd+nHFtzZUXCqLXZqU6
 fUHHrQiXeJVdpPJpqwn6rIZMlMOScr21ciNLPUJSdNqteUPPBcszckQ/UIiGdOcBHBYg
 2FLF/5JZRBvmhS4vWBRdfOoqz9oBOoULCegekWlEsjWN269cNLxFlnCqHevFUJ18sffN
 QXN1aW61kbKcfZIm+SAqthuAvxngL3emcNjx7m9IMZEtjbrgH8pTjL49+jEmveWRgg64
 hEpOIMzgL8okNxxB14MGLdxnuqL2NnWn664sOSby8VXVX0qOXIE9qZZKfWffhu6Q08Zc
 M2Ow==
X-Gm-Message-State: APjAAAU3PskDWMzQfdoxkRSZ9My1C4Tfu8QAfo5uOF7KIEMQSxSkcmBm
 IsYn2jLgF3xYXAHprhNd1CPtrttfgybLfhiRPq5t3WwI
X-Google-Smtp-Source: APXvYqzlAbNtEQcnOULhGp1Ld3ejpyCy6BqfHWE8h+548I8goxJKdozDEoUnp7xCpHOKMURL2hHkCxlnCDsp6qKvW2g=
X-Received: by 2002:aca:ad52:: with SMTP id w79mr3140190oie.149.1573141228551; 
 Thu, 07 Nov 2019 07:40:28 -0800 (PST)
MIME-Version: 1.0
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-5-david@redhat.com>
In-Reply-To: <20191024120938.11237-5-david@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 7 Nov 2019 07:40:17 -0800
Message-ID: <CAPcyv4hxs+KqY5gU8Ds1a73eub1imvm9Qo8KdKGiDD1e-p0cww@mail.gmail.com>
Subject: Re: [PATCH v1 04/10] vfio/type1: Prepare is_invalid_reserved_pfn()
 for PG_reserved changes
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
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 24, 2019 at 5:12 AM David Hildenbrand <david@redhat.com> wrote:
>
> Right now, ZONE_DEVICE memory is always set PG_reserved. We want to
> change that.
>
> KVM has this weird use case that you can map anything from /dev/mem
> into the guest. pfn_valid() is not a reliable check whether the memmap
> was initialized and can be touched. pfn_to_online_page() makes sure
> that we have an initialized memmap (and don't have ZONE_DEVICE memory).
>
> Rewrite is_invalid_reserved_pfn() similar to kvm_is_reserved_pfn() to make
> sure the function produces the same result once we stop setting ZONE_DEVICE
> pages PG_reserved.
>
> Cc: Alex Williamson <alex.williamson@redhat.com>
> Cc: Cornelia Huck <cohuck@redhat.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  drivers/vfio/vfio_iommu_type1.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
> index 2ada8e6cdb88..f8ce8c408ba8 100644
> --- a/drivers/vfio/vfio_iommu_type1.c
> +++ b/drivers/vfio/vfio_iommu_type1.c
> @@ -299,9 +299,15 @@ static int vfio_lock_acct(struct vfio_dma *dma, long npage, bool async)
>   */
>  static bool is_invalid_reserved_pfn(unsigned long pfn)
>  {
> -       if (pfn_valid(pfn))
> -               return PageReserved(pfn_to_page(pfn));
> +       struct page *page = pfn_to_online_page(pfn);

Ugh, I just realized this is not a safe conversion until
pfn_to_online_page() is moved over to subsection granularity. As it
stands it will return true for any ZONE_DEVICE pages that share a
section with boot memory.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
