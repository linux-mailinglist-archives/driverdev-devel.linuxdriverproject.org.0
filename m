Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC2D32FC47
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 18:26:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F7FA83955;
	Sat,  6 Mar 2021 17:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SsfVaqk9X7s; Sat,  6 Mar 2021 17:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56DBF836C8;
	Sat,  6 Mar 2021 17:26:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 347FB1BF313
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 17:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23DAD6064B
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 17:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kroah.com header.b="wLL8kHKg";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="Ixai+4xN"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q32ORN00nl23 for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 17:26:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E68F9605E2
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 17:26:10 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 670132918;
 Sat,  6 Mar 2021 12:26:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sat, 06 Mar 2021 12:26:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=PGwBIPF5IiqJcixqzcqLpEj81T8
 qJhkY5ns3fEHL59M=; b=wLL8kHKgVP7cIt4/5aCfj69xz4+hdb4HErbWVrvUXaM
 GbQlWOKS6R64mAbLhUhDiMFvxENFVemx9BcjZy1L5NGmlbp3547IlkbXmaA4rXz5
 s48VyxhYjQRk2Xaor92tjNnd998RQX6yhyJVF+s4CbtTAcdWPPAJ1uLgqHlcHf8V
 lN9Y6busvn85MmlcziZl3g27bKtb9hUKEahUxpZni1uTCpBzf6HFWlfhm1t4Npb+
 sP0BQae7vX41Qp91r3XNpPDVjiKRlk9f2Tke1gjkFn+BUY2unkXIaaZWQO2a/HJW
 TmyEkjwMMr1YaGj8//TgnMl4moU8aT6iL12Jvhhpg8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=PGwBIP
 F5IiqJcixqzcqLpEj81T8qJhkY5ns3fEHL59M=; b=Ixai+4xN53J3ZT/C3imZCT
 h7WsqJXY/vIziofz7aSRGs2fK7UunC9Onr6vKKVJaa8XW6weKrY6jKGPu/X3Wg0H
 kcNjwf/DdLOHJwvLMTlK5TIgoMF0mv+vixegUsNNmKUQInHNldN+fw/VkvUIrF2e
 zZol+AIrO86Ov01hcqDn5WMIZLAPbizLoEGb4jwB2aBeehm4zmEeQDKqjwJ46Cxx
 zdLYx4XJOK+4C6pDQvhOqvYk16/+DKL1FlifAEqXyp+b4JAaQW3wHkxvcPZBS2D5
 EQKJi0krzcg1w1OQYTnSH0m4n5kJ9YXhRH0O52EGTtx2uXOCixU9BppVFpZ1QKow
 ==
X-ME-Sender: <xms:L7tDYN4pAI0MiMjq8a975Mjq56zVJzW1NaDHRT28hspXPIzuRqBTdA>
 <xme:L7tDYK5jTZNMe86C_9wVo96ApJgg3OtBWec32ucBKJ_lEGtoYvCmTJqYFC0-PQOuX
 WNsGaT8-2Dd0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddtkedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
 necuggftrfgrthhtvghrnhepjeevgeetueevjeduudehffelgfeiffehgfegudefgeffte
 euuefgtddvteefkeffnecuffhomhgrihhnpehlihhnuhigughrihhvvghrphhrohhjvggt
 thdrohhrghenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:L7tDYEcdSv-Hj5xlPI0vFRvaDocefIlCRDX633wWYTmm7Q8xoglYCA>
 <xmx:L7tDYGKtMx0ACGQXHhwEUathrQjO8AJOYKCmYYicyC718w7Wk0zHHw>
 <xmx:L7tDYBKjYusgvXRiSpoFLTDmplfi3SclPQYD4Z6GoNMiOoLzMvRDIQ>
 <xmx:MLtDYDz8TG2TZda7Put-cIV-LQ0hWhHPkTF_nM4BOAbqOlOUfJ8syw>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id 78F4724005A;
 Sat,  6 Mar 2021 12:26:07 -0500 (EST)
Date: Sat, 6 Mar 2021 18:26:05 +0100
From: Greg KH <greg@kroah.com>
To: gabriele.modena@gmail.com
Subject: Re: [PATCH] staging: wimax: fix style check warnings
Message-ID: <YEO7LRTeRFiyldyi@kroah.com>
References: <20210305195508.3543-1-gabriele.modena@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305195508.3543-1-gabriele.modena@gmail.com>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 05, 2021 at 08:55:09PM +0100, gabriele.modena@gmail.com wrote:
> From: Gabriele Modena <gabriele.modena@gmail.com>
> 
> Fix style warnings reported by checkpatch.pl on op-rfkill.c
> by moving */ on a separate line in a block comment,
> adding a missing blank line after declarations,
> and reformatting a quoted string split across lines.
> 
> Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
> ---
>  drivers/staging/wimax/op-rfkill.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
> index 78b294481a59..52612ed09183 100644
> --- a/drivers/staging/wimax/op-rfkill.c
> +++ b/drivers/staging/wimax/op-rfkill.c
> @@ -294,7 +294,8 @@ int wimax_rfkill(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
>  		/* While initializing, < 1.4.3 wimax-tools versions use
>  		 * this call to check if the device is a valid WiMAX
>  		 * device; so we allow it to proceed always,
> -		 * considering the radios are all off. */
> +		 * considering the radios are all off.
> +		 */
>  		if (result == -ENOMEDIUM && state == WIMAX_RF_QUERY)
>  			result = WIMAX_RF_OFF << 1 | WIMAX_RF_OFF;
>  		goto error_not_ready;
> @@ -378,6 +379,7 @@ int wimax_rfkill_add(struct wimax_dev *wimax_dev)
>  void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
>  {
>  	struct device *dev = wimax_dev_to_dev(wimax_dev);
> +
>  	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
>  	rfkill_unregister(wimax_dev->rfkill);
>  	rfkill_destroy(wimax_dev->rfkill);
> @@ -415,8 +417,7 @@ int wimax_gnl_doit_rfkill(struct sk_buff *skb, struct genl_info *info)
>  	dev = wimax_dev_to_dev(wimax_dev);
>  	result = -EINVAL;
>  	if (info->attrs[WIMAX_GNL_RFKILL_STATE] == NULL) {
> -		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
> -			"attribute\n");
> +		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE attribute\n");
>  		goto error_no_pid;
>  	}
>  	new_state = nla_get_u32(info->attrs[WIMAX_GNL_RFKILL_STATE]);
> -- 
> 2.11.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

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
