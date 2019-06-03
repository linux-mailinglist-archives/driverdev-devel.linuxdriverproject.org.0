Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA35338D6
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 21:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3374785F9C;
	Mon,  3 Jun 2019 19:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEZ6cdt8irAY; Mon,  3 Jun 2019 19:05:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C945E8495A;
	Mon,  3 Jun 2019 19:05:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF111BF404
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 19:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C85385A1D
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 19:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3AAG2+fPCKC for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 19:05:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B59A81D5F
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 19:05:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B567326DF6;
 Mon,  3 Jun 2019 19:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559588700;
 bh=R8oH6TrNzNnKnXl40BLjxloa+JfMj2hBIL8vLlewyX4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jb25hMVLOuG+2146l3orHarP96UdmDO8nJiRUIL1Xy/WxTEr+hGXUaPPxVc90bmZx
 FfpEV8iLbt5sl36CBC6DIqyvl6+3p+Mz0Y/yjTPxX16QUlpEzrxTFODwIwbgCdyX/D
 TQNK3ROcfly0jIxHhUD3sWDnZAimv1IM5/5xquWU=
Date: Mon, 3 Jun 2019 21:04:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] Staging: emxx_udc: fix warning "sum of probable
 bitmasks, consider |"
Message-ID: <20190603190457.GA6487@kroah.com>
References: <20190603185412.GA11183@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603185412.GA11183@hari-Inspiron-1545>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Nishad Kamdar <nishadkamdar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 04, 2019 at 12:24:12AM +0530, Hariprasad Kelam wrote:
> Knowing the fact that operator '|' is faster than '+'.
> Its better we replace + with | in this case.
> 
> Issue reported by coccicheck
> drivers/staging/emxx_udc/emxx_udc.h:94:34-35: WARNING: sum of probable
> bitmasks, consider |
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index b8c3dee..88d6bda 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -91,7 +91,7 @@ int vbus_irq;
>  #define BIT30		0x40000000
>  #define BIT31		0x80000000

All of those BITXX defines should be removed and the "real" BIT(X) macro
used instead.

> -#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
> +#define TEST_FORCE_ENABLE		(BIT18 | BIT16)

It really doesn't matter, a good compiler will have already turned this
into a constant value so you really do not know if this is less/faster
code or not, right?

Did you look at the output to verify this actually changed anything?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
