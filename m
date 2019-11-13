Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B413FB829
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 19:56:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAE6C86CFC;
	Wed, 13 Nov 2019 18:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iad6xrd1KQHz; Wed, 13 Nov 2019 18:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8424D86ABB;
	Wed, 13 Nov 2019 18:41:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 553711BF41D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C5B624B78
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEi9+pGJ28cO for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 18:41:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 1975F255A6
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 18:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573670433;
 bh=NpwbaUMLPgibb/gpZLIS1j+4GHiRKA7p8UVY+GV0rc8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Ce0fh8PIHk1ip1jUmwQXRYyHzqReuPk7COayaMiUuMc2ANKcVWPADrshJ+1n2F7gi
 HxwYRZ1tmhpDCepTi2FzQ2H287goYLHPnu055jrg8UQRFEaySqY9x6BXUCHr3243mf
 iI2cLiCgFXvlSFRDzrNsO/4Pav/5fBJPiVUgCW98=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.170] ([37.4.249.97]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAONX-1icPPf3w9j-00BuXJ; Wed, 13
 Nov 2019 19:40:33 +0100
Subject: Re: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
References: <cover.1573482698.git.marcgonzalez@google.com>
 <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <8634c030-7abe-4446-9803-d4964311990b@gmx.net>
Date: Wed, 13 Nov 2019 19:40:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
Content-Language: en-US
X-Provags-ID: V03:K1:jbDacqIFB73Cw6VLzkyu/iIqN72zvasCoZHQLV7CwNzXjqYO+eF
 zzG4cCbYEdXLFA4O2SxR7YNH5FIkJg79TJTH6njMYE+WflSbg6bfzWU0qCJtVTm2SxiRKur
 XPfIEiJM2Tq1F4Z9KtMc7ypC45ofxUy4BYC8Sw/he3k4wtHqq4uHjjCEt9ZprhGbb7cTu5O
 kAuXmeUADwThD3JFeKQdA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:veoMqHYr92A=:8l1t5V7d11nkBE1So550/x
 PJKdz/bySOmd4ceE5oBRh+fcF8wDWKYRELoWsCziqeoDWcF2psYd5SRoERrPn4FDvL2C7RfYd
 L8mrRi2n1joub4ZKF2lNwzVRgmlR/ViZOPQfXBh5G4eL8+QNWdUWbsK9fkMx+HeUTJXExIaZj
 vPNdFRB9aoMsFhGyFrlo3PWzatrCthpYmny7Ym/waj1QvRieSV4jyH1G/WwBLyJ1ZyB2A7P17
 VgRND2Zzh0nGdqRAmcDHmWt6UxBJ++WH5GWVbOvNtK2Lk3nAY6zNIpE0OqKWpSIB1c67d6tAt
 8SnvUEJynFQHanWMBdERHtPr4A9KiIvLuTEtOidCul3O1z5tkymQS7IhGEO7PF8MXBQ9FPWrw
 6x/op/sRqArugPXTPdlqC3U2/9vzsHT9tlDMCLBJqHpgp/toXmZba44x1tbMAROkXEDOWox29
 b9nkoVJzTxWclGnCdmw3FK5LZCjWzce/+/rwZPZCpAbKvYU/eLgiX486+tSmiOmnI5UIMY8xf
 35mf99Rwq/P2WPGwBvdQfp3DWQqAti0/ooQZ1lU+tDkQo49IkmMqskarc7MSteYGSXC1/pUt2
 G8dFC4/DMXoj2gP0aaCBCNf8iFsQioVcU7KpRKyTcZQOpusY+zEJbkCEyhjKBfxD5WCglaRU0
 VuA+WeFoYRnv9WBwkEjDEoS+bBhbNDcuKTuW59072i0HBJ6si9fb/j8dTc1kR7L5mkBR1hfts
 LS0h8lD7hLoM1g8ju2QfAwAchil7BB+7z2kxzoXF9Rdmz9FOGRbSgN+DmIt1EIb8STsc5irtL
 S4xyo/s2g2xn6b8WdU/hXqOBLkd8koNdQ47HEXMbqbOiSomrcA1G8oVrHetuyrDnuuFetQaBu
 vMuk5K+zeZu3JMIBR07Hyb/C79mXOwNr+q5wE3mQroDcyuAeiR7tkC9BLg3l/ymMOzHJ654Mj
 mZoqXN0H9E16m66zXNL5GaKwvhWGezVm8T+ui+Vq4ziDGuNV1yx+g2fUFkpsatmgwVrd+A8hp
 sKgXgLi51XGn8KUpzuTtLcwDlqFKTzOjAxsTdkHEVpdtLDCFVR+cOQblX6Lzqk3UZVlBGVQ8T
 l05jmPPe282RpUbNjwGlZ9HnpmY7oiH8IK2jeL4wq3Mml+fvorEHCqHOqv75tWE3zfxD3lOGp
 uTr12rXb+kZSQckTyGbJsk3Y9RE2eGAuWgCUaNcth9T4IDQaOfCBurHpXdjFR5qIBm0D67yw2
 aNlgcU1lJuz9WOmdofU46BhOcC12O69mHA013anMQCdYYSQ+5sE9gpmzeUXI=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Marcelo,

Am 11.11.19 um 18:14 schrieb Marcelo Diop-Gonzalez:
> Moving the DT node check to vchiq_platform_init()
> removes the need for these.

this comment does match to your changes. Also i'm missing a why this is
necessary.

>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |  4 ++--
>  .../interface/vchiq_arm/vchiq_arm.c           | 20 ++-----------------
>  .../interface/vchiq_arm/vchiq_arm.h           |  4 ----
>  3 files changed, 4 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 5ac88be9496b..b133b25c44af 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -78,7 +78,6 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
>  int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
>  	struct device_node *fw_node;
>  	struct rpi_firmware *fw;
>  	struct vchiq_slot_zero *vchiq_slot_zero;
> @@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
>  	if (err < 0)
>  		return err;
>
> -	g_cache_line_size = drvdata->cache_line_size;
> +	if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
> +		g_cache_line_size = 64;
>  	g_fragments_size = 2 * g_cache_line_size;
>
>  	/* Allocate space for the channels in coherent memory */
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index c666c8b5eda2..cc753ba9c68c 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -140,14 +140,6 @@ static DEFINE_SPINLOCK(msg_queue_spinlock);
>  static struct platform_device *bcm2835_camera;
>  static struct platform_device *bcm2835_audio;
>
> -static struct vchiq_drvdata bcm2835_drvdata = {
> -	.cache_line_size = 32,
> -};
> -
> -static struct vchiq_drvdata bcm2836_drvdata = {
> -	.cache_line_size = 64,
> -};
You are touching new code which was introduced to keep the driver easier
to maintain (e.g. add support for new SoCs like BCM2711 on Raspberry Pi 4).

So please keep the OF match data handling. But i'm happy to see the
platform data as a const.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
