Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD68FB144
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2024 13:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE37C413E1;
	Tue,  4 Jun 2024 11:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6BeZjT3-PZUW; Tue,  4 Jun 2024 11:41:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F410E413F9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F410E413F9;
	Tue,  4 Jun 2024 11:41:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27DE41BF860
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2024 11:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1ED6781F12
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2024 11:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WArlSClmRUTM for <devel@linuxdriverproject.org>;
 Tue,  4 Jun 2024 11:41:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C6B481181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C6B481181
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C6B481181
 for <devel@driverdev.osuosl.org>; Tue,  4 Jun 2024 11:41:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6711C61231;
 Tue,  4 Jun 2024 11:41:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50BC2C2BBFC;
 Tue,  4 Jun 2024 11:41:04 +0000 (UTC)
Date: Tue, 4 Jun 2024 13:34:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mohamed Karaoui <moharaka@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Fixes a coding style error
Message-ID: <2024060411-flanking-surfacing-63c9@gregkh>
References: <20240517110140.81732-1-moharaka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240517110140.81732-1-moharaka@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1717501265;
 bh=WN2C4UW3o4LE/TxurRuwC+WV2zLD7L9yVvWJwyrwmcg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PKE7NdH8/33CImJI9qBCoq1xAn4v4f8cytlYtTrfzysfQskPIC+6EOJmgjgckI0IX
 EAbXYcrQDtxM0CKfbwF3vZRnwxh9BeDPilQt2lpZRDR5EyxYVcOCX89/9cF1Bk52vk
 tIBbvdHT2gmWARZb7smAOL7W/Eql8vkyxsZOUGwM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=PKE7NdH8
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

On Fri, May 17, 2024 at 12:01:40PM +0100, Mohamed Karaoui wrote:
> Adds a space before if statement's condition
> 
> Signed-off-by: Mohamed Karaoui <moharaka@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> index 0cbf4a1a326b..b2af802b9451 100644
> --- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> @@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  		int aad_len, ret;
>  
>  		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
> -		if(!req)
> +		if (!req)
>  			return -ENOMEM;
>  
>  		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);

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

- Your patch did not apply to any known trees that Greg is in control
  of.  Possibly this is because you made it against Linus's tree, not
  the linux-next tree, which is where all of the development for the
  next version of the kernel is at.  Please refresh your patch against
  the linux-next tree, or even better yet, the development tree
  specified in the MAINTAINERS file for the subsystem you are submitting
  a patch for, and resend it.

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
