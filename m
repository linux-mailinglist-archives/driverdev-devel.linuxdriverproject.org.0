Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1548A2DFD04
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 15:49:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7138B860E6;
	Mon, 21 Dec 2020 14:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t5ja3rYUAeUn; Mon, 21 Dec 2020 14:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EEDB86090;
	Mon, 21 Dec 2020 14:49:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65B361BF419
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 14:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F4AB87220
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 14:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9GvtOYpXknq for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 14:49:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AFCB4852D9
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 14:49:40 +0000 (UTC)
Date: Mon, 21 Dec 2020 15:49:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608562180;
 bh=RjibE7PG3Dvn4e4r8XrqcqR858sjNjYceU7oTN+r+Qs=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=V/TP6eAEJMdklu8YP9BrGIhbPnCN8Ujwb8dlTSkyoSnCJ0hXgmJCj3vMvz4RjpONz
 cJSOF7juGFow2sjAl2dKnu7vVqt/LUIK+NsN4Po3YdER8PoHsk+BUSTS9CIq0s7FzP
 ObFJHGymW3PYL+TCQp+JryCMyS6P0FL9BksxePJFfwGNVHvWUBAbtQf+VNmTkmGOxi
 DMGLo8FQZyQVG9HKAeglDM4cjYwa5fWMQ+BYJsAN9m4T7eevPRbTCttSsy4yyKoIf3
 Cyixcobceo4Cx2F4Rwi0OuoRupvKUKlI8H8D3tJ9HxlMwFGgy7Kl+kNIprbcXitar3
 hFh7efD4LNcwA==
From: Johan Hovold <johan@kernel.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] greybus/audio_helper: Add missing unlock to avoid
 mismatched lock
Message-ID: <X+C2BwZlPw3tRYyf@hovoldconsulting.com>
References: <20201221130246.1807-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221130246.1807-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 21, 2020 at 09:02:46PM +0800, Zheng Yongjun wrote:
> Fix a missing unlock in the error branch.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/greybus/audio_helper.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 237531ba60f3..293675dbea10 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -135,6 +135,7 @@ int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
>  		if (!w) {
>  			dev_err(dapm->dev, "%s: widget not found\n",
>  				widget->name);
> +			mutex_unlock(&dapm->card->dapm_mutex);
>  			return -EINVAL;
>  		}
>  		widget++;

This has already been fixed in mainline by your colleague:

	e77b259f67ab ("staging: greybus: audio: Fix possible leak free widgets in gbaudio_dapm_free_controls")

It seems you're all working on reports from your "Hulk Robot" so perhaps
you can try to coordinate that internally.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
