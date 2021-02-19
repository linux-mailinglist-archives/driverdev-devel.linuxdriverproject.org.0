Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9D31F5B0
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:13:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F764606C4
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 08:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d125YtUtG3Oj for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 08:12:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 18DA5606DE; Fri, 19 Feb 2021 08:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 007C5606A0;
	Fri, 19 Feb 2021 08:12:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30BE51BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C98E86FFB
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhMD8qUPahJP for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 276E086FF6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:12:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE5DF64EB8;
 Fri, 19 Feb 2021 08:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613722342;
 bh=CWaJRuI3HtBPPf5wgC4B5CLACbaxTysU/UK48VbfQuM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x4WBv3E9EWK1PHiqJW5aVsefxhO5gqkSADo7C5x2+qcMhidnOkzWYuClJaT+xJWPj
 hzYmaF5h0eLZVntCWzxJ7YCembSoAcSR0aUpGeS1X/M+AQ+w2NU/ePAlIfx63bEqmR
 LgT9FtGv2qhzmqRV6ULDLwB958VaxeDsnGd+5l6c=
Date: Fri, 19 Feb 2021 09:12:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192u: fix coding style in r8190_rtl8256.c
Message-ID: <YC9y4x+nXEZCw/xy@kroah.com>
References: <20210216102806.188405-1-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216102806.188405-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 06:28:06PM +0800, Du Cheng wrote:
> use __func__ macro instead of literal function name in RT_TRACE() in
>  * phy_set_rf8256_bandwidth()
>  * phy_rf8256_config_para_file()
> 
> remove unnecessary return at the end of phy_set_rf8256_ofdm_tx_power()
> 
> these coding style issues are flagged as warnings by scripts/checkpatch.pl.
> 
> 
> Signed-off-by: Du Cheng <ducheng2@gmail.com>
> ---
> changes v2:
> * improve description and subject
> 
> changes v1:
> * fix coding style
> 
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
> index fee3bfb99075..54747fda552f 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.c
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
> @@ -73,11 +73,11 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
>  					else
>  						rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x14, bMask12Bits, 0x5ab);
>  				} else {
> -					RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
> +					RT_TRACE(COMP_ERR, "%s(): unknown hardware version\n", __func__);
>  					}
>  				break;
>  		default:
> -				RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
> +				RT_TRACE(COMP_ERR, "%s(): unknown Bandwidth: %#X\n", __func__, Bandwidth);
>  				break;
>  		}
>  	}
> @@ -213,7 +213,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
>  		}
>  
>  		if (ret) {
> -			RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
> +			RT_TRACE(COMP_ERR, "%s():Radio[%d] Fail!!", __func__, eRFPath);
>  			goto phy_RF8256_Config_ParaFile_Fail;
>  		}
>  	}
> @@ -291,5 +291,4 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
>  		}
>  		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
>  	}
> -	return;
>  }
> -- 
> 2.27.0

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
