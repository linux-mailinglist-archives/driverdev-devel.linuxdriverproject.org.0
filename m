Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1A01B5CA4
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 15:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79F818784C;
	Thu, 23 Apr 2020 13:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WiR8oxR-QF7U; Thu, 23 Apr 2020 13:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08B6986CC0;
	Thu, 23 Apr 2020 13:33:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD6661BF358
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 13:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD297226CF
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 13:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XoIpxC0oz+sk for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 13:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 548EC2041E
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 13:33:45 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id b11so6868122wrs.6
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 06:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0Mxnr6QHfY5l0I7jQqZWYhUgYSSrzd0fZHj7N3zbutY=;
 b=VuH56kWd003boJuQQcUlw8yVQmGe1BHZSvNdF/cY7EpN4JQOs8Miy6zpbzOtbAL5TA
 tD6pAoBxupOUJE+vpfkf1o1ofVZbwDudQV3/1JM8c6ZooCk2GazIUtTqKgUbISjq4KGQ
 +AC8O0Aphrq9v23aGS4oVwBJ2mm+nhjCa0WmRNmxlppUbHMLLAIkIB9OpYx+/UoW28s5
 DtHlCvRf6TUGyU2+w6WYWSjiQYowqvbr/uRLT7lcuG1y6fsRNSc4hJr9PZiRxgE0IW4N
 eg/Sar2b2uNOVTodH/4Ic8t8kbRSYHuRzc7TaMXuX5V+SFEsZfBeeyLJdhr5SuQ3VnmG
 ZBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0Mxnr6QHfY5l0I7jQqZWYhUgYSSrzd0fZHj7N3zbutY=;
 b=NG4mQFB/1rhyEQRn58FlBIMF9zbqm4WCJMVOtrJ35j356ED4JDa9qpNE/T7Vh4h6Q0
 JCcu1/8thS6ZT07FKZkeHdncSnV5AWk8R0lY08KlgVdk3x3HLEJsql9SyJo8ifww8rcs
 A7iZJB6WuNRBghIBIE+LuK+zjIqMIormONRlsFp4YS/GfoN6so6nYNhsAqCc8SK9Xej+
 7LaN+F5yKAj92pO/BBlcp7iMeclkrJDA0OyTEzUPWjD+xQlz3JU4og+2lLrB8gGDAMs+
 +pWFnAJdOYl9RpYw4FQkBBn10HQKlzBaoRNk8m8WCM3V32ZvGRg4JbXu8auMi2djng90
 bBgw==
X-Gm-Message-State: AGi0PuYXkK64B4kJLtsOJ0bF0csmLiHkdYY9xPmYC15DFmzUarNFItn5
 jPbyQJqhkcZz9H8mqpBXSDA=
X-Google-Smtp-Source: APiQypLpY8N4F27spciix9Sp0I6NywG1ZST5sjbgl6JI+cEYUmY2EnFBHiU/1vkTiDZA9R8SP6bOVA==
X-Received: by 2002:adf:f4cb:: with SMTP id h11mr589133wrp.191.1587648823644; 
 Thu, 23 Apr 2020 06:33:43 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v7sm12489779wmg.3.2020.04.23.06.33.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 06:33:43 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <32115405-8a29-29ee-69e2-7c662689ecfd@gmail.com>
Date: Thu, 23 Apr 2020 15:33:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,


>   clocks:
>     items:
>       - description: ISP clock
>       - description: ISP AXI clock clock
>       - description: ISP AXI clock  wrapper clock
>       - description: ISP AHB clock clock

Too many clocks here             ^
Too many spaces here                 ^

>       - description: ISP AHB wrapper clock

We can expect 4 to 5 clocks.
With 5 clocks and a different description this layout is maybe not so handy.

As first change:

  clocks:
    maxItems: 5
    description:
      rk3399 clocks
        ISP clock
        ISP AXI clock
        ISP AXI wrapper clock
        ISP AHB clock
        ISP AHB wrapper clock

And then later:

  clocks:
    maxItems: 5
    description:
      rk3288 clocks
        ISP clock
        ISP AXI clock
        ISP AHB clock
        ISP Pixel clock
        ISP JPEG source clock
      rk3399 clocks
        ISP clock
        ISP AXI clock
        ISP AXI wrapper clock
        ISP AHB clock
        ISP AHB wrapper clock

With 4 clocks:

  clocks:
    minItems: 4
    maxItems: 5
    description:
      rk1808 clocks
      rk3288 clocks
      rk3326 clocks
      rk3368 clocks
      rk3399 clocks
[..]


> 
>   clock-names:
>     items:
>       - const: clk_isp
>       - const: aclk_isp
>       - const: aclk_isp_wrap
>       - const: hclk_isp
>       - const: hclk_isp_wrap



On 4/3/20 6:15 PM, Helen Koike wrote:
> Move rkisp1 bindings to Documentation/devicetree/bindings/media
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> similarity index 100%
> rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
