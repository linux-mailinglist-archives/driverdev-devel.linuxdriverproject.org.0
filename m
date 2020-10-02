Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F1B280DFC
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 09:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6ABB273D3;
	Fri,  2 Oct 2020 07:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUtUloPFzeF7; Fri,  2 Oct 2020 07:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5E4AD204F3;
	Fri,  2 Oct 2020 07:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0A301BF301
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 07:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD19487300
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 07:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ow8h-x3T9qAA for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 07:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5DB27872FD
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 07:19:40 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id v12so571671wmh.3
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 00:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=;
 b=vvg+Cl0WFinXG8SxGVzQBrunVpw0ikon3TeHvCRD5uw2L2gv7zfDPJ1aNJqL4+N31S
 jrMHKFu7awaakD0lMU6rdwjFwqMPwXMirstXdU5RGUZvIFccD8AIouYxLgFwOoG9hz1x
 xO93UbD34EuKmsoJxtFJ8GZmEViwj4FgJYE2q6Eb6uHjKljqL+TcRcBa+ilM6E61Rur+
 gJuzv+d7rcqHQ+9jgeazY7vq3IgtI/bqEG1c+QcbVBjbjmbjYZKKCjNfueMlzkhym9Rk
 i0ttEZtjjOidV/1SDRkTi3LrEvV72x7jBpW42RXSjy2ctTMQ2LrygsWqayHX4rWfvFLV
 X3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=;
 b=PuR3UM3RZWOBkbHlFWDC2CsNa+45ubYVYuadVolJC4Rnm/ylRwPLv3C3WmpimZmiNo
 mAlzf6S26F871qg8V8caC32GllT389bwA8DB73HbEYz2ng7YU6bMRoIX+rszjVLxFtIF
 S/KpkKVDv9vbWhY45kJVLO7t2J8qpdJImLxQ3rMuurluuTZObY+WvnJTy1saFWSVNTx3
 0ZFIvg81+ZYGUalO6Tx5FC2+BJNl500ACxxwfq4TznFm0k1vcQPD02bBt8tm/cbfBHr2
 +isU64RUXewDk1dHu9GrZDZRfkGb4uDBEJMpRsD066Ng+3tkND5S04dM1tJc7iJPv4gq
 ipmw==
X-Gm-Message-State: AOAM533086Fnt8DHxGFg+p+ZmWTN1YDDSeHmnPycVeFjuyS9C5neR/HF
 V99ivNLnxyJO6nh/TeGJrD+/Ew==
X-Google-Smtp-Source: ABdhPJw6UdK6EvbrCZR9oI7Y/lj0ixmOJb1GySty9GkBuhkr6xkCMVcUsziw1dtnOiTiE13IAzjMWA==
X-Received: by 2002:a1c:f619:: with SMTP id w25mr1209094wmc.62.1601623178852; 
 Fri, 02 Oct 2020 00:19:38 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id v204sm757860wmg.20.2020.10.02.00.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 00:19:38 -0700 (PDT)
Date: Fri, 2 Oct 2020 09:19:36 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 2/3] media: zoran: get rid of an unused var
Message-ID: <20201002071936.GB15586@Red>
References: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
 <0425a08a629f50f05159f6c458e0942bf62a7792.1601544491.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0425a08a629f50f05159f6c458e0942bf62a7792.1601544491.git.mchehab+huawei@kernel.org>
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
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 01, 2020 at 11:28:14AM +0200, Mauro Carvalho Chehab wrote:
> The jpeg_error in lowercase is not used anywhere. Drop it.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/zoran/zoran.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
> index 7217a64fe59b..945502becd60 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -264,7 +264,6 @@ struct zoran {
>  
>  	/* Additional stuff for testing */
>  	unsigned int ghost_int;
> -	int jpeg_error;
>  	int intr_counter_GIRQ1;
>  	int intr_counter_GIRQ0;
>  	int intr_counter_CodRepIRQ;
> -- 
> 2.26.2
> 

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
