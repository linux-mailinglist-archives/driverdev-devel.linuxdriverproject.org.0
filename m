Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6419219C047
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 13:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 487B987E0B;
	Thu,  2 Apr 2020 11:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TNUqDNCpgmo6; Thu,  2 Apr 2020 11:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E114787D04;
	Thu,  2 Apr 2020 11:35:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2FF91BF3F7
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 11:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CBCF5887F6
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 11:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ps30ZfSvm1Qo for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 11:35:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82939887EF
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 11:35:10 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p10so3768194wrt.6
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 04:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3jRj6ArkhLpwKk89KkNwwo0VNZLkATY3JVXtCwdIArM=;
 b=K5EVHPS43D3wRMjNBYwFajRGzmakbnuj+UOMC+I3xmc/oBhq64lltzXE7tKv9ShvUq
 CtkZGwuDchILQM06WFVgVpu9QVxOfiQOJPLogjjrq7Noy1yl/sgroQB7YifPJ9J2Q9Sn
 nEWmbWbVkGjxYs1EGON1aNgsjj8TbBTVajQw2Cqh9bvzZiyLgOvXfqqaSwiChuPcvQwj
 UXVolcpVUn68hUorItLk6ayhBoV+pxvY17WazrWj4vC5NQ059F0EJe2koBP1s1NG0ESl
 7eSrl2K/7zk/XIPmzVQ+x2c5+RHguj+65zeVfXvTlvo/Jx/GK13Jx3Kn4i8RrKOmmxci
 eyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3jRj6ArkhLpwKk89KkNwwo0VNZLkATY3JVXtCwdIArM=;
 b=YZWj1XqfhWmD3yv1rzLtMchBfTwUcQabunceTjti9K9/eeBcXXh3cgIa2iIXti5r3k
 7McnuYlh7yYEBmtd+kUSHuZWNgt0sDx/qHhjBDXkdkW6TESjl9+EUrSV60itgMR354gW
 bJEfBu/QQ61tHLHwOtjZCPpcJyow2kjz2u+sCt1m/E9IDeba4eFSQjXwDomQP6ei2G/P
 KqJM86UE5qCN2QU7WEDjuJ08jqbIVurzQkZumKL9wkNUfFI+MTi5skCvjhqfM34+9oxP
 sz9/I6nIdxP3GVhZPD5RGFeYWeyhn/QAmOir2n5zRiFCFHe+xa3SmXKzMH4zVRWP2Oor
 BO8Q==
X-Gm-Message-State: AGi0PuZgBSd3zA6++Js2XfPKmmujC55zlpYOdHI/hksms7zNTqP+0Epy
 1kpBwU1lG3pdv70/EQuJGk4=
X-Google-Smtp-Source: APiQypJScYhchNteJw20HMwQtHnfXa6FcDztGwsdbPdIPctfKge9tKbWTf7Ki51Ie81cFzzp4rihKQ==
X-Received: by 2002:adf:97d0:: with SMTP id t16mr3091065wrb.343.1585827308886; 
 Thu, 02 Apr 2020 04:35:08 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m19sm5863793wml.21.2020.04.02.04.35.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 04:35:08 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-3-helen.koike@collabora.com>
Subject: Re: [PATCH 2/4] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
Date: Thu, 2 Apr 2020 13:35:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-3-helen.koike@collabora.com>
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
> $id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 

> title: Rockchip SoC Image Signal Processing unit v1

Where do we need 'v1' for? Is there a 'v2'?

