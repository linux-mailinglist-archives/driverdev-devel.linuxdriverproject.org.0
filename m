Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 703FF32F30
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B1AB220C1;
	Mon,  3 Jun 2019 12:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AVF--+O4T2XE; Mon,  3 Jun 2019 12:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81630220D0;
	Mon,  3 Jun 2019 12:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5581BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A99387532
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cuvFtjqm5-XH for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:06:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73247860BC
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:06:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6E952500E;
 Mon,  3 Jun 2019 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559563566;
 bh=EKhNyBAfNxOKEhvdrjWPO+lRER7We/ReqFPk94xj26Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uN1m9V1POrSWguPHinx3MUCOXQraw0IgJJ3xgHaampPd5OiVVQRaaiUvGFxAwq9uV
 zHQPrZLNHYIUYBN8DC+nnl7zdYweYE4+ud6/t6HWVgJbqLMQQnWTzu/v7k0rTT5Pbj
 ceJo8Sh4vvOTYAmgM1a1cIyzSI0kdWxnDHKxP9VI=
Date: Mon, 3 Jun 2019 14:06:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tobias =?iso-8859-1?Q?Nie=DFen?= <tobias.niessen@stud.uni-hannover.de>
Subject: Re: [PATCH] Improve code style in drivers/staging/rts5208
Message-ID: <20190603120603.GA23013@kroah.com>
References: <20190603114350.32242-1-tobias.niessen@stud.uni-hannover.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603114350.32242-1-tobias.niessen@stud.uni-hannover.de>
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
Cc: devel@driverdev.osuosl.org, Sabrina Gaube <sabrina-gaube@web.de>,
 linux-kernel@vger.kernel.org, linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 01:43:50PM +0200, Tobias Nie=DFen wrote:
> These changes to sd.c and xd.c slightly improve the code style and
> reduce the overall line length.
> =

> Signed-off-by: Tobias Nie=DFen <tobias.niessen@stud.uni-hannover.de>
> Signed-off-by: Sabrina Gaube <sabrina-gaube@web.de>
> ---
>  drivers/staging/rts5208/sd.c | 23 +++++++++++------------
>  drivers/staging/rts5208/xd.c |  8 ++++----
>  2 files changed, 15 insertions(+), 16 deletions(-)

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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

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
