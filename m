Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1783122E2
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 09:51:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 76C8920523;
	Sun,  7 Feb 2021 08:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ugk0KrHnzKDf; Sun,  7 Feb 2021 08:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8DB6F20108;
	Sun,  7 Feb 2021 08:51:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 269921BF966
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 22DF2867AC
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI-fJCnkd4Ss for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 08:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8622C867A3
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 08:51:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B565A60201;
 Sun,  7 Feb 2021 08:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612687887;
 bh=Te2f4LJDttBiHNlXfp8cuIwD/nJSEOIrmPUWFUIQbyE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bCURj3U16A6PD+/cRP8aZMJ+sEswhPCw5gsEPMo5MAr8oHySYQsZvbzjrUffZuZxU
 enax1niJnUNrun5cR1WFMP74I5H4MP0/w2uvoQ4KXBiNa/umz6PDWQ48TbVdQbZsfA
 UDEZG+bSqKZpbHs2vhqRFrnrMzvIuRn6BFvyJ1Lk=
Date: Sun, 7 Feb 2021 09:51:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH v2] staging: emxx_udc: Make incorrectly defined global
 static
Message-ID: <YB+qDND2OmY8WwA0@kroah.com>
References: <YB+l1t/k4VuSw3B9@kroah.com>
 <20210207084658.269898-1-memxor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207084658.269898-1-memxor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 02:16:58PM +0530, Kumar Kartikeya Dwivedi wrote:
> The global gpio_desc pointer and int vbus_irq were defined in the header,
> instead put the definitions in the translation unit and make them static as
> there's only a single consumer, and these symbols shouldn't pollute the
> global namespace.
> 
> This fixes the following sparse warnings for this driver:
> drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
> drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
> declared. Should it be static?  drivers/staging/emxx_udc/emxx_udc.h:24:5:
> warning: symbol 'vbus_irq' was not declared. Should it be static?
> 
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 3 +++
>  drivers/staging/emxx_udc/emxx_udc.h | 2 --
>  2 files changed, 3 insertions(+), 2 deletions(-)

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
