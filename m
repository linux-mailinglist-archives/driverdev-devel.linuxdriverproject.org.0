Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 716932D890F
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Dec 2020 19:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 203028731C;
	Sat, 12 Dec 2020 18:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZS9fUSkl3XL; Sat, 12 Dec 2020 18:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA98786E59;
	Sat, 12 Dec 2020 18:09:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1251BF2F4
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 18:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A7422DE22
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 18:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76jd0bXr5IrH for <devel@linuxdriverproject.org>;
 Sat, 12 Dec 2020 18:09:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 99D502E0DA
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 18:09:10 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id w1so12210569ejf.11
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 10:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kVgdL2B7MTt0Fzgc35wnEsVqokD6iC4w8zTszx314Y4=;
 b=Du9m54PjDwlP5wo1ECsQM6S8frjG935mP18a3g5nrtzcEV+xYnN5xCLt6+sqqS9bma
 hKAgdp0WegfNrDEzBWk5y7bh1Tbrz/fyn7NkB1u3vXH8mT8Wp6R1T/0xjMjndFgJF7AA
 KOiuU00unQgQb/xYtLrtykxXv6GwE6TPpfSERfxhtxwk/gZBqR1iGifOWsQTqg2e3M88
 oAIscXj8U3h0yT/SXHdbSQOB+dDzUM8UU/v+ftUh751M5mLrd7uzNaSnOew6RVqpNgrv
 +4NpVCYYdhRnP/uyfh7CEKllsNCPtZdlAENaU7BPJepX52V79m6PR0sVdM6iaA154bFA
 2Fjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kVgdL2B7MTt0Fzgc35wnEsVqokD6iC4w8zTszx314Y4=;
 b=MU1hrdY6TZ6kYTu5tCFKksKGErLjUYJsnEx9mnsd3XeHRJFejAnwJKhfli9r/ZkFJb
 Mb+kt1NzAy6QdMXLwBJHS/iVahTUWoA9ltXtlB1xcMf5EFD/Vq9wu5ZWtfYgmSWeW5vS
 PIhZ/+hBJ3j90zqrteY5ylJJPHGOsfBNjpkmyaygeAoRSqPTudbBWcFE5U1dIm7LubRN
 /D+d4QThN8PeGpn9SSbd4RV8krJATI+r6loFr04D8PZc20PuixjvlcZUuZzey5b0zJFp
 cnQVGiCksobapZ8vjNGo8ukSkA7VbeY08JsijttxlIVx9+ZkK6P7/OWa2+Ts1ZyOzwe+
 XWNQ==
X-Gm-Message-State: AOAM531KaLCiqdMIaIP1lLw+y1QpOFQZP/dN9WrupA4mYYmiONiyZrp2
 Zy5BnPdgmeIPUYFXQEltzpw=
X-Google-Smtp-Source: ABdhPJzpxDZXq2LngrrD2U0C+WNEJA9HPd6RiX8heFfecpVlSOhMcFt2AMLxw0pk+Ea5PJwnHWWQtA==
X-Received: by 2002:a17:906:c244:: with SMTP id
 bl4mr15408500ejb.430.1607796548785; 
 Sat, 12 Dec 2020 10:09:08 -0800 (PST)
Received: from andrea (host-95-239-64-30.retail.telecomitalia.it.
 [95.239.64.30])
 by smtp.gmail.com with ESMTPSA id c12sm11158312edw.55.2020.12.12.10.09.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Dec 2020 10:09:08 -0800 (PST)
Date: Sat, 12 Dec 2020 19:09:01 +0100
From: Andrea Parri <parri.andrea@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.9 15/23] scsi: storvsc: Validate length of
 incoming packet in storvsc_on_channel_callback()
Message-ID: <20201212180901.GA19225@andrea>
References: <20201212160804.2334982-1-sashal@kernel.org>
 <20201212160804.2334982-15-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201212160804.2334982-15-sashal@kernel.org>
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 devel@linuxdriverproject.org, Saruhan Karademir <skarade@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sasha,

On Sat, Dec 12, 2020 at 11:07:56AM -0500, Sasha Levin wrote:
> From: "Andrea Parri (Microsoft)" <parri.andrea@gmail.com>
> 
> [ Upstream commit 3b8c72d076c42bf27284cda7b2b2b522810686f8 ]

FYI, we found that this commit introduced a regression and posted a
revert:

  https://lkml.kernel.org/r/20201211131404.21359-1-parri.andrea@gmail.com

Same comment for the AUTOSEL 5.4, 4.19 and 4.14 you've just posted.

  Andrea


> 
> Check that the packet is of the expected size at least, don't copy data
> past the packet.
> 
> Link: https://lore.kernel.org/r/20201118145348.109879-1-parri.andrea@gmail.com
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: linux-scsi@vger.kernel.org
> Reported-by: Saruhan Karademir <skarade@microsoft.com>
> Signed-off-by: Andrea Parri (Microsoft) <parri.andrea@gmail.com>
> Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/scsi/storvsc_drv.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/scsi/storvsc_drv.c b/drivers/scsi/storvsc_drv.c
> index 8f5f5dc863a4a..6779ee4edfee3 100644
> --- a/drivers/scsi/storvsc_drv.c
> +++ b/drivers/scsi/storvsc_drv.c
> @@ -1246,6 +1246,11 @@ static void storvsc_on_channel_callback(void *context)
>  		request = (struct storvsc_cmd_request *)
>  			((unsigned long)desc->trans_id);
>  
> +		if (hv_pkt_datalen(desc) < sizeof(struct vstor_packet) - vmscsi_size_delta) {
> +			dev_err(&device->device, "Invalid packet len\n");
> +			continue;
> +		}
> +
>  		if (request == &stor_device->init_request ||
>  		    request == &stor_device->reset_request) {
>  			memcpy(&request->vstor_packet, packet,
> -- 
> 2.27.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
