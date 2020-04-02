Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEA119CAC8
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 22:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB9148752A;
	Thu,  2 Apr 2020 20:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31KH795DJS6f; Thu,  2 Apr 2020 20:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82791870BD;
	Thu,  2 Apr 2020 20:10:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A52171BF3E6
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 20:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1AD787317
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 20:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quyyrCwIjpeT for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 20:10:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC72F870BD
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:10:25 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a81so5085305wmf.5
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 13:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5UitrtcQcLyUuypDd55yvaCM6NIpqOgNi0sTpbymWqI=;
 b=jLUnozkZzk4wHj1zfjABKiOeRlA+KmFZy7xnaV7k84+hygjsJgnWCGl9rdGgKYZBLD
 EcCtl/2F/L+6SK6Nkmj7cSBZpmfEVcfaE/qebmIW6CTRo2jxjsafOZlyF0jYEup9bFUi
 KGbP6hKKwQjR8wryIky2THe219oIq9qoE2XBaUV/36TfgDLK5yNsRDQgzifAv3x+0ide
 +dXZS9T6AvOWhnXvKDqTZUIA3tBWJH6ohCIqHEGb5gqscpHUgOoqqI2D1xRjMnZ8VFkn
 kwdj5LogxrcQpwPdW6Q4ABa1wP7PSaceNqWWFLzdpN2R7BSMNvMX0ui6JP1NzEy59lPA
 WSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5UitrtcQcLyUuypDd55yvaCM6NIpqOgNi0sTpbymWqI=;
 b=Po4L3TWVK6K4exYG17cT2CFhLjzrjvZ3UeCz06oLug2lSJ2mSJTA544r+khrtnkjQC
 7QIbi0k7pWOhNbisgNO7tVvN6zGTAMN/djosa7LzakUIG2PP8lB8efVOVQHs1CYXagCY
 HH9ayioKFT10JJPH6RjIlCU7kA/9mF30pn+Yegivfg2sS3TZX2Je0NiRixANOsk44On1
 tMa36l/XuCIdoT1VNSS4A0OHL7ruQnjnc6Y6heJgHWKw5hyRkHLRr3XeQ9FgLFZ4EOah
 wtFsH04YravNi7wH1CwpDSgTfMUBGGg8LJKW6yJPAhg1ZfX2L658bFKeNff764U3/8SY
 Irrg==
X-Gm-Message-State: AGi0Pua8jOV/iMjJXJqtOpp6wHmbMCbFYK9EG+g1mUtYe6nfj+8G91RH
 yPqXlQPP60t5Fe3qulhLAEY=
X-Google-Smtp-Source: APiQypIbEEkJukJIMkBcjNC0Z/IpCLXYe/ZM6jvYBjXgKEX9jEuufWBxIiPSsGTTRPDqcUTlIC+mKg==
X-Received: by 2002:a1c:c257:: with SMTP id s84mr5274398wmf.9.1585858224173;
 Thu, 02 Apr 2020 13:10:24 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r5sm8462481wmr.15.2020.04.02.13.10.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 13:10:23 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
 <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
 <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <20ae21a6-74b0-ff99-80d9-1a0ce2cc1aa5@gmail.com>
Date: Thu, 2 Apr 2020 22:10:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
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

On 4/2/20 9:46 PM, Helen Koike wrote:
> 
> 
> On 4/2/20 2:20 PM, Johan Jonker wrote:
>> Hi Helen,
>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index fc0295d2a65a1..815099a0cd0dd 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>>>  		status = "disabled";
>>>  	};
>>>  
>>> +	isp0: isp0@ff910000 {
>>> +		compatible = "rockchip,rk3399-cif-isp";
>>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru SCLK_ISP0>,
>>> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>>> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>>> +		clock-names = "clk_isp",
>>> +			      "aclk_isp", "aclk_isp_wrap",
>>> +			      "hclk_isp", "hclk_isp_wrap";
>>
>>> +		power-domains = <&power RK3399_PD_ISP0>;
>>> +		iommus = <&isp0_mmu>;
>>> +		phys = <&mipi_dphy_rx0>;
>>> +		phy-names = "dphy";
>>
>> Maybe a little sort? But keep rest as it is. Also in example.
>>
>> 		iommus = <&isp0_mmu>;
>> 		phys = <&mipi_dphy_rx0>;
>> 		phy-names = "dphy";
>> 		power-domains = <&power RK3399_PD_ISP0>;
> 
> Are you proposing only to move power-domains after phy? And keep the rest?
> What is the main logic?

There is no hard rule... It mostly depend on Heiko...

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

Inside nodes:
If exists on top: compatible, reg and interrupts.
In alphabetical order the required properties.
Then in alphabetical order the other properties.
And as last things that start with '#' in alphabetical order.

> 
> Thanks
> Helen
> 
>>
>>> +
>>> +		ports {
>>> +			#address-cells = <1>;
>>> +			#size-cells = <0>;
>>> +
>>> +			port@0 {
>>
>>> +				#address-cells = <1>;
>>> +				#size-cells = <0>;
>>> +				reg = <0>;
>>
>> Move reg above #address-cells. Change that in example as well.
>>
>> 				reg = <0>;
>> 				#address-cells = <1>;
>> 				#size-cells = <0>;
>>
>>> +			};
>>> +		};
>>> +	};
>>> +
>>>  	isp0_mmu: iommu@ff914000 {
>>>  		compatible = "rockchip,iommu";
>>>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>>> -- 
>>> 2.26.0
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
