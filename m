Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 644DB30F763
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 17:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5183086CC1;
	Thu,  4 Feb 2021 16:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B1COskwyeM86; Thu,  4 Feb 2021 16:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8223E86B6C;
	Thu,  4 Feb 2021 16:15:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AFDD1BF410
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9264686B6C
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiQ6jyYNnI87 for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 16:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB1C386B17
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 16:15:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F219B64F46;
 Thu,  4 Feb 2021 16:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612455307;
 bh=jSR+H2Se7RwSPIQ6c8R1g7IEE/b08qVRfo7IMR76jI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VGH6P1BQ2eHG1hty/IFQNVUKQxzv2eZt3/VSB+Qnp3uIIpfvAxm0muRUlkXeK49SD
 coQNlOoyrEjShdzxyYbnyFopg+Jd6cyiWofV1IPD/UjtihkkGDjxOWBXbtXNHal9a5
 867rCWNC0U0vCwpncrUlbt/jbwDUWGMMV9vLtqmQ=
Date: Thu, 4 Feb 2021 17:15:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush <ayush@disroot.org>
Subject: Re: [PATCH] staging: media: atomisp: fix coding style issues in
 timer.c
Message-ID: <YBwdiIgrMGIpziEA@kroah.com>
References: <20210131182529.112629-1-ayush@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131182529.112629-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 31, 2021 at 11:55:29PM +0530, Ayush wrote:
> - Fix unneeded brace in if condition(also, brace was on next line).
> - Fix leading space warning before struct ia_css_clock_tick *curr_ts.
> 
> compile tested only (on next-20210129)
> 
> Signed-off-by: Ayush <ayush@disroot.org>
> ---
>  .../staging/media/atomisp/pci/runtime/timer/src/timer.c    | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)


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
