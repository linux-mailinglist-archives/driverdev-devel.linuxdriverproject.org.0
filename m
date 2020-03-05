Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A54917A4F3
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 13:12:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 778ED21532;
	Thu,  5 Mar 2020 12:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6juQWhYz6zl; Thu,  5 Mar 2020 12:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BEDF121511;
	Thu,  5 Mar 2020 12:11:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C10381BF31F
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 12:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA58E860D1
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 12:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgSzgijZCy9a for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 12:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FDC785F98
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 12:11:53 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0F5D6B080;
 Thu,  5 Mar 2020 12:11:50 +0000 (UTC)
Subject: Re: [PATCH 2/2] mm/vma: Introduce VM_ACCESS_FLAGS
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1583391014-8170-1-git-send-email-anshuman.khandual@arm.com>
 <1583391014-8170-3-git-send-email-anshuman.khandual@arm.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <b3ab3943-7c3a-9c0a-17ba-bea254c5d5df@suse.cz>
Date: Thu, 5 Mar 2020 13:11:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583391014-8170-3-git-send-email-anshuman.khandual@arm.com>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, hughd@google.com,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 linux-kernel@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Rob Springer <rspringer@google.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Mark Salter <msalter@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/5/20 7:50 AM, Anshuman Khandual wrote:
> There are many places where all basic VMA access flags (read, write, exec)
> are initialized or checked against as a group. One such example is during
> page fault. Existing vma_is_accessible() wrapper already creates the notion
> of VMA accessibility as a group access permissions. Hence lets just create
> VM_ACCESS_FLAGS (VM_READ|VM_WRITE|VM_EXEC) which will not only reduce code
> duplication but also extend the VMA accessibility concept in general.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Mark Salter <msalter@redhat.com>
> Cc: Nick Hu <nickhu@andestech.com>
> CC: Ley Foon Tan <ley.foon.tan@intel.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Guan Xuetao <gxt@pku.edu.cn>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Rob Springer <rspringer@google.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: devel@driverdev.osuosl.org
> Cc: linux-mm@kvack.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Reviewed-by: Vlastimil Babka <vbabka@suse.cz>

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