> 
> maintainers:
>   - Helen Koike <helen.koike@collabora.com>
> 
> description: |
>   Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
>   which contains image processing, scaling, and compression functions.
> 
> properties:
>   compatible:
>     const: rockchip,rk3399-cif-isp
> 
>   reg:
>     maxItems: 1
> 
>   interrupts:
>     maxItems: 1
> 
>   iommus:
>     maxItems: 1
> 
>   power-domains:
>     maxItems: 1
> 
>   phys:
>     maxItems: 1
>     description: phandle for the PHY port
> 
>   phy-names:
>     const: dphy
> 
>   clocks:
>     items:
>       - description: ISP clock
>       - description: ISP AXI clock clock
>       - description: ISP AXI clock  wrapper clock
>       - description: ISP AHB clock clock
>       - description: ISP AHB wrapper clock
> 
>   clock-names:
>     items:
>       - const: clk_isp
>       - const: aclk_isp
>       - const: aclk_isp_wrap
>       - const: hclk_isp
>       - const: hclk_isp_wrap
> 
>   # See ./video-interfaces.txt for details
>   ports:
>     type: object
>     additionalProperties: false
> 
>     properties:
>       "#address-cells":
>         const: 1
> 
>       "#size-cells":
>         const: 0
> 
>       port@0:
>         type: object
>         description: connection point for sensors at MIPI-DPHY RX0

>         additionalProperties: false

Nothing required here?

> 
>         properties:
>           "#address-cells":
>             const: 1
> 
>           "#size-cells":
>             const: 0
> 
>           reg:
>             const: 0
> 
>         patternProperties:
>           endpoint:
>             type: object
>             additionalProperties: false
> 
>             properties:
>               reg:
>                 maxItems: 1
> 
>               data-lanes:
>                 minItems: 1
>                 maxItems: 4
> 
>               remote-endpoint: true
> 
>     required:

>       - port@0

The use of '@0' makes "#address-cells" and "#size-cells" also a requirement.

- "#address-cells"
- "#size-cells"

> 
> required:
>   - compatible

How about 'reg'?

- reg

>   - interrupts
>   - clocks
>   - clock-names
>   - power-domains
>   - iommus
>   - phys
>   - phy-names
>   - ports
> 
> additionalProperties: false
> 
> examples:
>   - |
> 
>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/interrupt-controller/arm-gic.h>
>     #include <dt-bindings/power/rk3399-power.h>
> 
>     parent0: parent@0 {
>         #address-cells = <2>;
>         #size-cells = <2>;
> 
>         isp0: isp0@ff910000 {
>             compatible = "rockchip,rk3399-cif-isp";
>             reg = <0x0 0xff910000 0x0 0x4000>;
>             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>             clocks = <&cru SCLK_ISP0>,
>                      <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>                      <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>             clock-names = "clk_isp",
>                           "aclk_isp", "aclk_isp_wrap",
>                           "hclk_isp", "hclk_isp_wrap";
>             power-domains = <&power RK3399_PD_ISP0>;
>             iommus = <&isp0_mmu>;
>             phys = <&dphy>;
>             phy-names = "dphy";
> 
>             ports {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> 
>                 port@0 {
>                     #address-cells = <1>;
>                     #size-cells = <0>;
>                     reg = <0>;
> 
>                     mipi_in_wcam: endpoint@0 {
>                         reg = <0>;
>                         remote-endpoint = <&wcam_out>;
>                         data-lanes = <1 2>;
>                     };
> 
>                     mipi_in_ucam: endpoint@1 {
>                         reg = <1>;
>                         remote-endpoint = <&ucam_out>;
>                         data-lanes = <1>;
>                     };
>                 };
>             };
>         };
> 

>         i2c7: i2c@ff160000 {
>             clock-frequency = <400000>;
>             #address-cells = <1>;
>             #size-cells = <0>;

Incomplete example.
From i2c-rk3x.yaml:

required:
  - compatible
  - reg
  - interrupts
  - clocks
  - clock-names

> 
>             wcam: camera@36 {
>                 compatible = "ovti,ov5695";
>                 reg = <0x36>;
> 
>                 port {
>                     wcam_out: endpoint {
>                         remote-endpoint = <&mipi_in_wcam>;
>                         data-lanes = <1 2>;
>                     };
>                 };
>             };
> 
>             ucam: camera@3c {
>                 compatible = "ovti,ov2685";
>                 reg = <0x3c>;
> 
>                   port {
>                       ucam_out: endpoint {
>                           remote-endpoint = <&mipi_in_ucam>;
>                           data-lanes = <1>;
>                       };
>                   };
>             };
>         };
>     };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
