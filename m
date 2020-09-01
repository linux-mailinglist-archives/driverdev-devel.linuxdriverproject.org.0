Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D2E25882E
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 08:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E172F204E7;
	Tue,  1 Sep 2020 06:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C5nmVb33-IaS; Tue,  1 Sep 2020 06:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EAC1D20483;
	Tue,  1 Sep 2020 06:27:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDE6F1BF39F
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 06:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF3E2204E7
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 06:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VM9Ua9gAO9J3 for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 06:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 96B5A204C5
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 06:27:33 +0000 (UTC)
Received: from coco.lan (ip5f5ad5cf.dynamic.kabel-deutschland.de
 [95.90.213.207])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 824342098B;
 Tue,  1 Sep 2020 06:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598941653;
 bh=vQRDkJyojcuTd04BSfsdD23ZJb7l6n5sNRdUCsmf2cs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yvDgvoVju9G9ODuA094i3jquBkzguo+LxrkgiGFFMFfbzAziJtG6VeEIsaf1m1m1d
 1hF9sY3RAOezm9xb2RnSmLVT5ZiDKOGAUS5Xj5DJKyrRVhuapd2nXYZjgibfMfAhKp
 U3c/RS0SnzJGuP5c9yPZEIWcSRYKHzh5/iBajJq4=
Date: Tue, 1 Sep 2020 08:27:28 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: spmi: hisi-spmi-controller: Use proper
 format in call to dev_err()
Message-ID: <20200901082728.5ce6eda1@coco.lan>
In-Reply-To: <20200901035722.9324-1-yuehaibing@huawei.com>
References: <20200901035722.9324-1-yuehaibing@huawei.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 1 Sep 2020 11:57:22 +0800
YueHaibing <yuehaibing@huawei.com> escreveu:

> The correct format string for a size_t argument should be %zu.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> ---
>  drivers/staging/hikey9xx/hisi-spmi-controller.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> index 66a0b296e06f..34c690da09e3 100644
> --- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
> +++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> @@ -121,7 +121,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
>  
>  	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
>  		dev_err(&ctrl->dev,
> -			"spmi_controller supports 1..%d bytes per trans, but:%ld requested\n",
> +			"spmi_controller supports 1..%d bytes per trans, but:%zu requested\n",
>  			SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
>  		return  -EINVAL;
>  	}
> @@ -175,7 +175,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
>  	spin_unlock_irqrestore(&spmi_controller->lock, flags);
>  	if (rc)
>  		dev_err(&ctrl->dev,
> -			"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
> +			"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\n",
>  			opc, slave_id, slave_addr, bc + 1);
>  	else
>  		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, read value: %*ph\n",
> @@ -197,7 +197,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
>  
>  	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
>  		dev_err(&ctrl->dev,
> -			"spmi_controller supports 1..%d bytes per trans, but:%ld requested\n",
> +			"spmi_controller supports 1..%d bytes per trans, but:%zu requested\n",
>  			SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
>  		return  -EINVAL;
>  	}
> @@ -251,7 +251,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
>  	spin_unlock_irqrestore(&spmi_controller->lock, flags);
>  
>  	if (rc)
> -		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
> +		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\n",
>  			opc, slave_id, slave_addr, bc);
>  	else
>  		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, wrote value: %*ph\n",



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
