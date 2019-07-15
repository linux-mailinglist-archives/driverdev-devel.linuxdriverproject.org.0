Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0A69BC6
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE08A86C34;
	Mon, 15 Jul 2019 19:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ET91zpj0bJ7G; Mon, 15 Jul 2019 19:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD9A686BE0;
	Mon, 15 Jul 2019 19:56:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42F2B1BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FDC381EF6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GuNHY8haPoQD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D847F815BC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:27 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 139A620665;
 Mon, 15 Jul 2019 19:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220587;
 bh=6qqfVTErwDHfNOAhXwZqSXRTPTvm3a2GaP6Vqp7Sq+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QisQqZTniIPCzLqc8Mkcf9zxM7lrEF+5HKzbtyltTkSOsiVrk1AKzAemwDPeGk8Fz
 1H4JwI9ZlWn11Q9RxwaQ/B3T4kox1BJzmxFwGB7Qxt+f5rdRlHEk+i+qB4Gzp94t9Q
 GI8ZUSfrDZ81m8D5bdINpzOb9frywEbtdCYxNEhc=
Date: Mon, 15 Jul 2019 21:43:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: rtl871x_xmit.c: Fix some CHECK and
 WARNING
Message-ID: <20190715194308.GF26092@kroah.com>
References: <20190715171704.9651-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715171704.9651-1-christianluciano.m@gmail.com>
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
Cc: florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 02:17:04PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Fix: line over 80 characters
>      space unnecesary after cast
>      alignment match open parenthesis
>      comparison to NULL
> Those warnings and check were reported by checkpatch.
> 
> Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_xmit.c | 100 ++++++++++++-------------
>  1 file changed, 50 insertions(+), 50 deletions(-)

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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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
