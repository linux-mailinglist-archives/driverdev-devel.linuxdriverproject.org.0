Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CBC11A56D
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 08:52:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28B91884DD;
	Wed, 11 Dec 2019 07:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RvjlFc-0J2CF; Wed, 11 Dec 2019 07:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 227C9883CD;
	Wed, 11 Dec 2019 07:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D7E31BF3C3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A02186AA5
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnMPxm-FGNbs for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 07:52:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 980E586A88
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 07:52:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECD192077B;
 Wed, 11 Dec 2019 07:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576050724;
 bh=0paeYi5T7sFJPY0iTspixJuGiLmx9YdcmU5o/l4jz1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gd5BK7NRg5rMk3+kQjpCV+GlpPNH1KY91CWljHfomvBGzctP/BnFQhwtVSXcvauyP
 C1nzzd1I0Bdqosa0nOp6XpMgrzgouViUku0b2hXa+Jrkvyg7W/cwsWz3hr4rYbr72p
 dE0LM22ufWubfWgK/AIz1KNbz45icMEJq0BEB8nI=
Date: Wed, 11 Dec 2019 08:52:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 076/350] staging/octeon: Use stubs for MIPS
 && !CAVIUM_OCTEON_SOC
Message-ID: <20191211075201.GK398293@kroah.com>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-37-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210210735.9077-37-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Paul Burton <paul.burton@mips.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, stable@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 04:03:01PM -0500, Sasha Levin wrote:
> From: Paul Burton <paul.burton@mips.com>
> 
> [ Upstream commit 17a29fea086ba18b000d28439bd5cb4f2b0a527b ]
> 
> When building for a non-Cavium MIPS system with COMPILE_TEST=y, the
> Octeon ethernet driver hits a number of issues due to use of macros
> provided only for CONFIG_CAVIUM_OCTEON_SOC=y configurations. For
> example:
> 
>   drivers/staging/octeon/ethernet-rx.c:190:6: error:
>     'CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE' undeclared (first use in this function)
>   drivers/staging/octeon/ethernet-rx.c:472:25: error:
>     'OCTEON_IRQ_WORKQ0' undeclared (first use in this function)
> 
> These come from various asm/ headers that a non-Octeon build will be
> using a non-Octeon version of.
> 
> Fix this by using the octeon-stubs.h header for non-Cavium MIPS builds,
> and only using the real asm/octeon/ headers when building a Cavium
> Octeon kernel configuration.
> 
> This requires that octeon-stubs.h doesn't redefine XKPHYS_TO_PHYS, which
> is defined for MIPS by asm/addrspace.h which is pulled in by many other
> common asm/ headers.
> 
> Signed-off-by: Paul Burton <paul.burton@mips.com>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> URL: https://lore.kernel.org/linux-mips/CAMuHMdXvu+BppwzsU9imNWVKea_hoLcRt9N+a29Q-QsjW=ip2g@mail.gmail.com/
> Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: David S. Miller <davem@davemloft.net>
> 
> Link: https://lore.kernel.org/r/20191007231741.2012860-1-paul.burton@mips.com
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/staging/octeon/octeon-ethernet.h | 2 +-
>  drivers/staging/octeon/octeon-stubs.h    | 5 ++++-
>  2 files changed, 5 insertions(+), 2 deletions(-)

I think this broke the build for 5.5-rc1, so no, please do not include
this.  This driver is about to be deleted (see the discussion on the
staging mailing list for details), so this patch can be dropped.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
