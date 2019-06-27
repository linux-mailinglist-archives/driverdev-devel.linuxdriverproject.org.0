Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6730958784
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 18:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1E2422274;
	Thu, 27 Jun 2019 16:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HRF4RKUrS8S; Thu, 27 Jun 2019 16:45:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF99221D9;
	Thu, 27 Jun 2019 16:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFDFC1BF3AA
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 16:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DD2CD87EC5
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 16:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRACUxGCEGvc for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 16:45:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78A2B87EC0
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 16:45:38 +0000 (UTC)
Received: from localhost (unknown [89.205.136.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F7AF208E3;
 Thu, 27 Jun 2019 16:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561653938;
 bh=geHfnday87zNNky0QEbADc/hTpwmSuzIZW5jJZ3ablM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G1/2TT0Op2kmdJV+PC4+qVKjpkcv+gw4l0jowUzihDbjl05OnzBWvOuUp0KlknhqY
 WEhHTLWUDU3goqzljCcPkHCd0cjCwyC6+kOR9i8NpaUVTqh41WW9tMmqbpBk0oOZyX
 WuLXo9ut2pCJgvOW1FI4fIrGM66vw3tAbgyPV95s=
Date: Fri, 28 Jun 2019 00:45:30 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH v2 1/2] drivers/staging/rtl8192u: drop first comment line
Message-ID: <20190627164530.GD9692@kroah.com>
References: <20190626015301.GA30966@kroah.com>
 <20190627083336.3897-1-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627083336.3897-1-muellerch-privat@web.de>
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
Cc: devel@driverdev.osuosl.org, Felix Trommer <felix.trommer@hotmail.de>,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 10:33:35AM +0200, Christian M=FCller wrote:
> As stated in coding-styles.rst multiline comments should be structured in=
 a way,
> that the actual comment starts on the second line of the commented portio=
n. E.g:
> =

> /*
>  * Multiline comments
>  * should look like
>  * this.
>  */
> =

> However, there is an exception to files in drivers/net/ and net/, where
> multiline comments are prefered to look like this:
> =

> /* Mutliline comments for
>  * drivers/net/ should look
>  * like this.
>  */
> =

> The comments in this file initially looked like the first example.
> But since this file is part of a networking driver and thus should
> be moved to drivers/net/ one day, this patch adjusts the comments
> such that they are fitting to the style imposed for drivers/net/.
> =

> Signed-off-by: Christian M=FCller <muellerch-privat@web.de>
> Signed-off-by: Felix Trommer <felix.trommer@hotmail.de>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 69 ++++++++++------------------
>  1 file changed, 23 insertions(+), 46 deletions(-)

What changed from v1?  That always goes below the --- line.

Please fix up and send v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
