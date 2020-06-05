Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D62591EF113
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 08:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 874E1220EF;
	Fri,  5 Jun 2020 06:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JekkFGTypV31; Fri,  5 Jun 2020 06:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB3AE203D2;
	Fri,  5 Jun 2020 06:01:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9AB71BF82D
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 06:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3C128771E
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 06:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqDJK4q2ZOpx for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 06:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5DF9876EF
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 06:00:53 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed9df320001>; Thu, 04 Jun 2020 22:59:14 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 04 Jun 2020 23:00:53 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 04 Jun 2020 23:00:53 -0700
Received: from [10.26.75.201] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 5 Jun
 2020 06:00:49 +0000
Subject: Re: [PATCH] media: staging: tegra-vde: add missing
 pm_runtime_put_autosuspend
To: Navid Emamdoost <navid.emamdoost@gmail.com>, Dmitry Osipenko
 <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Thierry Reding
 <thierry.reding@gmail.com>, <linux-media@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20200602054841.15746-1-navid.emamdoost@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <7061eb81-c00c-9978-5e4b-f9896c0ffd5e@nvidia.com>
Date: Fri, 5 Jun 2020 07:00:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200602054841.15746-1-navid.emamdoost@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591336754; bh=0dUrBQuoU0VRakO1MH9S67i+J3/nQDDpMEAcgsefyrU=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=R2Vq88wUbD09A+WcyBIhBotOM28XgztvZhV8dSXRV85oGVoan2uEgy1pSjb3Holxt
 PvIsxh7u7siC7ICTBTkp+RRjCSDJ17jxniW5x/LqC8+sy/xSRamXN1pcd3DQGpoyUE
 oSQ2GQ4Et0c32vMLlCHe2mYcxvHnoZ1pxHZTRNIOWlriT750mG73hET133SuVnQn9P
 t/zp6OrtY/4DkBAZQlMFcxwxJHcbTD5D6hVbvYAH7U8QAEC2bhCsU45h5JUVHdpGtg
 Ht/FOCL/0+Q/ZdMo4937jJhuU7DmdlB2Lgj1MCKiPWZ6DXVYWm78r4CCA8aLtrChA+
 ZcQyme+ON5FcQ==
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
Cc: emamd001@umn.edu, kjlu@umn.edu, wu000273@umn.edu, smccaman@umn.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 02/06/2020 06:48, Navid Emamdoost wrote:
> Call to pm_runtime_get_sync increments counter even in case of
> failure leading to incorrect ref count.
> Call pm_runtime_put_autosuspend if pm_runtime_get_sync fails.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/vde.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
> index d3e63512a765..52cdd4a91e93 100644
> --- a/drivers/staging/media/tegra-vde/vde.c
> +++ b/drivers/staging/media/tegra-vde/vde.c
> @@ -776,8 +776,10 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
>  		goto release_dpb_frames;
>  
>  	ret = pm_runtime_get_sync(dev);
> -	if (ret < 0)
> +	if (ret < 0) {
> +		pm_runtime_put_autosuspend(dev);
>  		goto unlock;
> +	}
>  
>  	/*
>  	 * We rely on the VDE registers reset value, otherwise VDE

Please use the put in the error path.

Jon

-- 
nvpublic
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
