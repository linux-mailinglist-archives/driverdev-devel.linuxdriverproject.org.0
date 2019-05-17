Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6CE217E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6FF6731525;
	Fri, 17 May 2019 11:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OdC6KSOPwJPr; Fri, 17 May 2019 11:50:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC9F731446;
	Fri, 17 May 2019 11:50:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6948A1BF30A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 663CC86C66
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMj5Nq4hqecz
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:50:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA62A865A1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:50:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1845E204FD;
 Fri, 17 May 2019 11:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558093816;
 bh=OVGbyfG/seovvEnBDJcsL6QtazM54UEImZ13ZYuADkg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k2KeqAGXY3VdDN7tK5yo/0NAs/pKOiMF3GkrcsCJF4XbIdk7H66AsSwExAyH3zyGQ
 4fTrFGC5BpPSUq5IKEzXOvAgVBddxpNfr5kSEwiAV9suJgWWz5zzZY79tS1Fj7eB66
 sSVhzOV3/YsTeJzcDgvqcvI7ZyDlMYzO4EmU1m7M=
Date: Fri, 17 May 2019 13:50:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v3 6/6] staging: kpc2000: use IDA to assign card numbers.
Message-ID: <20190517115013.GA662@kroah.com>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-7-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517110315.10646-7-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 12:03:15PM +0100, Jeremy Sowden wrote:
> Previously the next card number was assigned from a static int local
> variable, which was read and later incremented.  This was not thread-
> safe, so now we use an IDA instead.

An ida is not thread safe either.

But, you are onlyu touching this from the pci probe/release functions,
which are guaranteed to never race for a specific driver, so you could
use a static int if you were just worried about the race.

So the changelog really isn't correct here :(

> 
> Updated TODO.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/TODO           |  1 -
>  drivers/staging/kpc2000/kpc2000/core.c | 15 ++++++++++++---
>  2 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
> index 669fe5bf9637..47530e23e940 100644
> --- a/drivers/staging/kpc2000/TODO
> +++ b/drivers/staging/kpc2000/TODO
> @@ -1,6 +1,5 @@
>  - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
>  - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
> -- pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
>  - would be nice if the AIO fileops in kpc_dma could be made to work
>      - probably want to add a CONFIG_ option to control compilation of the AIO functions
>  - if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index 80141514f7d1..3a90cdad3eb4 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -1,4 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0+
> +#include <linux/idr.h>
>  #include <linux/init.h>
>  #include <linux/module.h>
>  #include <linux/pci.h>
> @@ -18,6 +19,7 @@
>  #include <linux/jiffies.h>
>  #include "pcie.h"
>  
> +static DEFINE_IDA(card_num_ida);
>  
>  /*******************************************************
>    * SysFS Attributes
> @@ -230,7 +232,6 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  {
>      int err = 0;
>      struct kp2000_device *pcard;
> -    static int card_count = 1;
>      int rv;
>      unsigned long reg_bar_phys_addr;
>      unsigned long reg_bar_phys_len;
> @@ -250,8 +251,13 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>      //}
>  
>      //{ Step 2: Initialize trivial pcard elements
> -    pcard->card_num = card_count;
> -    card_count++;
> +    rv = ida_simple_get(&card_num_ida, 1, INT_MAX, GFP_KERNEL);
> +    if (rv < 0) {
> +	err = rv;
> +	dev_err(&pdev->dev, "probe: failed to get card number (%d)\n", err);
> +	goto out2;
> +    }
> +    pcard->card_num = rv;

When writing new code, you could use the correct coding style please.

Why is 'rv' even needed here?  Just use err.

>      scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
>  
>      mutex_init(&pcard->sem);
> @@ -428,6 +434,8 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>      pci_disable_device(pcard->pdev);
>    out3:
>      unlock_card(pcard);
> +    ida_simple_remove(&card_num_ida, pcard->card_num);
> +  out2:
>      kfree(pcard);
>      return err;
>  }
> @@ -461,5 +469,6 @@ void  kp2000_pcie_remove(struct pci_dev *pdev)
>      pci_disable_device(pcard->pdev);
>      pci_set_drvdata(pdev, NULL);
>      unlock_card(pcard);
> +    ida_simple_remove(&card_num_ida, pcard->card_num);
>      kfree(pcard);
>  }

You forgot to call ida_destroy() when the module is unloaded :(

Yeah, it's not obvious, and is supposed to be fixed up soon, but for now
you still need to do that.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
