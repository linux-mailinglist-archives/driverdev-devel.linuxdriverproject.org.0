Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46839AD064
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 20:51:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 14299204AA;
	Sun,  8 Sep 2019 18:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gQMmuTPbUVM; Sun,  8 Sep 2019 18:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1295F20469;
	Sun,  8 Sep 2019 18:51:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD8A1BF280
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 18:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 020A98516A
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 18:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_XTuuD-Gpp6 for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 18:51:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A8B885218
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 18:50:34 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD2AB216C8;
 Sun,  8 Sep 2019 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567968634;
 bh=XnmOY2flR5s/jiPPR/snDpuCIRSgM5vyitXRQykDP+A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B4M7/14SyfguCCSPrfiH1RWFoduDosB8S7B3ieC3+0lWBefezAAE7CQQM2CXrto9A
 VlofbGWo5F03IQYtyMBfW58ZnKGzpnDaS4XtGAc/DUrY0ePF79pjTJM8OYWOoHS8YX
 0YK9HzkvUzsZmKQNheMODf0akSY3+aZCFFKStajA=
Date: Sun, 8 Sep 2019 19:50:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v3 2/4] staging: exfat: drop duplicate date_time_t struct
Message-ID: <20190908185031.GA10011@kroah.com>
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

Wait, how are these "duplicate"?  The fields are in different order,
don't these refer to things on-disk?

Did you test this?

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
> +	u16      sec;        /* 0 ~ 59               */
> +	u16      min;        /* 0 ~ 59               */
> +	u16      hour;       /* 0 ~ 23               */
> +	u16      day;        /* 1 ~ 31               */
> +	u16      mon;        /* 1 ~ 12               */
> +	u16      year;       /* 0 ~ 127 (since 1980) */
> +};

They really look "backwards" to me, how are these the same?  What am I
missing?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
