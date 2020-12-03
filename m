Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FF52CCDD5
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 05:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12F0987273;
	Thu,  3 Dec 2020 04:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0ERTy2gxNS9; Thu,  3 Dec 2020 04:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3723F87278;
	Thu,  3 Dec 2020 04:21:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4663E1BF2F3
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 04:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42D1587273
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 04:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWuKmkFcAD2j for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 04:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F095D87267
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 04:21:00 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id t19so291278uaq.1
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 20:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DcIEExrbxW09u75pxnwKALCT9ZbEoGFab0Y+pgzyv5k=;
 b=tAhQN9hOEvvEOdqbdUrfAHnsnH4R1al2m0Lu89NvB8x1sHuNGlvk5Z0A23NDrewJTM
 DCGz/aW6drez6CFfMW7wLl+ql+YFGvN2XsURSjM78dMjBgmlrMq6RZpSaR+T9jsb4xhI
 W4m+C76+Tlp8iHxXGxGKuN4/vYc4BUjfGSApNfX62PPlYCX0C3mEOnsaj5srbSuT4Joj
 vlcVSQGP1A+xlDEq6zqPC5q+DlkaLwMLCjutf5C+Slskv/IKydg08AHe5Ym8pVypMmqP
 64Uge29xdwvsay+ZcEDEfLUw7dx7ccAjgvE2xggwgXgH7kM8XT8j/yjXpJ28MC6vfATZ
 Sj6Q==
X-Gm-Message-State: AOAM5302enbbU7UnY5JDCT/H9L4gf/scBWP6jlrseDRV4Hucs1Or7q4E
 Kgz7ZyH1XdrXAkqi0KDhVikEAwAtH4pLXQ==
X-Google-Smtp-Source: ABdhPJzPepVEhVSUZXiLK3RJfOAfzk+dS4fAfBvJwMGYxt7p2nTKhRkZIVe0z6g0aoJtruW2nCY9VA==
X-Received: by 2002:ab0:5f9e:: with SMTP id b30mr997029uaj.35.1606969259464;
 Wed, 02 Dec 2020 20:20:59 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com.
 [209.85.217.43])
 by smtp.gmail.com with ESMTPSA id f1sm2525vkh.12.2020.12.02.20.20.57
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 20:20:58 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id s85so559289vsc.3
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 20:20:57 -0800 (PST)
X-Received: by 2002:a05:6102:832:: with SMTP id
 k18mr1065101vsb.2.1606969257087; 
 Wed, 02 Dec 2020 20:20:57 -0800 (PST)
MIME-Version: 1.0
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-4-m.cerveny@computer.org>
In-Reply-To: <20201116125617.7597-4-m.cerveny@computer.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 3 Dec 2020 12:20:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v66T9aakxRQNBbA+=EC-d5EpmUrZSK5xTW=orK6Z7PyG9Q@mail.gmail.com>
Message-ID: <CAGb2v66T9aakxRQNBbA+=EC-d5EpmUrZSK5xTW=orK6Z7PyG9Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] ARM: dts: sun8i: v3s: Add node for system control
To: Martin Cerveny <m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Mon, Nov 16, 2020 at 8:57 PM Martin Cerveny <m.cerveny@computer.org> wrote:
>
> Allwinner V3s has system control and SRAM C1 region similar to H3.
>
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> ---
>  arch/arm/boot/dts/sun8i-v3s.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
> index 0c7341676921..70193512c222 100644
> --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> @@ -161,6 +161,20 @@ syscon: system-control@1c00000 {
>                         #address-cells = <1>;
>                         #size-cells = <1>;
>                         ranges;
> +
> +                       sram_c: sram@1d00000 {
> +                               compatible = "mmio-sram";
> +                               reg = <0x01d00000 0x80000>;

How was this address derived? Did you check that there is actually SRAM here?

ChenYu

> +                               #address-cells = <1>;
> +                               #size-cells = <1>;
> +                               ranges = <0 0x01d00000 0x80000>;
> +
> +                               ve_sram: sram-section@0 {
> +                                       compatible = "allwinner,sun8i-v3s-sram-c1",
> +                                                    "allwinner,sun4i-a10-sram-c1";
> +                                       reg = <0x000000 0x80000>;
> +                               };
> +                       };
>                 };
>
>                 tcon0: lcd-controller@1c0c000 {
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
