Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D877844F73F
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 09:37:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2247280E0F;
	Sun, 14 Nov 2021 08:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkqdF_76wTkN; Sun, 14 Nov 2021 08:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51D0580E0C;
	Sun, 14 Nov 2021 08:37:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF62C1BF2AA
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 08:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBCCF6060F
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 08:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSAK8q3x4m24 for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 08:37:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C10BC6060E
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 08:37:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD90060E8B;
 Sun, 14 Nov 2021 08:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636879052;
 bh=TgzoCPwmF9eCJlP283+PFkAjEuCZ6XjtsKW6oY9wVwA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sWT3DM1BQ79UoPxsUTFjq2tpM/KgpWcRsC2PUBW3+0yVdMzbu9rNmchl1FjYthFNu
 lBkghc+cMjZOglav9YXoTGDvo5WyoQ5YS9PSub78fCAgvY6LCI/usdI36GsO1O+2cN
 gUnFWWjX3TZ1Sol7acBiWToJpphuZwLa0pvZ+adY=
Date: Sun, 14 Nov 2021 09:37:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v2] staging: vt6655: fix camelcase in wCurrentRate
Message-ID: <YZDKyAf3c3kI0Lyo@kroah.com>
References: <20211114082029.GA118847@t470p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211114082029.GA118847@t470p>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 14, 2021 at 09:20:29AM +0100, Alberto Merciai wrote:
> Replace camelcase word variable "wCurrentRate" into linux kernel coding
> style equivalent "current_rate".
> 
> References:
> https://www.kernel.org/doc/html/latest/process/coding-style.html
> https://www.cse.iitk.ac.in/users/dsrkg/cs245/html/Guide.htm
> 
> Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> ---
>  drivers/staging/vt6655/device.h      |   2 +-
>  drivers/staging/vt6655/device_main.c |  12 +--
>  drivers/staging/vt6655/rxtx.c        | 134 +++++++++++++--------------
>  3 files changed, 74 insertions(+), 74 deletions(-)


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
