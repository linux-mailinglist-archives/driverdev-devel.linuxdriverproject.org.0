Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B630B2ABF6A
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 16:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20A26866AE;
	Mon,  9 Nov 2020 15:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVl3fwTa2RKZ; Mon,  9 Nov 2020 15:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D7B9868C2;
	Mon,  9 Nov 2020 15:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58F8C1BF3FC
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 15:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 463B08722B
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 15:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ekYrHJVhCcie for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 15:08:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF38F871EE
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 15:08:14 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE06120897;
 Mon,  9 Nov 2020 15:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604934494;
 bh=nfINWJfxcPYk6ZpHRVx6rLDwtPfT5Cpsv4ylttM5QEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yiLE6bpmoVAzbIp0ati4jJSZeuF+K8uEC8uQPLPGj+Baie8tMwLM2lnMI+8DQkUHX
 IoYmrofn8f5LmyDoVP5u4SUJ/54dBs/Gjyq5Pip2Xqzz1Ea7vlKewkdNQ4l0X/8FJv
 3ksL4O59Ih7n0aqZxxkOpbDFksAo508VW96v+sN0=
Date: Mon, 9 Nov 2020 16:07:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tabot Kevin <tabot.kevin@gmail.com>
Subject: Re: [PATCH] Fixed issues with alignment to open parenthesis.
Message-ID: <20201109150744.GA1984969@kroah.com>
References: <20201012010838.GA1406@tabot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012010838.GA1406@tabot>
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
Cc: devel@driverdev.osuosl.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 12, 2020 at 02:08:38AM +0100, Tabot Kevin wrote:
> This patch fixes the following:
> - Made sure alignment matched open parenthesis.
> 
> Signed-off-by: Tabot Kevin <tabot.kevin@gmail.com>
> ---
>  drivers/staging/greybus/audio_module.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
> index c52c4f3..a243d60 100644
> --- a/drivers/staging/greybus/audio_module.c
> +++ b/drivers/staging/greybus/audio_module.c

Please use scripts/get_maintainer.pl to know who to cc: on a patch.

And look at other changes for this file, and copy the subject prefix for
them:

$ git log --oneline drivers/staging/greybus/audio_module.c | head
50a390ad1512 staging: greybus: fix warnings about endianness detected by sparse
ac40b4d1e409 staging: greybus: audio: Maintain jack list within GB Audio module
8478c35a858c staging: greybus: Parenthesis alignment
863dbc52e7f0 staging: greybus: Remove redundant license text
eb50fd3a22c7 staging: greybus: add SPDX identifiers to all greybus driver files
055fb9ce92d5 staging: greybus: audio: Ensure proper byte order
3282998c8010 staging: greybus: audio_module: remove redundant OOM message
49b9137a6002 staging: greybus: audio: remove redundant slot field
d0af1bd5f6f4 staging: greybus: audio: Rename cport with intf_id
948c6227e76e staging: greybus: remove CONFIG_PM_RUNTIME from kernel_ver.h

Can you fix that up and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
