Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5B21EBA0
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 12:04:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49F4087C76;
	Wed, 15 May 2019 10:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUyNMXmtrgca; Wed, 15 May 2019 10:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B82CE857E6;
	Wed, 15 May 2019 10:04:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5681BF2F0
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 10:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A7218610F
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 10:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdhUORZRDRtp for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:04:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DABD486144
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:04:07 +0000 (UTC)
Received: from [192.168.178.167] ([109.104.37.15]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mf0yy-1gkOTQ1SsU-00gZHW; Wed, 15 May 2019 12:03:54 +0200
Subject: Re: [PATCH] Staging: vc04_services: Fix kernel type 'u32' over
 'uint32_t'
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190514160207.11573-1-madhumithabiw@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <43fc8207-6b5b-1caa-3d19-f44074fffd0b@i2se.com>
Date: Wed, 15 May 2019 12:03:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514160207.11573-1-madhumithabiw@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ZZ/Aph7ySsODYCaWcBvIhpYEYIK+oOwwTCobv8+RoU/h78qB+pX
 ZjgwxWVD58BI6VP2C47FP4oCKkw98WDnibwVSehCZ05isrEROxFXD0z/yqHJYydb0CpfZwO
 wTXQd4GwzoIsCYPEFp6LX3bg2uWkFH9AUXhlW4taQObJyPboLnEBTNUd6hfldgDSWmspJR2
 9BELG2jOY2nWHif04sEoQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:l/NocFB9fqM=:dgBXAKqJG7ZUkxWbz2pGBe
 MtAPLIMZA+jYGEi78sP8NJnywlwlQZEed8KaCYTIFsxiyLSuEGWy8OADJQXJNTfMjLCs69uKP
 hVoybyusQoo0FfU/wCyt9YBY+rpSw+fSmNEY65AKWYr7eoerTGY7S/YuUyAG8551iGSERxkks
 SecXVW7oMn3yNZcU+lXy6py7PQ1RdqEmUfmxZQg8qlon+e2yvyTwYqpiyjl3UPiYo/gIweji8
 qqNzn9pxCOSIq8BhBiHv42W18Fsh3+Jv572LgNgsNFKyZhbrsgRjPFs3+a3ghKkx8+zX90plw
 ZiW+h8mYUiCtGCacRqfCENa7f6rtyIKcWkbUsEkzqju+xhxeqsa+5cYqOlWQ1e3jNDS+m+K55
 sEHn3ilyeRQnCgqzMe//pIVFzM9yHkeUNbDWDGLvAiOf2BfmzxIYRH1pIenu88oGIWSD4KPWj
 XW7DGeAydV7j5f4MUfc3Ykezo9u+p//xaq9iBLO589Nas1m5SFZ/UNMBi5GAE6CCS8HEa9Z30
 2iMb7qVF0wWmExUUJAR8eKhsPsJsdIpp/1YoQx8y6mymFxsTfwdtIkOBOMJ3VKA9T5URIVM6Y
 7+voQq1cOhf9JqDsBcjMPnOCL9f3ncBSaM8stdXc8NsDH3HytjrYa8UCLoO0+9yCEoblx0SWv
 dkEHGI5ZmTPNXKMHnP1cqbYYKiG0X3IuHiWKdjIlDUocoxBpEIRXkNuzZUDszOuAoAGcM/jj1
 BcaUGXh6VAMXcf+E6/CFkXZoHLcyQCGEZnk8cufoHHWDZm6ll07UuFMN73s=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Madhumitha,

On 14.05.19 18:02, Madhumitha Prabakaran wrote:
> Fix the warning issued by checkpatch
> Prefer kernel type 'u32' over 'uint32_t'

grepping the sources within vc04_services shows a lot more occurences.

I suggest to fix this style issue at least for the whole camera driver
and name the patch like

staging: bcm2835-camera: prefer kernel types

Regards
Stefan

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index d1c57edbe2b8..90793c9f9a0f 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
>  	u32 port_handle;      /* port */
>  	u32 id;     /* Parameter ID  */
>  	u32 size;      /* Parameter size */
> -	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
> +	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
>  };
>  
>  struct mmal_msg_port_parameter_set_reply {
> @@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
>  	u32 status;           /* Status of mmal_port_parameter_get call */
>  	u32 id;     /* Parameter ID  */
>  	u32 size;      /* Parameter size */
> -	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
> +	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
>  };
>  
>  /* event messages */
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
