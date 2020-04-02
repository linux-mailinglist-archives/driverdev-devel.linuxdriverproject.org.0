Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D79E19C2FB
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 15:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 14CCB20529;
	Thu,  2 Apr 2020 13:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ycbSjD+0tn6; Thu,  2 Apr 2020 13:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FFD9204A4;
	Thu,  2 Apr 2020 13:48:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3D41BF23F
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9834187074
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hqxcXng-5-8b for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 13:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE6B587065
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 13:48:06 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c195so6068903wme.1
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 06:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JdEZdR8yjtlVoMZNQrbxmUtK0B2+Djm4LLppLoO//ag=;
 b=UTJlCycdxWzo8SkwC++itw0GwatKMfwLvoM8hEz5hz0itKOrDAtfARRjd08KAo/YlH
 iYT7miwWVvjXGIMOVY3OjO3n0Mn8Ksa9rY5az4HK5BUJ68HWuftxPfKhAEhGYA4Yn2Dx
 La5wev2ZBzXN90dpwna9UbVHyMHP4wB2LvKgVYRbqg7U00y7LfYpOp1n+6KQfV2sld/l
 yav91x+sISP54xu2tPy0MbVaptxe9HBydeIqtNP10Zc2zcyTUnXn/ANeO5KMYsdqlk66
 bfclrPNbmCjER1axdhz0RvwvbhQm2h+TcIw1ChSyayEzTqXtXCokTwUd8+MfFtI9EATW
 Qkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JdEZdR8yjtlVoMZNQrbxmUtK0B2+Djm4LLppLoO//ag=;
 b=Cc21E4QrWgCEffUn1Onj1Qbj8e6fDnq1NTSip4oum09YJ18qIE7cr9+xeI+M1jQs10
 6l/vU/ciGy7H414JmjMhDHcqodwET0htMbaBL00niZpRqkuJXGU7Y2f/nD+2HgTvrj+G
 eEzLc1j9kzTO7eeftBlTkUP4J4dyGBTpf10jZNF3KZeLTH6Sgf/BbsnAIv4dVnIxUsD+
 3RcgJAIK0TPW6RvtndygwErrApOKCfoZN2sZIIEoIzIPKaVUpovJism1KwOvEj1EUHGx
 pvcI573GcHwkjNDj9hiAqFf5rszT2epYGWcTsi9xAU1x37g3DyLKW1qM74DcMXZZc8mk
 kZtQ==
X-Gm-Message-State: AGi0PuYu7x0gQEMNciOSrsUXetkdb8N/jH9aLRn5PZ9vGDqDKWoPqL5O
 LCl3hZo4JfYmpWrrZZE0zRA=
X-Google-Smtp-Source: APiQypKpdlsAkbdIzYdLmLeSVwA00to9hBXvBdZjAZl5uSzVZ+jldunwGUNL5wE1hbN9a3RTQzrH8g==
X-Received: by 2002:a7b:c185:: with SMTP id y5mr3723403wmi.90.1585835285227;
 Thu, 02 Apr 2020 06:48:05 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u13sm7008313wmm.32.2020.04.02.06.48.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 06:48:04 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-4-helen.koike@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
Date: Thu, 2 Apr 2020 15:48:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-4-helen.koike@collabora.com>
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

> From: Helen Koike <helen.koike@collabora.com>

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 33cc21fcf4c10..fc0295d2a65a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1394,6 +1394,17 @@ io_domains: io-domains {
>  			status = "disabled";
>  		};
>  

> +		mipi_dphy_rx0: mipi-dphy-rx0 {

For Heiko sort syscon@ff770000 subnodes alphabetical or reg value first?

> +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
> +			clocks = <&cru SCLK_MIPIDPHY_REF>,

> +				<&cru SCLK_DPHY_RX0_CFG>,
> +				<&cru PCLK_VIO_GRF>;

Align                            ^

> +			clock-names = "dphy-ref", "dphy-cfg", "grf";
> +			power-domains = <&power RK3399_PD_VIO>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		u2phy0: usb2-phy@e450 {
>  			compatible = "rockchip,rk3399-usb2phy";
>  			reg = <0xe450 0x10>;
> -- 
> 2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
