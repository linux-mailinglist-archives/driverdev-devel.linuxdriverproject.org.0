Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B319734403D
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 12:56:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC05640209;
	Mon, 22 Mar 2021 11:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rzo6im1guDHt; Mon, 22 Mar 2021 11:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57BC240122;
	Mon, 22 Mar 2021 11:56:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1EDA1BF398
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD43760659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXi-5dvh4g6n for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 11:56:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F078B605A5
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:56:23 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id o19so18943970edc.3
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 04:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KS85IVDzb0H7K1jO3EiwO+5LR6In+7iTE4xtTzUGrfM=;
 b=MkK0DLI4jGhh0jNi8U1dH8B8/03b5UgOs80kYlp9lhL8YYeqwK/NpJrXn2Nud2lFQB
 tFOy/KwpjyBQWrPJTXgiFKOp8BcuSOsBTmpJ3VNWo3zyv71feWRS9GLna7FtAH7JxC78
 ZYy7XltspQfW2m980z/ZdVvZABkTxsylmnqRlWFnSONUdkAz+g6+idd8uQ0uYc/EG2bi
 pGBfrKbXdT9sXFbwJ8ZT0kG5MgfV0AmrscReIwZ6IIVIDsAh6V2FqvvvNsUzIwuV+hal
 K4uJa9lHcDNL2R4gOlnXVobKc7miHnyG9TSicOHpmnbr3ZcQ+qaL6vOkop/WuWVk7M8Z
 EQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KS85IVDzb0H7K1jO3EiwO+5LR6In+7iTE4xtTzUGrfM=;
 b=OsxRAMohZQ79k9g2ijibDT2zt2tnuK6OxPTRafqT5BRVgH0JFTRoC58FHzXPd7fE3w
 /KLPpSj7giDzgeemPYo4q4NdX7ADDB9a7r3BWcmRIcxIQI0D99MMC7Lu5eceq4esDlEm
 JEz2YCM9uDpm6l3xnIjCx/JwXOotIk2+2m5ax789qyPKCB24M7TQguOAD4IbREKnETue
 d5MWyH7o5RDso4dZcrDVA4f33voHODcVX27Gv4kW7MO1PhSCPmDx1OtJdGrFkVOX36ao
 QxGdqfjgxw/NSdG4+7Tnb0pf3pOaSjoIpwtcARjlXk3M9FhF7P4rlHoKW0R2p9UDAaCH
 hBEA==
X-Gm-Message-State: AOAM53275lHns+IFnQ1/tbvXYhgbKrAXtJy3W6bzW1dEADestyD/EPmf
 P8zRkwr9Rw67NyT72Vuah3w=
X-Google-Smtp-Source: ABdhPJwpVsrotPvmpeBqtoqp7lZGoCpny93lpHIapXgAftlRQ4tIEGo2ymIkhjPc4BiaflFrE0JryQ==
X-Received: by 2002:a05:6402:4245:: with SMTP id
 g5mr25409909edb.306.1616414182220; 
 Mon, 22 Mar 2021 04:56:22 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id n26sm11201580eds.22.2021.03.22.04.56.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 04:56:21 -0700 (PDT)
Date: Mon, 22 Mar 2021 12:56:39 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
Message-ID: <YFiF94ZDi2xdy8yx@orome.fritz.box>
References: <20210312122454.24480-1-nsaenzjulienne@suse.de>
 <20210312122454.24480-12-nsaenzjulienne@suse.de>
MIME-Version: 1.0
In-Reply-To: <20210312122454.24480-12-nsaenzjulienne@suse.de>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 bgolaszewski@baylibre.com, dmitry.torokhov@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8690530869723894074=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8690530869723894074==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WsDiv438+NmnlX5u"
Content-Disposition: inline


--WsDiv438+NmnlX5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 12, 2021 at 01:24:54PM +0100, Nicolas Saenz Julienne wrote:
> Adds support to control the PWM bus available in official Raspberry Pi
> PoE HAT. Only RPi's co-processor has access to it, so commands have to
> be sent through RPi's firmware mailbox interface.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> ---
>=20
> Changes since v7:
>  - Remove unwarranted RPI_PWM_DEF_DUTY_REG usage
>=20
>  Changes since v6:
> - Use %pe
> - Round divisions properly
> - Use dev_err_probe()
> - Pass check_patch
>=20
> Changes since v3:
>  - Rename compatible string to be more explicit WRT to bus's limitations
>=20
> Changes since v2:
>  - Use devm_rpi_firmware_get()
>  - Rename driver
>  - Small cleanups
>=20
> Changes since v1:
>  - Use default pwm bindings and get rid of xlate() function
>  - Correct spelling errors
>  - Correct apply() function
>  - Round values
>  - Fix divisions in arm32 mode
>  - Small cleanups
>=20
>  drivers/pwm/Kconfig               |   9 ++
>  drivers/pwm/Makefile              |   1 +
>  drivers/pwm/pwm-raspberrypi-poe.c | 206 ++++++++++++++++++++++++++++++
>  3 files changed, 216 insertions(+)
>  create mode 100644 drivers/pwm/pwm-raspberrypi-poe.c

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--WsDiv438+NmnlX5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBYhfQACgkQ3SOs138+
s6EnXRAAjnwdU3G0KN2XyFF2cU6Hmif3eeSfiKIfBkONfEQKpjd5lXaJQ5NhViG3
keYEFiM/eOnuhXWshnMGzwjq/G22ufO/owlbwlEsZo8Rf9SMkDkK0EgBSvM/9p6A
NshCjKRNEYqd0ajXxY5Pzo6ma/o9Qb6bbYAXzcFP4d3vMPYbA6M1utYAltUQrUBR
GvDmt1K93Jeuk6jbDXkNbi4x+pn3gUDEH4f+/jJfLT0gzAD/JNvD2uR5YDj58f9T
EqA9KHm/yk/6IsYBseBOHFbx1EZ8zO0HLl145Bg19GMfaab2FLEiL4s/3DUZ4U3m
admNIIPzr81WKtXvHPN7gNmzpLu5NEcUavkSKRVviKNXVSXA3geNsY1XCNTJkfk/
ijme2kA3fEkomnyB8KcVz2X96iqE6vAqySeddmBkfM0/HJcfdA93XyRIiDMU6IlJ
JXuuYKDwXthz/kioxs44h8cK04pW8MfJMqf5KESQfwQF57kFH2J3n0pseLtbHySV
w7LZ7rd/BT8zr9WBC5BCVWA43Xfx4kj2wOWEsMjp/6r6iLoPcPUPztEj1OLdskoN
xaGcQFozx6y9PsSLIFd6yn4HmMXMekgGQiuwMYpsiqDWfWMJpgIwMMhszu6F6Twx
OOx8TIiCBT1WQG2hMZY/13Pl1c5HoAxjDd6fPV2ixPH5lz4bjcI=
=2cN9
-----END PGP SIGNATURE-----

--WsDiv438+NmnlX5u--

--===============8690530869723894074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8690530869723894074==--
