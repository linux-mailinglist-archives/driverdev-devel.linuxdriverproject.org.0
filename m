Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AEACFC7
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2691E8558D;
	Sun,  8 Sep 2019 16:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aIdGfRTyqizP; Sun,  8 Sep 2019 16:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 791E385606;
	Sun,  8 Sep 2019 16:40:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E60E1BF2BD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 78A432040D
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9X5e+Vd0G0G for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:40:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D1205203C8
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:40:43 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E2FF216C8;
 Sun,  8 Sep 2019 16:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567960843;
 bh=bduxlRgncCtH3hgLHIejYjY8raG/27q0wSfHeokzmIo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OxCUenmIjPZFRc/qXl24QboLCTj6xfk/P6Nonl5k5Kw1nzUZIXl/iRpdYQAPsntFV
 pKqWr28SoNQop/QBnqiA5y9k0IK/MbxOoWlkX2aUpCA+K4iHzWeASAPi3ZdjAOb5No
 uoEy/ILzUHAMjJV2m45hFaOYyBiGV/gRZqMuXqbk=
Date: Sun, 8 Sep 2019 17:40:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v2 3/3] staging: exfat: add millisecond support
Message-ID: <20190908164040.GA8362@kroah.com>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
 <20190908161015.26000-3-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908161015.26000-3-vvidic@valentin-vidic.from.hr>
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

On Sun, Sep 08, 2019 at 04:10:15PM +0000, Valentin Vidic wrote:
> Use create_time_ms modify_time_ms fields to store the millisecond
> part of the file timestamp with the precision of 10 ms.
> 
> Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
> ---
>  drivers/staging/exfat/exfat_core.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index 8476eeedba83..e87119fa8c0a 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -1139,6 +1139,7 @@ void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
>  void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  			u8 mode)
>  {
> +	u8 ms = 0;
>  	u16 t = 0x00, d = 0x21;
>  	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
>  
> @@ -1146,6 +1147,7 @@ void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  	case TM_CREATE:
>  		t = GET16_A(ep->create_time);
>  		d = GET16_A(ep->create_date);
> +		ms = ep->create_time_ms * 10;
>  		break;
>  	case TM_MODIFY:
>  		t = GET16_A(ep->modify_time);
> @@ -1159,11 +1161,17 @@ void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  	tp->day  = (d & 0x001F);
>  	tp->mon  = (d >> 5) & 0x000F;
>  	tp->year = (d >> 9);
> +
> +	if (ms >= 1000) {
> +		ms -= 1000;
> +		tp->sec++;
> +	}
>  }
>  
>  void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  			  u8 mode)
>  {
> +	u8 ms = 0;
>  	u16 t = 0x00, d = 0x21;
>  	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
>  
> @@ -1171,10 +1179,12 @@ void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  	case TM_CREATE:
>  		t = GET16_A(ep->create_time);
>  		d = GET16_A(ep->create_date);
> +		ms = ep->create_time_ms * 10;
>  		break;
>  	case TM_MODIFY:
>  		t = GET16_A(ep->modify_time);
>  		d = GET16_A(ep->modify_date);
> +		ms = ep->modify_time_ms * 10;
>  		break;
>  	case TM_ACCESS:
>  		t = GET16_A(ep->access_time);
> @@ -1188,21 +1198,33 @@ void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  	tp->day  = (d & 0x001F);
>  	tp->mon  = (d >> 5) & 0x000F;
>  	tp->year = (d >> 9);
> +
> +	if (ms >= 1000) {
> +		ms -= 1000;
> +		tp->sec++;
> +	}
>  }
>  
>  void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
>  			u8 mode)
>  {
> +	u8 ms;
>  	u16 t, d;
>  	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
>  
>  	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
>  	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
>  
> +	ms = tp->millisec;
> +	if (tp->sec & 1) {
> +		ms += 1000;
> +	}

checkpatch didn't complain about this { } not being needed?

Same in other parts of this patch, please fix up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
