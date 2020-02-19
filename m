Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A95164FAF
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 21:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D62C985D6F;
	Wed, 19 Feb 2020 20:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SujICkHn5lVu; Wed, 19 Feb 2020 20:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9959F85008;
	Wed, 19 Feb 2020 20:19:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC3151BF3BF
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 20:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8EB0877DB
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 20:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JqAVlwmllJF8 for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 20:19:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 056B98749A
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 20:19:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B33B24654;
 Wed, 19 Feb 2020 20:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582143556;
 bh=BMqfNAqnRNhsX0S28jKzbbqRGrFmcgyFHV69yPDrYEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CRtbjXZ8Mde4Hy9lBcGW6R/EQrCVPybzx/AtGRwcTkhkv5laP25wPQKXxxwV1Cg+S
 yjejy+XDrUgNWBiBORk6oD9t64KlnmFe5OwOsPlxIVajPCExoZilujW9pESEso0GUr
 /y/4/IY9PY5rW2aup4tbdCgdRqPcec7EmCYg9ov0=
Date: Wed, 19 Feb 2020 21:19:13 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: greybus: match parenthesis alignment
Message-ID: <20200219201913.GA2882443@kroah.com>
References: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 20, 2020 at 01:26:51AM +0530, Kaaira Gupta wrote:
> Fix checkpatch.pl warning of alignment should match open parenthesis in
> audio_codec.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/greybus/audio_codec.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 08746c85dea6..d62f91f4e9a2 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);

You can't do it for one line, and not all of the lines.

And if you do it for all lines, then you push past the line-length.

So you are back to what we currently have, which is the best we can do,
sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
