Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2383B248788
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0DD01FE2F;
	Tue, 18 Aug 2020 14:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jz3DJdz7jqcv; Tue, 18 Aug 2020 14:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F4F3203F8;
	Tue, 18 Aug 2020 14:29:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC2FB1BF23B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8CE284E42
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9ZPmeR6NqF8 for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB0CD84DD5
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=VZDYV+ciZiiGk6QTWs9Cp9XFnW9zNuBEfYzoE+JwROc=; b=BntgZ1r7vQGNVtI9n4W/8TiXi8
 efkW53rJGrZnaXAT2K3r/3yGyypLaMP0r4Tnvwsscc3UirzQJ9b1iwVBfdaBc1aG7ZNd7iMwtT+cx
 8hPTAVY5hcvQnXQbBZVaw9VW1Y+rvev/z1g1FFlxEYLWQ7WQRSWMvRBQvKkhYFxHw1VWuYBJFKhnV
 pj3dpUHU7b0wGBH7nY0lC+8eiaLiNsDO0zQA+DHuHNawkR+aeTt7WDQqIse/a1lQpKYEEiGU/36sX
 kKtc7n8kds0LXQ49WBDf/TmodmPVO3iQCkCQLHU8wu7ve7h40MOJ48qNu8GY7sverTumL73r82W70
 2nXij/PQ==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82bp-0007nI-Km; Tue, 18 Aug 2020 14:29:06 +0000
Subject: Re: [PATCH] staging: emxx_udc: Use standard BIT() macro
To: Alex Dewar <alex.dewar90@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200818134922.409195-1-alex.dewar90@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <baecb36e-1f82-1e0e-6460-d6759a9193c1@infradead.org>
Date: Tue, 18 Aug 2020 07:29:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200818134922.409195-1-alex.dewar90@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/18/20 6:49 AM, Alex Dewar wrote:
> Currently emxx_udc.h defines bit values using local macros. Use the
> standard one instead.
> 
> Also, combine bit values with bitwise-or rather than addition, as
> suggested by Coccinelle.
> 
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>

Hi,

Does this build?  Just checking.

Looks like it would need this:

#include <linux/bits.h>

since it (indirectly) provides definition of the BIT() macro.

> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 456 +++++++++++++---------------
>  1 file changed, 211 insertions(+), 245 deletions(-)


thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
