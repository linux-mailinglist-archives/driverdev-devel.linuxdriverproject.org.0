Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6584CD8CA
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FCF286970;
	Sun,  6 Oct 2019 19:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XF7OvpuCYpPr; Sun,  6 Oct 2019 19:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9B168682F;
	Sun,  6 Oct 2019 19:07:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 554841BF23C
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F93F204C0
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLjWSVqk2nA5 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:07:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8EC1E20401
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:07:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7BD02080F;
 Sun,  6 Oct 2019 19:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570388849;
 bh=1+a1P86vDBZFDcgIKM5nCAuEzuynge9LZ7okl9r776E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ed/zLDbhWVeyQY9RO4BBK/h/N8GZJEmTTwD0Y/+QDduhVITMdUtUHb8FISwMJVBPm
 dn7jFIX4hJ2s5jnourG5SrVVORfn41maPTfyGQNim695z0TRstmE/wTepZDvZfaCF5
 /ySNsv+pnLcJhEPFrJqPEQBiThOvR11qFg6YAlMw=
Date: Sun, 6 Oct 2019 21:07:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: comedi: Capitalize macro name to fix camelcase
 checkpatch warning
Message-ID: <20191006190726.GB237538@kroah.com>
References: <20191006184903.12089-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006184903.12089-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 abbotti@mev.co.uk, linux-kernel@vger.kernel.org, olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 07:49:03PM +0100, Jules Irenge wrote:
> Capitalize RANGE_mA to fix camelcase check warning.
> Issue reported by checkpatch.pl
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h           | 2 +-
>  drivers/staging/comedi/drivers/adv_pci1724.c | 4 ++--
>  drivers/staging/comedi/drivers/dac02.c       | 2 +-
>  drivers/staging/comedi/range.c               | 6 +++---
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
> index 54c091866777..2fc536db203c 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>  
>  #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
> +#define RANGE_MA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}

Did you send this patch twice?

Anyway, this is the units "mA", which needs to be "mA" for obvious
reasons.  Sorry, checkpatch is wrong in thsi case.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
