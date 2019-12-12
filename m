Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF911CC6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 12:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67CB486FE9;
	Thu, 12 Dec 2019 11:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVgCE2weZIBh; Thu, 12 Dec 2019 11:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44B5786F57;
	Thu, 12 Dec 2019 11:40:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9731BF3EC
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 948E324912
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0eU1rQNyHLu for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 11:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by silver.osuosl.org (Postfix) with ESMTPS id 9427F248F6
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:40:43 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fMpkiZCNqGyJwfMplixwud; Thu, 12 Dec 2019 12:40:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576150841; bh=TgBSkF7ZsEf0UN7XS+XfNv5acIUvAzZgjyw1JptP8uU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=ZKMtI6g6xnxieVz6jwQU9Gp6ZUKi2K61PA3KeaNfLcF4iUc4C7oIj8dpQLpxeQhYk
 o6y5eRCc3EQjBvACwpLq6suwPfYADtUBjHGCYUBkFyoJaQS9USbRB6tdO0w2Kmj+vn
 PEa8DbKlf6w6Y6agGQUxLN0bM2PGJWoQxln7h50mOQc9G6J/0Cc0/KXjC6xWtscLLa
 /ILUuWJUMXtdiJPMMQA59bcG+4NtD/bbZd5fLES9IVthHwYyY3s/b+0Fgr+72nZgu9
 8cF91xBXB70ptLtq3D9vbDJs0OfEAG5wghA4z7j+/u4rssk20ast/QTM8qD3KvexB+
 TqjD3hIwYLl1A==
Subject: Re: [PATCH v2] media: allegro: add the missed check for
 v4l2_m2m_ctx_init
To: Chuhong Yuan <hslester96@gmail.com>
References: <20191210031532.18603-1-hslester96@gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <e07fe842-4a2b-30da-c7e0-91401d7ba531@xs4all.nl>
Date: Thu, 12 Dec 2019 12:40:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210031532.18603-1-hslester96@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCzJ1/HiYYZqfIq8DK2wwHyEitGyv7CU4DnbyAW8a66qOTStaRDiDQpdt3Q7ifJ8VxrYEqEWArtS7AUJOv7bdDkOFyvkr7dI+BsdniNBFKMft9Ftq1lu
 KY9/o4eq/CIO46UIreir/mpyj1DXawibsGgD2dhF6uAgfClMnqClfMoW85WDf9qpcavFwSpYZ195kR4P5RZlPEZUYo6hPbXVr0hvjE6J0a4DuE7Q4PATukcE
 sOWpAIXxeSwhpPjRSaYJg1E9FCA/eisSzprRAq2HUiZ1tOOoetqbgyAAvJOOh/EFUZcbo9/zFbSjyaYpqrOAkPoXzYo6VKOrGacJFFdDFPcAVr3OHt/Pln5D
 wJ19alNnWOWGXLaPowHtuCmUI31e+T5ttJ4br36/oRgsL2qBNeysiNIWkH9/GnFXnsSHSkn2hm1Zl+w4O+P1/eUcZrvDGF4aJAf4EUhxoFh82xSwYbxJW1fS
 vKFtusIJMkb6afMgvFsK7zJwcTdcQ08nq4fvIg==
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12/10/19 4:15 AM, Chuhong Yuan wrote:
> allegro_open() misses a check for v4l2_m2m_ctx_init().
> Add a check and error handling code to fix it.
> 
> Fixes: f20387dfd065 ("media: allegro: add Allegro DVT video IP core driver")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v2:
>   - Fix the use-after-free in v1.
> 
>  drivers/staging/media/allegro-dvt/allegro-core.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 6f0cd0784786..66736beb67af 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -2270,6 +2270,7 @@ static int allegro_open(struct file *file)
>  	struct allegro_channel *channel = NULL;
>  	struct v4l2_ctrl_handler *handler;
>  	u64 mask;
> +	int ret;
>  
>  	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
>  	if (!channel)
> @@ -2341,6 +2342,14 @@ static int allegro_open(struct file *file)
>  	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
>  						allegro_queue_init);
>  
> +	if (IS_ERR(channel->fh.m2m_ctx)) {
> +		ret = PTR_ERR(channel->fh.m2m_ctx);
> +		v4l2_fh_del(&channel->fh);
> +		v4l2_fh_exit(&channel->fh);

Just move the v4l2_fh_init/add calls to just before the return 0, i.e. when everything
is right. Then you don't need to call del/exit on error.

Also, I see that the result of all the v4l2_ctrl_new* calls isn't checked.

Just after the last v4l2_ctrl_new_std() call you need to check handler->error:
if not 0, then there was an error and you need to call v4l2_ctrl_handler_free
to clean it up.

Regards,

	Hans

> +		kfree(channel);
> +		return ret;
> +	}
> +
>  	return 0;
>  }
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
