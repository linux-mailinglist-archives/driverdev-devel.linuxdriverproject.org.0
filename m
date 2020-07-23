Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CD722AAA6
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 10:30:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D247C89B3B;
	Thu, 23 Jul 2020 08:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5veXG1qhuwX; Thu, 23 Jul 2020 08:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C4EA89B33;
	Thu, 23 Jul 2020 08:30:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39AF81BF3A6
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 08:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34FB889B33
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 08:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sUxQD9koBld3 for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 08:30:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B92289B2C
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 08:30:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C59F120768;
 Thu, 23 Jul 2020 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595493034;
 bh=mPYqTowX5vor6nLpyE1VROCULLbUPdSd3qfv92B4MpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CA3E/h62M0dkPEcInzOMtb9f2PDv/UzMr12wB/dHq48x/h3qjbmGRXoIFahFOAJtE
 XkKfo2Jpa5pKk0QvFGOjB6POf4IsE88jB6pOiVzXHJSx6E6YS+JE8RqaUxVlbZHRFL
 MY9/Jz7gLNlyQnUlyE/Lm5L4+mP0a5GrYTYVhccs=
Date: Thu, 23 Jul 2020 10:30:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: octeon: Add the license identifier
Message-ID: <20200723083038.GA1525929@kroah.com>
References: <20200722153953.GA8148@PKL-UANJUM-LT.pkl.mentorg.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722153953.GA8148@PKL-UANJUM-LT.pkl.mentorg.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 22, 2020 at 08:39:53PM +0500, Muhammad Usama Anjum wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Missing or malformed SPDX-License-Identifier tag
> 
> Add a the SPDX-License-Identifier tag on line 1
> 
> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index d06743504f2b..889b7c80666d 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +

How do you know this is the correct license for this file?

Please include how you came to this decision in the changelog text when
you resend it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
