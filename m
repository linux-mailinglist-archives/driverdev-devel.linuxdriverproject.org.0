Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB31E10ED86
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 17:52:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BB632155E;
	Mon,  2 Dec 2019 16:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xL2T9BsBGX+3; Mon,  2 Dec 2019 16:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B038E1FEE0;
	Mon,  2 Dec 2019 16:52:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B72011BF315
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 16:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B32F020020
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 16:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lM8YM2m09ykU for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 16:52:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D5811FEE0
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 16:52:34 +0000 (UTC)
Received: from localhost (unknown [84.241.196.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D49942070B;
 Mon,  2 Dec 2019 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575305554;
 bh=xJBJvSL3GUEfnOnsDo3rzGZ6aEPZyboM5lRyhSJW4Eo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a1FnBeHviNvR/pCrAAXdaUNMILZKPdQpMdlBjbr66FQ5jEKQDot4LeBle1LwAPHOD
 Ti3c+TqzrAj0xa1R6aFlNiPW4wMoD872WIqdF2nvHKGWQF9KQcQJjA2dZXvLCd8+99
 AoIPJW9IgaIKbld8iy8k2BzFKFBhsNQwQksee+Ow=
Date: Mon, 2 Dec 2019 17:52:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Message-ID: <20191202165231.GA728202@kroah.com>
References: <20191202141836.9363-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202141836.9363-1-linux@roeck-us.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 02, 2019 at 06:18:36AM -0800, Guenter Roeck wrote:
> The code doesn't compile due to incompatible pointer errors such as
> 
> drivers/staging/octeon/ethernet-tx.c:649:50: error:
> 	passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type
> 
> This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.
> 
> Unfortunately, one can not just revert the primary offending commit, as doing so
> results in secondary errors. This is made worse by the fact that the "removed"
> typedefs still exist and are used widely outside the staging directory,
> making the entire set of "remove typedef" changes pointless and wrong.

Ugh, sorry about that.

> Reflect reality and mark the driver as BROKEN.

Should I just delete this thing?  No one seems to be using it and there
is no move to get it out of staging at all.

Will anyone actually miss it?  It can always come back of someone
does...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
