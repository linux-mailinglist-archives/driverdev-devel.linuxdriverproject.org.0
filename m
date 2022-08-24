Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0502F59F3D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Aug 2022 09:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA7D60736;
	Wed, 24 Aug 2022 07:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEA7D60736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5hSV1g7NcdSV; Wed, 24 Aug 2022 07:00:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67E526059C;
	Wed, 24 Aug 2022 07:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67E526059C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AFA21BF2BE
 for <devel@linuxdriverproject.org>; Wed, 24 Aug 2022 07:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6AC581391
 for <devel@linuxdriverproject.org>; Wed, 24 Aug 2022 07:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6AC581391
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVfJ2U29tisU for <devel@linuxdriverproject.org>;
 Wed, 24 Aug 2022 07:00:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AAF381390
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AAF381390
 for <devel@driverdev.osuosl.org>; Wed, 24 Aug 2022 07:00:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 244EBCE2208;
 Wed, 24 Aug 2022 06:59:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F278C433C1;
 Wed, 24 Aug 2022 06:59:56 +0000 (UTC)
Date: Wed, 24 Aug 2022 08:59:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Subject: Re: Confirmation for subscribe linux-usb
Message-ID: <YwXMaUexmgIrnI4W@kroah.com>
References: <S240916AbiHWHMh/20220823071237Z+20120@vger.kernel.org>
 <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com>
 <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1661324396;
 bh=kUhuHogZRdcbp2ZJRCL/8SIulY/GyA5TeDzl1V6BBgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x+kdHtYBKuP3Eijlysoi+VdnEELMuRIzTVB8DRlYxNVc5K37RIf4ysXNrHoozVk/H
 FO3GtHpHt3rrHPXd8MBCX4n9iUaHmg+Jzt22CM5XO+e9U5k6Gd9pcTPZUj2bSdrfPr
 +2xRT81FVds52OQxNVJm3rlxpY3YVxduGL0m9yXA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=x+kdHtYB
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
Cc: devel@driverdev.osuosl.org, usb-storage@lists.one-eyed-alien.net,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 24, 2022 at 02:36:55PM +0800, Hu Xiaoying wrote:
> submit patch
> 

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

- Your patch was attached, please place it inline so that it can be
  applied directly from the email message itself.

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
