Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A7BA86DD
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 19:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C465230FD;
	Wed,  4 Sep 2019 17:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JhYRMOhD728g; Wed,  4 Sep 2019 17:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3769D20459;
	Wed,  4 Sep 2019 17:14:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58CEE1BF3C5
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4ED5785BC8
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPxLmfFKjMQJ for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 17:14:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 399B785A49
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 17:14:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DF2D21726;
 Wed,  4 Sep 2019 17:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567617256;
 bh=4lhedrTdvyNdZnIcwKpoBZ0Q5do9zTK6jHQL29tFVZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=naAF2dfkuBEiligHmtjWd3v3i9bZ8JYi0blq+r3tgLJoaqM7VrZG1NsRN+uaBjP3y
 In17bJ03iAHIZdxty25BGNeU5mPsbF1nkdNeCgHx6qdzzJ1GME4qSJtypq5qJte641
 fJE5cpxekm16N9eCR8flaq7d6+oCPkh46chnlj9M=
Date: Wed, 4 Sep 2019 19:14:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Prakhar Sinha <prakharsinha2808@gmail.com>
Subject: Re: [PATCH] staging: rts5208: Fix 80 char warning by re-structuring
 if-blocks.
Message-ID: <20190904171413.GA18390@kroah.com>
References: <20190904130523.GA17126@MeraComputer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904130523.GA17126@MeraComputer>
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
Cc: devel@driverdev.osuosl.org, sabrina-gaube@web.de,
 linux-kernel@vger.kernel.org, nishkadg.linux@gmail.com, pakki001@umn.edu,
 tobias.niessen@stud.uni-hannover.de, kim.jamie.bradley@gmail.com,
 qader.aymen@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 06:35:23PM +0530, Prakhar Sinha wrote:
> This patch solves the following checkpatch.pl's messages in
> drivers/staging/rts5208/sd.c
> 
> WARNING: line over 80 characters
> 4517: FILE: drivers/staging/rts5208/sd.c:4517:
> +                                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> 
> WARNING: line over 80 characters
> 4518: FILE: drivers/staging/rts5208/sd.c:4518:
> +                                               goto sd_execute_write_cmd_failed;
> 
> WARNING: line over 80 characters
> 4522: FILE: drivers/staging/rts5208/sd.c:4522:
> +                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> 
> Signed-off-by: Prakhar Sinha <prakharsinha2808@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index a06045344301..7d6f2c56e740 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -4505,22 +4505,20 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  
>  		dev_dbg(rtsx_dev(chip), "sd_lock_state = 0x%x, sd_card->sd_lock_status = 0x%x\n",
>  			sd_lock_state, sd_card->sd_lock_status);
> -		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED)) {
> +		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED))
>  			sd_card->sd_lock_notify = 1;
> -			if (sd_lock_state &&
> -			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
> -				sd_card->sd_lock_status |= (
> -					SD_UNLOCK_POW_ON | SD_SDR_RST);
> -				if (CHK_SD(sd_card)) {
> -					retval = reset_sd(chip);
> -					if (retval != STATUS_SUCCESS) {
> -						sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> -						goto sd_execute_write_cmd_failed;
> -					}
> -				}
> -
> -				sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> +		if ((sd_lock_state & !(sd_card->sd_lock_status & SD_LOCKED)) &&
> +		    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
> +			sd_card->sd_lock_status |= (SD_UNLOCK_POW_ON |
> +						    SD_SDR_RST);
> +			if (CHK_SD(sd_card) &&
> +			    reset_sd(chip) != STATUS_SUCCESS) {
> +				sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
> +							     SD_SDR_RST);
> +				goto sd_execute_write_cmd_failed;
>  			}
> +			sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
> +						     SD_SDR_RST);

Are you sure you can indent and call the if() statement twice like this?

If so, please document this in your changelog text.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
