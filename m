Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A287C35514E
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Apr 2021 12:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2613140F19;
	Tue,  6 Apr 2021 10:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X99UnvlPEsMw; Tue,  6 Apr 2021 10:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD93B40F05;
	Tue,  6 Apr 2021 10:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BDC81BF28E
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 10:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91BC18487F
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 10:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_y0JpN25FkZ for <devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 10:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FE5884876
 for <devel@driverdev.osuosl.org>; Tue,  6 Apr 2021 10:54:58 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id TjMBl4T2r43ycTjMElNcue; Tue, 06 Apr 2021 12:54:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1617706496; bh=KGNqE7vtP9+apsVEQYS3HwyvXAaxHklSuPGEUI1hzkQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LYdeDXQeL/YsRcoQOgNGrpvRBN20u1hq4XiQFUszeYziYxHO0c4NkZ4k0tamDh6Ec
 bCFrNmZ5OAUqW858uwUMB9ebAIQLBrhaAI4WVFTL9fvuMUDxXdzuC1rCTVJA/CmgFA
 DSNW0VJAIuAX4Yj76V/KywFh0ik88bWKggyDlnu/++MGMNZ94id3BwQ9V9kVSW/Fit
 4mMHIdAbCaGaUMcskiGL1nPi9hO/RbThkAiC0PTH+O63o3Q3ltERt9TwZbDQDh2fkT
 lzJWRX03q6ZylNvmQsND/9gBaJYTqq3Ulx89yQ+t5gki3BzcyzEpGCVory3SH855Xq
 aMl6BOdHm3F+g==
Subject: Re: [PATCH v8 01/13] dt-bindings: mfd: Add 'nxp,imx8mq-vpu-ctrl' to
 syscon list
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
References: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
 <20210401160003.88803-2-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <430b380d-a437-dfdc-5fe7-c5cfe2a44935@xs4all.nl>
Date: Tue, 6 Apr 2021 12:54:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210401160003.88803-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfNUlMbdwNq3v4AT78E7WX19Tqn0ScOtvTMR8PCQm+vYaaalzuFAzpeW+uB2V06rsoPQims10Rzebi13I8RHuqiXt9oWnHoZIYvyVbTfW1xD7azqfQp5c
 iOyxlx6fz9UrHgY63yuJl/Lgk28DiSLwqC1cr3J0KA0UM58ynYIUo6RehsTEKopyStCLRsL4ClIsecG4mZfZ7yAG20nTrjE4+f8rJnUXxwGyFIeTYY88C8WC
 kZxbvQRj/MaKFw/8R9jnFhLJGl6MGhL6FvYGkpG4Ed3IAVN8vkTR6LxnwdKHxrgtf1ol+izQwb1PUn7pYiIsUNQ+9+DJPdj3SZmuKqPGRj1tCu1E8XvwjIKP
 /e0nYfaXyI9EKStq7GUCuteTqchAWihH1iMuQ2VjRKlI0PR9qlpHrs/9CfcbIBZt9CLcCTrFT/iNVrMV8f2lxk2XWGawrF9Cj7K+PSQHWg2js3Sxm1x6DWU9
 3s7AobvTnc1/fcUZFs8G0hYqSer4oWCE9PzyyBQ4iaWTHfUowzEzdL34eHpGm2KiWuMknDRd4BYbVnU15qUx7IC/aPgfzX1pEg7T9vaY4Amg7Ko5s6syoz5i
 oGH9gbZdkpjpeSpbt62iY/KOiuoeenqFD2jVEuGU+AbyF272+/hFkW04Rf2qIaLpDbtn/dnlDshDCgux1cepO6Sydh8zigIWTngD3FGTgyJQQUafKn5czBca
 dGjH3GY3f1ZT6V5uXFoVRM25JJjPawa7kmfLba1XHs2bGnVLJuoF8LiIfGX6T+aVN1zhpHEk63IQHRuQElyPFQnLsbBi8W1YPQuQgWaRXRNSU0qbOGNuC/mr
 bHWdSpsF5j+eKlAVbS+6+vvpTDHyGtlc+7b932u08S3cpK8QX+ZYVt1j0DizwGN9yzE0NsBcFsNz5IvF5ZPs6yQGkx2/p3D2dsVQZycerAYqNNUzmdfYedlw
 PP0leHqZpMSMW3rOpnKvdkn7nN/GW4knsg6G80nVFO73qwS/YX94MAAOY9HXat35ZzLbx0eslDm1lHQGMUgEeY+ll/ol6Qyos1GFWE7THMuFPq0T
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Benjamin,

The commit logs in this series have a few too many grammatical
mistakes. And since I want some other changes as well, I'll just
review the text so it can be fixed in v9.

On 01/04/2021 17:59, Benjamin Gaignard wrote:
> Add 'nxp,imx8mq-vpu-ctrl' in the list of possible syscon.

in -> to

> It will used to access to the VPU control registers.

to the -> the

Regards,

	Hans

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> ---
> version 8:
>  - Add Lee ack
> 
> version 7:
>  - Add Rob ack
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index f14ae6da0068..ae22c4730613 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -44,6 +44,7 @@ properties:
>                - hisilicon,peri-subctrl
>                - microchip,sparx5-cpu-syscon
>                - mstar,msc313-pmsleep
> +              - nxp,imx8mq-vpu-ctrl
>                - rockchip,px30-qos
>                - rockchip,rk3066-qos
>                - rockchip,rk3288-qos
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
