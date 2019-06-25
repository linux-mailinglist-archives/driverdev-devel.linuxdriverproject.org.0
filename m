Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E89524EE
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 09:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFB3686354;
	Tue, 25 Jun 2019 07:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJR3hP06nKWA; Tue, 25 Jun 2019 07:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B79A286272;
	Tue, 25 Jun 2019 07:36:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 240941BF31B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2015620509
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9ZDR836mqrK for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 07:36:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E977203B9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 07:36:51 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id h6so1064368ioh.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 00:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JbpPj0DCLr6TgvcwaNhaVYyXQ1KtwFBdw/kdmuK8GW4=;
 b=pPX8Qgg874Yumj7c0y5ur24FUEXPWCgxpDsMnYp6jx0h5kSd1MqxFUmEs6iagKx/qM
 +Y3XsLVKgCWaLp3PsHrW2poj8ZX3YoSA6zrV08AAeBXyNL11sqax69vsLKXQP4IltrUo
 rsNMoAq734jMXmBvv3MTvY/qY22Uzh34YXflbCLhgh+pagFwMZ1PZnZPbVLQiV3lcRXV
 a89+fgpAKM8TALIKtqRPkpqXScRh1B2/JuHcMVo8xTDOr1XhtlQ3xZf3Kl0eZDNtuicZ
 bkmyoOOB5w7gSqk447wT0LPwu5WiOg91owKnoxGD4DEu4ME/tsrDJTUKfEoY4AN+Yimo
 nDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JbpPj0DCLr6TgvcwaNhaVYyXQ1KtwFBdw/kdmuK8GW4=;
 b=kQmyih4aN5if4XYKinaC08FCbEj/4Nl4FcGDxSYJvarq+749W5tAP9v5HX5LVJIB1d
 YsaVqJ16xUn1FOSvrt6+qe6ULZy25UCreTkxxbROK5Y+Ip2cR8smUdbwL9s5epHREPA+
 hLvEmg7tDfoc7+0LCkUOKnu0cnRnS7fD7kIXShyGdAae/n8+JhnRWX1OxS+WvEdTUelF
 3R9XulP12XVGnNOy11FzW4ZdHmLoy3V693dvjYItlJaQt3Pi8oaidJW3+FzqT+l8cQcs
 FDc1dLRYRMy8etnMSmmGbC6QVtxcta5A1ghPrAKkXltoahq+oK8VEkuMioy9u/U6jC2c
 VlQw==
X-Gm-Message-State: APjAAAXLLfYu4Vyib8ZUwFZrBjjf7MbfcpJoCM534gwh7qV36Iq3y4/P
 HMYzgHpNlB9rD78BKhum9whF8b5oJOZBlHS8C08=
X-Google-Smtp-Source: APXvYqzlNc8rPqW74Hlogp+mli1EBGgu59A9C7b23BB+Z+foqlfatmCvmK1IOjih1XYlpah/0XcRBaMZRIW26tDWv9k=
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr35859348iog.43.1561448210575; 
 Tue, 25 Jun 2019 00:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 25 Jun 2019 08:36:39 +0100
Message-ID: <CALeDE9N-j_mSubddpsQ24905Ti3YHfPAECsRaxdW4sQv3K6w+Q@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Stefan Wahren <wahrenst@gmx.net>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 24, 2019 at 11:13 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> This breaks probing of bcm2835-camera:
>
>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
>     Cleanup: Destroy video encoder
>     Cleanup: Destroy image encoder
>     Cleanup: Destroy video render
>     Cleanup: Destroy camera
>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
>     bcm2835-camera: probe of bcm2835-camera failed with error -3
>
> So restore the old behavior and fix this issue.
>
> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Thanks Stefan, I can confirm this resolves the issue I have seen with
the camera on 5.2 but hadn't had the time to bisect it yet.

Tested with a v2.1 camera module attached to a RPI3A+

Regards,
Peter

> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index d60e378..1c4c9e8 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -610,9 +610,11 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
>
>         encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
>
> -       return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> -                                            mmal_ctrl->mmal_id, &ctrl->val,
> -                                            sizeof(ctrl->val));
> +       vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> +                                     mmal_ctrl->mmal_id, &ctrl->val,
> +                                     sizeof(ctrl->val));
> +
> +       return 0;
>  }
>
>  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> --
> 2.7.4
>
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
