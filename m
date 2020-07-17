Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77364224208
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 19:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6FA9122225;
	Fri, 17 Jul 2020 17:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id beTIWQmd7824; Fri, 17 Jul 2020 17:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BAFA20336;
	Fri, 17 Jul 2020 17:41:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BEC51BF370
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 141B18679E
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 17:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xaQ6HZsk5EWU for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 17:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9DEB385F4D
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:41:53 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F8AD207DD
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595007713;
 bh=IHtosK/cU7rm8auOB6C6086pQzaynAGkPV8Dk9VgPrY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dnpzmbFDpuALSjdys73ua8kwP+uNpa99Kol16c25V8MYnXE5KrYB+Ih7FUvaqod9S
 CQiyZ9n9CSHYnUmGCnMdXDSZUvEyPdIWKMYWS1XeVoxqGhRQsVU1konXWZJBjLQrtG
 FNG9B6OJkRqUfMlTYXwFrB510NiDAVHnRp/VxnE8=
Received: by mail-ot1-f48.google.com with SMTP id g37so7432532otb.9
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 10:41:53 -0700 (PDT)
X-Gm-Message-State: AOAM533qwD+qPWuwVtwpsOdva6cr6DlY4yO4d201T3TuGwdsW7hcosoB
 /rfl9fA3ZqBzfx7cvivPa4w47fqiYtT6E48UMw==
X-Google-Smtp-Source: ABdhPJzkf9BqpjBd74nnbCjOXAfw7dQeRZj8mdtmLdN6QAW26s3IWlXrcYqoTVfbQTiEkfvKsnxzes0AvpYpbmRVQv4=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr9971353ots.192.1595007712689; 
 Fri, 17 Jul 2020 10:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-3-helen.koike@collabora.com>
In-Reply-To: <20200702191322.2639681-3-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 Jul 2020 11:41:40 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+5vW2cCz1oxVE-R3MW7gQfSHKrR_YrGm5ZHnjCCd9_Vw@mail.gmail.com>
Message-ID: <CAL_Jsq+5vW2cCz1oxVE-R3MW7gQfSHKrR_YrGm5ZHnjCCd9_Vw@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] media: staging: dt-bindings: rkisp1: add required
 items in i2c example
To: Helen Koike <helen.koike@collabora.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add missing required items in Rockchip ISP1 dt-bindings example for
> a complete i2c node.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>
> Changes in v2:
> - new patch in the series
> ---
>  .../devicetree/bindings/media/rockchip-isp1.yaml             | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index a77b6ec500c95..8c7904845788d 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -169,6 +169,11 @@ examples:
>          };
>
>          i2c7: i2c@ff160000 {
> +            compatible = "rockchip,rk3399-i2c";
> +            reg = <0x0 0xff160000 0x0 0x1000>;

This will give a warning now as the default cell sizes are 1.

> +            interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH 0>;
> +            clocks = <&cru SCLK_I2C7>, <&cru PCLK_I2C7>;
> +            clock-names = "i2c", "pclk";

Just drop the unit address rather than adding all this.

>              clock-frequency = <400000>;
>              #address-cells = <1>;
>              #size-cells = <0>;
> --
> 2.26.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
