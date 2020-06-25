Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8802220A018
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 15:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A12C868C4;
	Thu, 25 Jun 2020 13:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svtyzIzN7sag; Thu, 25 Jun 2020 13:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C2618623B;
	Thu, 25 Jun 2020 13:36:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2371BF842
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 13:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8863E87A87
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 13:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id efAp9oFfkF8P for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 13:36:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01211878AE
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 13:36:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FF7720672;
 Thu, 25 Jun 2020 13:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593092168;
 bh=mtp7nug8DXnlg3klSnF/L9TcVC11/sBPd5QOTqGfuB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cEcBD9CMFPVpvmqk5ePBRmi/v2EI0o5geZyyKhMEJey2WC6W6IARCSJ53mDT3LA5C
 v+ykaRF8klL9RAS1wPEqAoXCaV5kYZMyak7nG9hzQ3USCnPPe5Cj/c9NMOFdMXAWE0
 D3EOW5mgD77G3q/jn2HHvlgMXBlPFBxNuchSiD0M=
Date: Thu, 25 Jun 2020 15:36:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brooke Basile <brookebasile@gmail.com>
Subject: Re: [PATCH] staging: gasket: Convert symbolic permission to octal
Message-ID: <20200625133604.GA3533051@kroah.com>
References: <20200625132513.10805-1-brookebasile@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625132513.10805-1-brookebasile@gmail.com>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org, rcy@google.com, rspringer@google.com,
 toddpoynor@google.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 09:25:13AM -0400, Brooke Basile wrote:
> Fixing checkpatch WARNING: Symbolic permissions 'S_IRUGO' are not preferr=
ed. Consider using octal permissions '0444'.
> =

> Signed-off-by: Brooke Basile <brookebasile@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gask=
et/gasket_sysfs.h
> index ab5aa351d555..eb0fd3b0490f 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
>  =

>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)              =
       \
>  	{                                                                      \
> -		.attr =3D __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr =3D __ATTR(_name, 0444, _show_function, NULL),	       \
>  		.data.attr_type =3D _attr_type                                   \
>  	}

Someone else sent this a few days before you did:
	=A0https://lore.kernel.org/r/20200622073612.12282-1-rodolfovillordo@gmail.=
com

sorry,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
