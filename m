Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC107303C6
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 550F2877BA;
	Thu, 30 May 2019 21:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ghfO+k-T0+pI; Thu, 30 May 2019 21:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B33E387789;
	Thu, 30 May 2019 21:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F9E61BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C65286A56
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4hUAAlVZwe9o for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:05:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89DA486A3C
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:05:58 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A19A261AF;
 Thu, 30 May 2019 21:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559250358;
 bh=1jssNiTMn7lNEzbP5Eo+hcP+KrAgvO9UNgar+fFKl1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sPUAftLsz5QMfZ97r9mPjyFUIRceHZm24vJXkWY3otFPwFSJtYqTa0HnANNz3NZGd
 ofykHcjVEyVUCWZlTDd0F1TlhxHOKPfIS9cUf/f6V6SgOlD8MfCqiSeX1bvfqZlYVo
 5YilSbOD+z8OPFQGoKTI8AchyPSV1+PaRE5dcRrg=
Date: Thu, 30 May 2019 14:05:58 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 1/4] staging: kpc2000: add spaces around operators in
 core.c
Message-ID: <20190530210558.GA21455@kroah.com>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-2-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524110802.2953-2-simon@nikanor.nu>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 01:07:59PM +0200, Simon Sandstr=F6m wrote:
> Fixes checkpatch.pl check "spaces preferred around that <op>".
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc=
2000/kpc2000/core.c
> index 4110032d0cbb..b464973d12ad 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -276,18 +276,18 @@ static ssize_t kp2000_cdev_read(struct file *filp, =
char __user *buf,
>  	if (WARN(NULL =3D=3D buf, "kp2000_cdev_read: buf is a NULL pointer!\n"))
>  		return -EINVAL;
>  =

> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Card ID                 : 0=
x%08x\n", pcard->card_id);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Version           : 0=
x%08x\n", pcard->build_version);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Date              : 0=
x%08x\n", pcard->build_datestamp);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Time              : 0=
x%08x\n", pcard->build_timestamp);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Offset       : 0=
x%08x\n", pcard->core_table_offset);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Length       : 0=
x%08x\n", pcard->core_table_length);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "Hardware Revision       : 0=
x%08x\n", pcard->hardware_revision);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "SSID                    : 0=
x%016llx\n", pcard->ssid);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "DDNA                    : 0=
x%016llx\n", pcard->ddna);
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Mask                : 0=
x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK));
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Active              : 0=
x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE));
> -	cnt +=3D scnprintf(buff+cnt, BUFF_CNT-cnt, "CPLD                    : 0=
x%016llx\n", readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG));
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Card ID                =
 : 0x%08x\n", pcard->card_id);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Build Version          =
 : 0x%08x\n", pcard->build_version);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Build Date             =
 : 0x%08x\n", pcard->build_datestamp);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Build Time             =
 : 0x%08x\n", pcard->build_timestamp);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Core Table Offset      =
 : 0x%08x\n", pcard->core_table_offset);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Core Table Length      =
 : 0x%08x\n", pcard->core_table_length);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "Hardware Revision      =
 : 0x%08x\n", pcard->hardware_revision);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "SSID                   =
 : 0x%016llx\n", pcard->ssid);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "DDNA                   =
 : 0x%016llx\n", pcard->ddna);
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "IRQ Mask               =
 : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK));
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "IRQ Active             =
 : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE));
> +	cnt +=3D scnprintf(buff + cnt, BUFF_CNT - cnt, "CPLD                   =
 : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG));
>  =

>  	if (*f_pos >=3D cnt)
>  		return 0;

This whole function just needs to be deleted, it's a horrible hack.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
