Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE743A08F
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 17:54:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 580A185E83;
	Sat,  8 Jun 2019 15:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fp7u8LMNHegF; Sat,  8 Jun 2019 15:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB79485DD8;
	Sat,  8 Jun 2019 15:54:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38EDC1BF47F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 15:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2FBE085CC7
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 15:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ms5w6uvuWr9F for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 15:54:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C79285C28
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 15:54:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E41206BB;
 Sat,  8 Jun 2019 15:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560009265;
 bh=ElnzDAEFn4MUM1anVmb+KmIFjKIN8D1mTWC/VbPHVFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z/n4xxM3Rp3gegB8+XRT6415lAH/dbd0qIuvF0xWtOHUF0VDPnRNFWiXa8CvjDD+w
 U/dqwFhotQa1I5kp9UQQAjnJKRxpixstjfClZqSdKbgyJHJtzbCtxAMmeJI2cGuA49
 BDzVuTEMxN1PmdXcV8jNybt33nF9dQPS1DtCy6CU=
Date: Sat, 8 Jun 2019 17:54:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: xabi1500@gmail.com
Subject: Re: [PATCH] Staging: rts5208: fixed brace coding style issue
Message-ID: <20190608155422.GB7974@kroah.com>
References: <20190608135335.6383-1-xabi1500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608135335.6383-1-xabi1500@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 08, 2019 at 03:53:35PM +0200, xabi1500@gmail.com wrote:
> From: Xabier Etxezarreta <xabi1500@gmail.com>
> 
> Fixed a coding style issue checked with checkpatch.pl
> 
> Signed-off-by: Xabier Etxezarreta <xabi1500@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index fa597953e9a0..d16e92b09a1f 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -419,10 +419,7 @@ static int rtsx_control_thread(void *__dev)
>  				chip->srb->device->id,
>  				(u8)chip->srb->device->lun);
>  			chip->srb->result = DID_BAD_TARGET << 16;
> -		}
> -
> -		/* we've got a command, let's do it! */
> -		else {
> +		} else { /* we've got a command, let's do it! */
>  			scsi_show_command(chip);

Comment should go on a new line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
