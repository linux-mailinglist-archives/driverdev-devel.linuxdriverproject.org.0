Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD894F3137
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 15:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3BF5203D8;
	Thu,  7 Nov 2019 14:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lvULQf0Td8M9; Thu,  7 Nov 2019 14:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0DADF2039E;
	Thu,  7 Nov 2019 14:19:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 003E11BF3D2
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0FB28735C
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqfObJAR2SrN for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:19:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org
 [213.251.177.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 126518715D
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:19:37 +0000 (UTC)
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSidE-0006pE-M7; Thu, 07 Nov 2019 15:19:28 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions for
 Hyper-V size pages
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 15:28:49 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
Message-ID: <43d53ebd2637bd9106137103028a4f0e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mikelley@microsoft.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 devel@linuxdriverproject.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com, sunilmut@microsoft.com, boqun.feng@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
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
Cc: mark.rutland@arm.com, linux-hyperv@vger.kernel.org,
 "boqun.feng" <boqun.feng@gmail.com>, catalin.marinas@arm.com,
 jasowang@redhat.com, linux-kernel@vger.kernel.org, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh@linuxfoundation.org, apw@canonical.com,
 devel@linuxdriverproject.org, vkuznets <vkuznets@redhat.com>, will@kernel.org,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-10-03 20:12, Michael Kelley wrote:
> Add ARM64-specific code to allocate memory with HV_HYP_PAGE_SIZE
> size and alignment. These are for use when pages need to be shared
> with Hyper-V. Separate functions are needed as the page size used
> by Hyper-V may not be the same as the guest page size.  Free
> operations are rarely done, so no attempt is made to combine
> freed pages into larger chunks.
>
> This code is built only when CONFIG_HYPERV is enabled.
>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  arch/arm64/hyperv/hv_init.c    | 68
> ++++++++++++++++++++++++++++++++++++++++++
>  include/asm-generic/mshyperv.h |  5 ++++
>  2 files changed, 73 insertions(+)
>
> diff --git a/arch/arm64/hyperv/hv_init.c 
> b/arch/arm64/hyperv/hv_init.c
> index 6808bc8..9c294f6 100644
> --- a/arch/arm64/hyperv/hv_init.c
> +++ b/arch/arm64/hyperv/hv_init.c
> @@ -15,10 +15,78 @@
>  #include <linux/export.h>
>  #include <linux/mm.h>
>  #include <linux/hyperv.h>
> +#include <linux/spinlock.h>
> +#include <linux/list.h>
> +#include <linux/string.h>
>  #include <asm-generic/bug.h>
>  #include <asm/hyperv-tlfs.h>
>  #include <asm/mshyperv.h>
>
> +
> +/*
> + * Functions for allocating and freeing memory with size and
> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> + * the guest page size may not be the same as the Hyper-V page
> + * size. And while kalloc() could allocate the memory, it does not
> + * guarantee the required alignment. So a separate small memory
> + * allocator is needed.  The free function is rarely used, so it
> + * does not try to combine freed pages into larger chunks.

Is this still needed now that kmalloc has alignment guarantees
(see 59bb47985c1d)?

         M.
-- 
Jazz is not dead. It just smells funny...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
