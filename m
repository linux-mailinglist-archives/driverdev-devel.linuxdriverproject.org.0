Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 139212D27D2
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 10:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A073786C5A;
	Tue,  8 Dec 2020 09:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 22bJqn0-q2hr; Tue,  8 Dec 2020 09:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77D3686AFE;
	Tue,  8 Dec 2020 09:38:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39D561BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35672875C5
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pzVUath76yLe for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 09:38:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17C8F875CB
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 09:38:48 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id y22so3531531ljn.9
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 01:38:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DTvJajZ3HUb4nu8M5pZUhUsPRLHsfu5EOUbf+sGZc2Q=;
 b=kKAfs6yPc6/A4yQILhl2SaSljebobD+HHBw+uBXrw5iuwWWL1o0EM+wTd9304xebnO
 5yT3nb8u27eB3KHyf3NvfST3Db2Pu77nZ5FE3mTS67u9QGjuPEko1Tbga0Vzn58t1O8p
 GSJ3k3IVhwWQ0bn9CZ6PNu6YxnIO3KL6+j5YTG6GaU3F7jI3QohPPkyiqJ8hLbMlKs6l
 jWF46FhgxfpTlb2F1AtD5ze2j3pW9awPqYIc0i+tixhZWvz30QKoj9h51UD2qI/36Cma
 iThDmq7bQ5VfsW+W2lWh70qISOhIliKHrt+gy37JiUQR1dm4qQkSvG++KA8CTL9BnRkb
 X2Ow==
X-Gm-Message-State: AOAM530GUQ7Ik+mssMtoVLKTagsseZ2n0lNDAtqQlfWZZ1bReGnSWZyH
 TF9brhlZK9XtkLtzhM3gwjc=
X-Google-Smtp-Source: ABdhPJzXZe26yxx/l3kvM/RPCez5mYI4jwN42wzERbqcaO2zVyY1QWfCknrrrH7IZHoGDHwqqBrarw==
X-Received: by 2002:a2e:b5d9:: with SMTP id g25mr797ljn.471.1607420326452;
 Tue, 08 Dec 2020 01:38:46 -0800 (PST)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id y22sm3337923ljy.89.2020.12.08.01.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 01:38:45 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kmZSt-0002VW-Mh; Tue, 08 Dec 2020 10:39:23 +0100
Date: Tue, 8 Dec 2020 10:39:23 +0100
From: Johan Hovold <johan@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] greybus: Add TODO item about modernizing the pwm code
Message-ID: <X89JyygGo8FV5Heo@localhost>
References: <20201204183335.3839726-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204183335.3839726-1-uwe@kleine-koenig.org>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 04, 2020 at 07:33:35PM +0100, Uwe Kleine-K=F6nig wrote:
> drivers/staging/greybus/pwm.c uses the old style PWM callbacks, new drive=
rs
> should stick to the atomic API instead.
> ---

No sign off?

Please also add a staging prefix since this part of greybus still lives
there.

>  drivers/staging/greybus/TODO | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/staging/greybus/TODO b/drivers/staging/greybus/TODO
> index 31f1f2cb401c..6461e0132fe3 100644
> --- a/drivers/staging/greybus/TODO
> +++ b/drivers/staging/greybus/TODO
> @@ -1,3 +1,5 @@
>  * Convert all uses of the old GPIO API from <linux/gpio.h> to the
>    GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
>    lines from device tree or ACPI.
> +* Make pwm.c use the struct pwm_ops::apply instead of ::config, ::set_po=
larity,
> +  ::enable and ::disable.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
