Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B564AD065
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 20:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8DBD2040D;
	Sun,  8 Sep 2019 18:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kM9Fo4Emnpuw; Sun,  8 Sep 2019 18:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31B6820469;
	Sun,  8 Sep 2019 18:54:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 754641BF280
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 18:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FB7C84D8A
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 18:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YFrr5-j733s for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 18:54:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C220D84D74
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 18:54:26 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21209216C8;
 Sun,  8 Sep 2019 18:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567968866;
 bh=DEx3zEV1wNAa4sPvnHsY6/koGtXOQEQ6IqoLIjDkOko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LK2NTfAIENfNRPbT53b1fur5Ave3EAWfFyGzSoaoirdS6FyE+J9a3Rqn+FAm/YpsH
 QusnNG+qY52CPOva5zQPiV1pPiAU6vwnS8UdbIerJXsIduzok4bZ590IBbVxZ72TuQ
 zKQfv6YmLQerkgipwheZRV0Z15+QC9lPHeUs1bzY=
Date: Sun, 8 Sep 2019 19:54:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v3 2/4] staging: exfat: drop duplicate date_time_t struct
Message-ID: <20190908185424.GB10011@kroah.com>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
 <20190908173539.26963-2-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908173539.26963-2-vvidic@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 05:35:37PM +0000, Valentin Vidic wrote:
> Use timestamp_t for everything and cleanup duplicate code.
> 
> Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
> ---
>  drivers/staging/exfat/exfat.h       |  35 +++---
>  drivers/staging/exfat/exfat_super.c | 158 ++++++++--------------------
>  2 files changed, 55 insertions(+), 138 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 0aa14dea4e09..58e1e889779f 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -241,16 +241,6 @@ static inline u16 get_row_index(u16 i)
>  #define UNI_PAR_DIR_NAME        "\0.\0."
>  #endif
>  
> -struct date_time_t {
> -	u16      Year;
> -	u16      Month;
> -	u16      Day;
> -	u16      Hour;
> -	u16      Minute;
> -	u16      Second;
> -	u16      MilliSecond;
> -};
> -
>  struct part_info_t {
>  	u32      Offset;    /* start sector number of the partition */
>  	u32      Size;      /* in sectors */
> @@ -289,6 +279,16 @@ struct file_id_t {
>  	u32      hint_last_clu;
>  };
>  
> +struct timestamp_t {
> +	u16      millisec;   /* 0 ~ 999              */

You added this field to this structure, why?  You did not document that
in the changelog text above.  Are you _sure_ you can do this and that
this does not refer to an on-disk layout?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
