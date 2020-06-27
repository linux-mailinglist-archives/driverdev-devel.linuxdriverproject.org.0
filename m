Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BF20BF3A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 09:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5B72883EC;
	Sat, 27 Jun 2020 07:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmyr++o3Uim8; Sat, 27 Jun 2020 07:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CA72883FA;
	Sat, 27 Jun 2020 07:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 931281BF31D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AB4385582
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7vcznYcOK2qQ for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 07:05:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEF9C869C8
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:05:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DB0A20707;
 Sat, 27 Jun 2020 07:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593241557;
 bh=0Qczu/M7GyE6uD82ovyvwKji/pUl3Hpg++uH1cTaKOc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2aX2VibtFKEZAIGK1a70N/BwGTPzLjHOXgx3R5qgpG/fJZLgsVvnaX1yrM8HyE7Zd
 HrAGgif1//tVh+7NLAlPFGtlvNnnNNhFu5H2vUVaS0zcbO7z+z32mfOKIS3WFrhO6l
 ikAdf2OekOZSYWmyFlYSwH8XHy6qckxDRCa8JR2g=
Date: Sat, 27 Jun 2020 09:05:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] qlge.h: Adding the missing blank line after declarations
Message-ID: <20200627070554.GB264737@kroah.com>
References: <20200627060758.aqcqs763rjoxn6cp@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627060758.aqcqs763rjoxn6cp@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 02:07:58AM -0400, B K Karthik wrote:
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/qlge/qlge.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index fc8c5ca8935d..0b971a633001 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -2224,6 +2224,7 @@ static inline void ql_write_db_reg_relaxed(u32 val, void __iomem *addr)
>  static inline u32 ql_read_sh_reg(__le32  *addr)
>  {
>  	u32 reg;
> +
>  	reg =  le32_to_cpu(*addr);
>  	rmb();
>  	return reg;
> -- 
> 2.20.1
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
