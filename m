Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A852F804A6
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:24:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C36D86FC1;
	Sat,  3 Aug 2019 06:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2xaaF2oAyaR; Sat,  3 Aug 2019 06:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30D7086E5E;
	Sat,  3 Aug 2019 06:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45D261BF401
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FEEC86E5E
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXuRlxXhS-40 for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:24:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9911E86E41
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:24:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7C4E2087C;
 Sat,  3 Aug 2019 06:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564813477;
 bh=fpNScs+MHTf7w01QKi3dsBPtHieQZxhSWLqi9kwhYkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kbrugMEiFk0q6RUBzHE2KRiLg/W1FI7A/GJVyZkXxWNR6Njw4Q0n6i4Tq2ohlrWIf
 ujUGCJYikOZGyTdGtyGpNhJ9vADWPA86BM+ouzKyvcesZnxyvsW3VVk+KFIWGyMQFD
 WIbGQuK/eWGbb+ryLb75czFA+MyRyrab5myWduZM=
Date: Sat, 3 Aug 2019 08:24:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
Subject: Re: [PATCH] rtl8188eu: hal: phy.c
Message-ID: <20190803062434.GA9160@kroah.com>
References: <20190802210018.29251-1-joseespiriki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802210018.29251-1-joseespiriki@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lkcamp@lists.libreplanetbr.org,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 09:00:18PM +0000, Jose Carlos Cazarin Filho wrote:
> Fix a lot of checkpath errors of the type:
> 	-CHECK: spaces preferred around that
> 	-CHECK: Alignment should match open parenthesis
> 
> Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> ---
>  My second commit to the kernel, I know you ppl don't like these kind of commits
>  fixing style-only erros pointed by the checkpath, but I'm doing this just to learn
>  Thanks!
>  drivers/staging/rtl8188eu/hal/phy.c | 54 ++++++++++++++---------------
>  1 file changed, 27 insertions(+), 27 deletions(-)

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
