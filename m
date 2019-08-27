Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A39E0E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 10:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99EF48695E;
	Tue, 27 Aug 2019 08:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y8V_Px8cfrNy; Tue, 27 Aug 2019 08:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD7DF8586A;
	Tue, 27 Aug 2019 08:09:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9074D1BF29E
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DC7F88389
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOZc3H6-QC9U for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 08:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42F5388386
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 08:09:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB51D2184D;
 Tue, 27 Aug 2019 08:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566893376;
 bh=xeEo/MfNpk6Uz7mw6BDjWahzBUPG8cMBEdzoxcXEJwY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ay+ZOT9rC7VN9Bvl+845jEX+pHHHfAcXumQaog+rqH24MrRyFfEC6Zgw9RaSDvkRZ
 OU4I4iEQs3pfWeliV43b5tJVGe16mAJbkfu0o8KLLUrKRaB0Aro0uTS8RUSUNSn419
 1M0TPuqm7H3vyAeXbdv4RRTADAhuNSY0qf7AA97Y=
Date: Tue, 27 Aug 2019 10:08:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Peikan Tsai <peikantsai@gmail.com>
Subject: Re: [PATCH] staging: most-core: Fix checkpatch warnings
Message-ID: <20190827080825.GA27271@kroah.com>
References: <20190825175849.GA74586@MarkdeMacBook-Pro.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825175849.GA74586@MarkdeMacBook-Pro.local>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, suzuki.poulose@arm.com, gustavo@embeddedor.com,
 linux-kernel@vger.kernel.org, colin.king@canonical.com,
 christian.gromm@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 26, 2019 at 01:58:49AM +0800, Peikan Tsai wrote:
> Hi,
> 
> This patch solves the following checkpatch.pl's messages in drivers/staging/most/core.c.
> 
> WARNING: line over 80 characters
> +			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
> 
> CHECK: Please use a blank line after function/struct/union/enum declarations
> +}
> +/**
> 
> Signed-off-by: Peikan Tsai <peikantsai@gmail.com>
> ---
>  drivers/staging/most/core.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Normally we want only one "type" of cleanup per patch, but this is so
tiny I'll just take it as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
