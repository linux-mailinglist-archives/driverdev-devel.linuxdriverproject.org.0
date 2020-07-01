Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BCF210C62
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 15:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E11A684475;
	Wed,  1 Jul 2020 13:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jnPv8cML8zDq; Wed,  1 Jul 2020 13:37:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A74F089463;
	Wed,  1 Jul 2020 13:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BDD11BF419
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 13:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D69E8203A4
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 13:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5+xu6IT0sxn for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 13:37:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9866B26509
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 13:37:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC4B2206BE;
 Wed,  1 Jul 2020 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593610629;
 bh=5tE183U8HFGTx/+i+OpSh5OTZevNZV/V9TLpzYw5pNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ekY7/q4M/OQJAUogvbtk46eVfBh6fcvVNLe+hB3hDOIwzt/yQhwN4fOHMQvssxpk1
 ZSrnoVf1wlxRs87yKDS7Nc6+guH/ikDHGBOEDHnObFaOHuXKl/V5zq2ZwkVn8WdIwf
 Kgv4Wa0A6RRuq05bALEenfzGgWnRnEeZSpxTWNNI=
Date: Wed, 1 Jul 2020 15:36:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v3 6/6] staging: greybus: audio: Enable GB codec, audio
 module compilation.
Message-ID: <20200701133655.GA2373798@kroah.com>
References: <cover.1592537217.git.vaibhav.sr@gmail.com>
 <e9aaa09c6688aa5ed8bddf51f5cd402bb8cf39b3.1592537217.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9aaa09c6688aa5ed8bddf51f5cd402bb8cf39b3.1592537217.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alex Elder <elder@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 19, 2020 at 04:50:26PM +0530, Vaibhav Agarwal wrote:
> Currently you can't enable the Gey Bus Audio Codec because there is no
> entry for it in the Kconfig file. Originally the config name was going
> to be AUDIO_MSM8994 but that's not correct because other types of
> hardware are supported now. I have chosen the name AUDIO_APB_CODEC
> instead.  Also I had to update the dependencies for GREYBUS_AUDIO to
> make the compile work.
> 
> Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/greybus/Kconfig  | 14 +++++++++++++-
>  drivers/staging/greybus/Makefile |  4 ++--
>  2 files changed, 15 insertions(+), 3 deletions(-)

Can you fix the build issues found by the bot and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
