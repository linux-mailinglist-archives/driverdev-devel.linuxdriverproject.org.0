Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC65196CFC
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6BC787666;
	Tue, 20 Aug 2019 23:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dTI4bu9n5g2z; Tue, 20 Aug 2019 23:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A854B877A7;
	Tue, 20 Aug 2019 23:17:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8F5F1BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5F65869C8
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pGzzuhEvuMir for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:17:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FB03869B7
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:17:17 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCE2A2332B;
 Tue, 20 Aug 2019 23:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566343037;
 bh=CYqLG2yyf3Oj+6GRNfljZ+NgviW0JS9UplmVKcdHjsI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B0ZfYQdgEVeypPJTzOt4tR+HmgBp5JQIDtYRiei/V1OT7dmDOs1Gyr3Mc+ossWemj
 +ts1/vOwb23Uu50f6OZuJb7XjLujQVVHYu7EG7OufRSnI7fuWd37Y6me5x/CHBf/5D
 45GDShPdbirkzGd3a6VCJwFnD4T2+61TvgAf1nEE=
Date: Tue, 20 Aug 2019 16:17:10 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Brennan <stephen@brennan.io>
Subject: Re: [PATCH 1/3] staging: rtl8192u: fix OPEN_BRACE errors in ieee80211
Message-ID: <20190820231710.GA27451@kroah.com>
References: <20190820231156.30031-1-stephen@brennan.io>
 <20190820231156.30031-2-stephen@brennan.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820231156.30031-2-stephen@brennan.io>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 04:11:54PM -0700, Stephen Brennan wrote:
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---

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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

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
