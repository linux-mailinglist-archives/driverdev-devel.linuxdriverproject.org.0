Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB57D19C0F7
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 14:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1617F204CB;
	Thu,  2 Apr 2020 12:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3Svc5r3zekk; Thu,  2 Apr 2020 12:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0083204A4;
	Thu,  2 Apr 2020 12:16:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27EBB1BF29C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21A8A87E93
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNm1sOmttfmR for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 12:16:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 585DD87E91
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 12:16:49 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p10so3917927wrt.6
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 05:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9100ZMfQ3eWaJVwdNq9pSQeHCEwHDV/UJ/zuKVucMxA=;
 b=ALLV3AjWxKR07II/OzlDnRe+odhQFSFArcf8cWjQukJmd6WXsg9+vyfD8DfKX9gWMN
 o85KGRmQSCApKdFnuQRIdkmUme7sEKjqw5SXiIFrjdPkCVpclHE6AukhNWeb6yNKOhL8
 mSBvda/9k8hhDcs8hxq7Ir3tcfWNZFcNPUaqnc4VZGHD9WT/x2/UGQ7N9VjavMYukKnM
 K8ULMWCC9wgUMpVyfUQ+xkB0QzfidY2ZSgy9eCRnT7acIbLf8oyP71jF6JKhMbcYxj4Q
 HrYzq3IEOcIOy3d+DvXGwz17yj0IpLyHJbIGtAohcctCquPEvV8uOKDwrwF9JRdhOKkc
 77Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9100ZMfQ3eWaJVwdNq9pSQeHCEwHDV/UJ/zuKVucMxA=;
 b=lc5AsUFJWJ6YKDDZH4RXdwJU27aZu2PlMDncsC1xZxmEN68tv9X7Cv8OGBLwaPtpDU
 ZWxr2H6CFmAQPboWjApArOASfSEpPF0FeHXf+O+lt64Abo/zDfEQJd7mowC659hqCrV9
 WPDgkhwQAVNhAdaQmluv6F3SxqQkrIjcae/JL2Yoin2o1kSYW2T7fiNPgIMfm+b3V/rZ
 tL67hkKwNen0SHEy9/lcCbftXPe/U6okVOaXCM9Nsqs2sB6OjSZWn35go4HhOIJXqA0L
 xeTywOKHLNGwJP8rl4TqALrxGbopj2kf+l96sZEc506OsbukbU0GQgi1fNMpMw5ElJwU
 mKDA==
X-Gm-Message-State: AGi0PuYb8966x+9O4xtFUCVqU0kFPJEfSStIc2p+RNvA13yIFRWN1hrr
 PFqh+cyqGqKCL3oT33xCiTA=
X-Google-Smtp-Source: APiQypKji7UWQsmE5huunWfu+sXG44AGFdjl0/jp9OPk+bxWF6qOU3UNOHuPQ1YmcSNtr/z7NyzQ1g==
X-Received: by 2002:a5d:4c48:: with SMTP id n8mr3212293wrt.414.1585829807916; 
 Thu, 02 Apr 2020 05:16:47 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y12sm4191207wrn.55.2020.04.02.05.16.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 05:16:47 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-2-helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
Date: Thu, 2 Apr 2020 14:16:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-2-helen.koike@collabora.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> %YAML 1.2
> ---
> $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 
> title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
> 
> maintainers:
>   - Helen Koike <helen.koike@collabora.com>
>   - Ezequiel Garcia <ezequiel@collabora.com>
> 
> description: |
>   The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
>   the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
> 
> properties:
>   compatible:
>     const: rockchip,rk3399-mipi-dphy-rx0
> 

>   reg:
>     maxItems: 1

If 'reg' is not used => remove it.

> 
>   clocks:
>     items:
>       - description: MIPI D-PHY ref clock
>       - description: MIPI D-PHY RX0 cfg clock
>       - description: Video in/out general register file clock
> 
>   clock-names:
>     items:
>       - const: dphy-ref
>       - const: dphy-cfg
>       - const: grf
> 
>   '#phy-cells':
>     const: 0
> 
>   power-domains:
>     description: Video in/out power domain.
>     maxItems: 1
> 
> required:
>   - compatible
>   - clocks
>   - clock-names
>   - '#phy-cells'
>   - power-domains
> 
> additionalProperties: false
> 
> examples:
>   - |
> 
>     /*
>      * MIPI D-PHY RX0 use registers in "general register files", it
>      * should be a child of the GRF.
>      *
>      * grf: syscon@ff770000 {
>      *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>      *  ...
>      * };
>      */
> 
>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/power/rk3399-power.h>
> 
>     mipi_dphy_rx0: mipi-dphy-rx0 {
>         compatible = "rockchip,rk3399-mipi-dphy-rx0";
>         clocks = <&cru SCLK_MIPIDPHY_REF>,
>                  <&cru SCLK_DPHY_RX0_CFG>,
>                  <&cru PCLK_VIO_GRF>;
>         clock-names = "dphy-ref", "dphy-cfg", "grf";
>         power-domains = <&power RK3399_PD_VIO>;
>         #phy-cells = <0>;
>     };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
