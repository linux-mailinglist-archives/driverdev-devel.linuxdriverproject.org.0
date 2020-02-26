Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC8A170CCA
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 00:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DD2A87849;
	Wed, 26 Feb 2020 23:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Frw13p2057FH; Wed, 26 Feb 2020 23:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F6038766A;
	Wed, 26 Feb 2020 23:52:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BCF41BF3A3
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 23:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 731EE8781D
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 23:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9gu9BxUVfxg for <devel@linuxdriverproject.org>;
 Wed, 26 Feb 2020 23:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DAE4E8766A
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 23:52:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d6so447583pgn.5
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 15:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XlzTesc/osvmK67dq3mpi/UOZrAvhagv1EzzaH9Ps1E=;
 b=mFoUw0MqmxHI0oPPMELQOYtzcg9+E08usopU8RyqjLJWRg0LfOnJOWt+AjXWMkSQ/+
 ik+r+itUBGD5T380/0MmUPBH+89PWyBdB8+F/1DaSYlSp7CIk8Fn/3teXYUW1zo9xLUH
 v4z8aa9IgEG3jL96PPv5LScPNWljvvNvKlMzL7Be/vTorndLrIXxvpq+plAwXKHkbUom
 m2el//LdaDsyddJT8U73S8hkrTiL/xXFJolh/qFYcxRZrEI1OuYanj9TXwArqs45lePW
 vxV7QH+fF42WDZRjYeU3k4tsni1QLk30hSxJFZFEmXkFxeEViN2UHWaJeeMyd3OJu1qD
 D9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XlzTesc/osvmK67dq3mpi/UOZrAvhagv1EzzaH9Ps1E=;
 b=NA58A7NcjiaHwgzky03Cfr/lJR6zWD0YW/izl4U2T+1GDWl54JNN2yYFZ22rP81ojo
 w1DuZ7GoxogJfpEX5daG8ZTLYlrP+qAUGtzB5ovELGgM/ufXeeU6X/a19sZApcrrxQnU
 ujshpd8rCG7pgAx7OxmbPGBu6p3IacFCkjthEpxKQiuwyJYqjgOhThxnvqCJfpmkSALM
 mDFLbPZeOeDlBvgInwvr6f6++11XqXmWPHOhtbIzuWqkf2OqGYIFqsFDp0hmUPerqkA2
 79PGq5V0hHBKHMiFdRD90SWE8cxh7kEzsTrE0VQZQIa6lRnpZaDnMED/hNkknq5D60Km
 K14A==
X-Gm-Message-State: APjAAAWyWTcoaGHzkR8CdwDwNlTh9G93dpUgqIU6FBGZ+Dbkc6Tu8nFz
 v1BjKMEAYtjWgbS5sEeHiyE=
X-Google-Smtp-Source: APXvYqxvMlCakj/OIN3Ab7wp9/W+3XGgGXTH9cJ24Kd1VC3/qZU0qrVdvmi+QWNetqsm4pIH3dMQwg==
X-Received: by 2002:a62:fb07:: with SMTP id x7mr1198766pfm.125.1582761139317; 
 Wed, 26 Feb 2020 15:52:19 -0800 (PST)
Received: from [172.30.88.123] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id 64sm4159507pfd.48.2020.02.26.15.52.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:52:18 -0800 (PST)
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
Date: Wed, 26 Feb 2020 15:50:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225150721.GO5379@paasikivi.fi.intel.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sakari,

Thanks for the feedback.


On 2/25/20 7:07 AM, Sakari Ailus wrote:
> Hi Steve,
>
> On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
>> Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
>> have the caller provide one. This allows the caller to implement
>> notifier ops (bind, unbind).
>>
>> The caller is now responsible for first initializing its notifier with a
>> call to v4l2_async_notifier_init().
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
> the users (IMX driver in this case) to call the preferred APIs instead?

I presume you mean using v4l2_async_notifier_add_fwnode_remote_subdev(). 
Ok, I'll convert to use that API.

Steve

>   As
> the lines below show, v4l2_async_register_fwnode_subdev() has only two
> users left --- the other one of which is the IMX driver. After converting
> these two, we could just remove this API.
>
> See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
> drivers/media/platform/omap3isp/isp.c for examples.
>
>> ---
>> Changes in v3:
>> - added the missing calls to unregister/cleanup the new subdev notifiers.
>>    Reported by Rui Silva.
>> ---
>>   drivers/media/platform/video-mux.c         |  8 +++++++-
>>   drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
>>   drivers/staging/media/imx/imx6-mipi-csi2.c |  7 ++++++-
>>   drivers/staging/media/imx/imx7-media-csi.c |  7 ++++++-
>>   drivers/staging/media/imx/imx7-mipi-csis.c |  9 ++++++++-
>>   include/media/v4l2-fwnode.h                | 12 ++++++++----
>>   6 files changed, 36 insertions(+), 18 deletions(-)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
