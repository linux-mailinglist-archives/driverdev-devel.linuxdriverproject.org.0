Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B6289EC4
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 08:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19D5B87498;
	Sat, 10 Oct 2020 06:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8MexUcUEjpV; Sat, 10 Oct 2020 06:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFA5F87535;
	Sat, 10 Oct 2020 06:58:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9EE1BF84C
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 06:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7430686F9A
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 06:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSs_QR1QLo4d for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 06:58:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D70D386890
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 06:58:34 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2FE6207CD;
 Sat, 10 Oct 2020 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602313114;
 bh=OZvrNP1g3AcWq1a3Xh4gyOmlYF4z6XbRtdkILUqNeMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kdOvcxgikmBHqGn5PLskDAFX/EMKiePYlqJnwcIi44ka6E6VCQ0CPwvLfHs7BdamE
 VE6I/qGd4ftXQkXaaSP0yDYE1nh408T5Tns/+DrzGrrrhGdS3hugHZL3rwBt6B9IV5
 qyKxTSjsaeih3AW/+MiQv29gndnoqpIm+SKfzVvE=
Date: Sat, 10 Oct 2020 08:58:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tabot Kevin <tabot.kevin@gmail.com>
Subject: Re: [PATCH] Fixed coding style issues raised by checkpatch.
Message-ID: <20201010065831.GA132110@kroah.com>
References: <20201010003200.GA1399@tabot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010003200.GA1399@tabot>
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

On Sat, Oct 10, 2020 at 01:32:00AM +0100, Tabot Kevin wrote:
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
> @@ -175,8 +175,8 @@ static int gbaudio_codec_request_handler(struct gb_operation *op)
>  }
>  
>  static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
> -				struct greybus_descriptor_cport *cport_desc,
> -				struct gb_bundle *bundle)
> +					struct greybus_descriptor_cport *cport_desc,
> +					struct gb_bundle *bundle)
>  {
>  	struct gb_connection *connection;
>  
> @@ -199,8 +199,8 @@ static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
>  }
>  
>  static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
> -				struct greybus_descriptor_cport *cport_desc,
> -				struct gb_bundle *bundle)
> +					struct greybus_descriptor_cport *cport_desc,
> +					struct gb_bundle *bundle)
>  {
>  	struct gb_connection *connection;
>  	struct gbaudio_data_connection *dai;
> -- 
> 2.7.4

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

- Use the tool, scripts/get_maintainer.pl on the patch, to determine
  what mailing list and developers and maintainers to cc.

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
