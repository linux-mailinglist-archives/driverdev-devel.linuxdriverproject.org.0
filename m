Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11D72D2938
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 11:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFE758759F;
	Tue,  8 Dec 2020 10:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulkgVFYjv+Go; Tue,  8 Dec 2020 10:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1426B8759D;
	Tue,  8 Dec 2020 10:51:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0AFD1BF83A
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 10:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D4E9D2040E
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 10:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WdLBUznT7jhs for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 10:51:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E89D203AC
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 10:51:22 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id u18so22350947lfd.9
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 02:51:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=GJIypj7aFv+EkGs5X79db2AgKKCjUhxQkXJzRHihlW4=;
 b=HUsr5/7dGKHM02iVElA4DGfopqVwr49PPmBrfFXorbopuSGMYqEtE8m8q2ap0ESydM
 MwC+QKWgdA3gL3WBZhl2wBSR4W3El+k8PIEcfKHmeyfz/mq6AaTmSI+81pQYbBFCk9O6
 Xx3Flnhce35E8GgDs5zHQk7/745o8KtMJZlVPE9658CIqmsSoB0hbffBBIz8m/mFtBCW
 aPfAkyK8FJaXpu97FF9ccN1KFB12KHRDDFuBC/o0I1aEr8qVq61FLfq451UixgOmOgg4
 naXO9YBc4fWiXJRvDlLxubL+O9r6+Of8fC5wJBDWcHnPcMIMKX9RLI+pUQ/94QsAlbrT
 PLxw==
X-Gm-Message-State: AOAM533kdbgrn+jtaNoRFuxE8LF0GD7lVF6RHXrEG+iweWpqKVptrpU8
 Rih0ftlzUrAoYQMk8//bPwY=
X-Google-Smtp-Source: ABdhPJye8l8gwL4nXPcg3I4TNDJMJmiNV8b8jOOn38pTD8/MkgrkrpCw2W4bZFxmsVA5YkOvDRpVEg==
X-Received: by 2002:a19:2489:: with SMTP id k131mr3604491lfk.236.1607424680466; 
 Tue, 08 Dec 2020 02:51:20 -0800 (PST)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id n10sm1161481ljg.139.2020.12.08.02.51.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 02:51:19 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kmab6-00038e-VF; Tue, 08 Dec 2020 11:51:57 +0100
Date: Tue, 8 Dec 2020 11:51:56 +0100
From: Johan Hovold <johan@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v2] staging: greybus: Add TODO item about modernizing the
 pwm code
Message-ID: <X89azMazQfKZCKwm@localhost>
References: <20201208101607.42785-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201208101607.42785-1-uwe@kleine-koenig.org>
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

On Tue, Dec 08, 2020 at 11:16:07AM +0100, Uwe Kleine-K=F6nig wrote:
> drivers/staging/greybus/pwm.c uses the old style PWM callbacks, new drive=
rs
> should stick to the atomic API instead.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> On 12/8/20 10:39 AM, Johan Hovold wrote:
> > No sign off?
> > =

> > Please also add a staging prefix since this part of greybus still lives
> > there.
> =

> That after all these years I still fail occasionally to add a sign-off
> ... /me shakes his head about himself.

**it happens. :)

> Anyhow, here comes a v2, also with the requested prefix.

Thanks.

Acked-by: Johan Hovold <johan@kernel.org>

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
