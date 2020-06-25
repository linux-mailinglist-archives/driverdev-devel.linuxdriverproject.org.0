Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A6320A3B0
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 19:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7C7385DDC;
	Thu, 25 Jun 2020 17:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qz87nnhQooU; Thu, 25 Jun 2020 17:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 841FE85A60;
	Thu, 25 Jun 2020 17:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4826F1BF336
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 17:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4385587F3E
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 17:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42o0aJlIw+OF for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 17:07:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 981A887ED7
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 17:07:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB7F520707;
 Thu, 25 Jun 2020 17:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593104841;
 bh=EMzGjcfL2NohlkRbBIHJ19RakYEx5lPHd+BKbAjeI5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PbpICURGfnxUpz3FOfLxcaobtHhnuAs+U27iSH3NkjvVkdck+A139uzKARjt+GXe9
 W6lJifOYsPEZMTsWcUEX7izn3CCztcytSJsV6YHlFjOHpVoLBmPjn4KeuiwOlEQWmv
 EFN4QxkHU3xBgwNsGNezVmW7ltDLPjj7w6iM6g4s=
Date: Thu, 25 Jun 2020 19:07:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH 1/1] staging: media: soc_camera: Adding parentheses to
 macro defination at line 241, Clearing alignment issues at lines 410 and
 1270, fixing return values at EPOLLERR
Message-ID: <20200625170717.GA3962702@kroah.com>
References: <20200625153516.fibpfsodnogrimlh@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625153516.fibpfsodnogrimlh@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 11:35:17AM -0400, B K Karthik wrote:
> staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
> "Macros with complex values should be enclosed in parentheses" in line 241 by adding parentheses.
> staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
> "Alignment should match open parenthesis" by adding tab spaces in line 410.
> staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
> "return of an errno should typically be negative" by adding a "-" in front of EPOLLER in line 812.
> staging: media: soc_camera: soc_camera.c: Clearing coding-style problem
> "Alignment should match open parenthesis" by adding tab spaces in line 1270.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/media/soc_camera/soc_camera.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

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
