Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD0D19BFBE
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 12:58:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 092222047F;
	Thu,  2 Apr 2020 10:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3VSsducMcEe; Thu,  2 Apr 2020 10:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB40B20423;
	Thu,  2 Apr 2020 10:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BDAA1BF2CA
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F0AB8703F
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyfMuT70GlTP for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 10:58:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 553C987026
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 10:58:12 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id d77so2906478wmd.3
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 03:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=47lPMSxdt4f25c5HwPuDBnuxGeMfln6TbzT50KS/Jbs=;
 b=hVDIPQj6XR3HIdYvciCYuMFsrUmHZxXhV6ruRRBRtp4dFH5YOz2uNY5BFXbL7ci2BH
 FU9HaQCVe4R0FWsf7owA34pkFkKL4KH1ipmazO6g+JK8/2Hljc8+PPFZilBSJ1EfOoCj
 1yIBeZ+mRXeUkamn0beQQDZ6hz/V9FMAk3hassXm9QCJPzg5srzybvV/C431NZST8qJN
 PpGkPwlNPC+HTN5NSq2ObcO3rw1FXIpbd4xL4tS6ImtuUCWanwIhkx5/UD5/6mHDCuL3
 YmADwQ0Px3gDTQMKNjRk6oparIE2hnupgR7J/MQA74t5PDjM/cUsrGuGq1MsahIU4eyU
 AjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=47lPMSxdt4f25c5HwPuDBnuxGeMfln6TbzT50KS/Jbs=;
 b=ooTFhgwb03ErnU5qtqZZpAtavfhO1lTfQ/eTLZIbzWD0/8c5y/r6WP+WtP3Qaw7Wp9
 zaAg6rerLP6TuKEA+C07c/q1cxEFDy6kir7vUYzIqxYAQfLby+DSRi5MoIVacjwaDBGf
 8CFKR1YRvPz2X246h64N4eEgMpVQvAK5hsYPcydTgITgLV12cacacLXULNK9sBRnMuE9
 3L7NFIqBenFY1Z5HQDlxpC8DanNj3woNW8WucIcKcD14VaCPKeKmpNvF/qFUDsEorslA
 +rpaRDScTSFnyuBBlq1YohUmpqF/r9RohrcbrWwzocftkT+FGziUdlNIaNefGScnq0O+
 y6bQ==
X-Gm-Message-State: AGi0PuaFzJCfy6mFKgP69cNmXeXZh7Hi/xWyT1yk782pO2Qd/C16Sfjz
 PYlJadjKHedb0UJUBECHCmU=
X-Google-Smtp-Source: APiQypJDMD2R5sy9cmmW9jv7KH6/ZHSS+ZHR7n3THuS5LV/L2636pPzidXXzYATmE1MbqnlSClOJvw==
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr2906449wmj.139.1585825090573; 
 Thu, 02 Apr 2020 03:58:10 -0700 (PDT)
Received: from [192.168.43.227] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id j6sm7406601wrb.4.2020.04.02.03.58.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 03:58:09 -0700 (PDT)
Subject: Re: [PATCH] staging: vt6656: Use defines in vnt_mac_reg_bits_*
 functions
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Oscar Carter <oscar.carter@gmx.com>
References: <20200328095433.7879-1-oscar.carter@gmx.com>
 <20200331102906.GA2066@kadam> <20200401165537.GC3109@ubuntu>
 <20200402091917.GA17323@jiffies>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <4e5fc495-9355-02b7-4148-ea4de5370617@gmail.com>
Date: Thu, 2 Apr 2020 11:58:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402091917.GA17323@jiffies>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 02/04/2020 10:19, Quentin Deslandes wrote:
> On 04/01/20 18:55:38, Oscar Carter wrote:
>> On Tue, Mar 31, 2020 at 01:29:06PM +0300, Dan Carpenter wrote:
>>> On Sat, Mar 28, 2020 at 10:54:33AM +0100, Oscar Carter wrote:
>>>> Define the necessary bits in the CHANNEL, PAPEDELAY and GPIOCTL0
>>>> registers to can use them in the calls to vnt_mac_reg_bits_on and
>>>> vnt_mac_reg_bits_off functions. In this way, avoid the use of BIT()
>>>> macros and clarify the code.
>>>>
>>>> Fixes: 3017e587e368 ("staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_* functions")
>>>> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
>>>> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
>>>> ---
>>>>   drivers/staging/vt6656/baseband.c |  6 ++++--
>>>>   drivers/staging/vt6656/card.c     |  3 +--
>>>>   drivers/staging/vt6656/mac.h      | 12 ++++++++++++
>>>>   drivers/staging/vt6656/main_usb.c |  2 +-
>>>>   4 files changed, 18 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
>>>> index a19a563d8bcc..dd3c3bf5e8b5 100644
>>>> --- a/drivers/staging/vt6656/baseband.c
>>>> +++ b/drivers/staging/vt6656/baseband.c
>>>> @@ -442,7 +442,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
>>>>   		if (ret)
>>>>   			goto end;
>>>>
>>>> -		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
>>>> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
>>>> +					  PAPEDELAY_B0);
>>>
>>> This doesn't clarify anything.  It makes it less clear because someone
>>> would assume B0 means something but it's just hiding a magic number
>>> behind a meaningless define.  B0 means BIT(0) which means nothing.  So
>>> now we have to jump through two hoops to find out that we don't know
>>> anything.
>>>
>> I created this names due to the lack of information about the hardware. I
>> searched but I did not find anything.
>>
>>> Just leave it as-is.  Same for the rest.
>> Ok.
>>
>>>
>>> There problem is a hardware spec which explains what this stuff is.
>>>
>> It's possible to find a datasheet of this hardware to make this modification
>> accordingly to the correct bit names of registers ?
> 
> I haven't found any so far, if your researches are luckier than mine, I
> would be interested too. Even getting your hands on the actual device is
> complicated.

All I can tell you is it related to command above it MAC_REG_ITRTMSET 
without it the device will not associate with access point is probably 
TX timing/power rated.

Other bits in MAC_REG_PAPEDELAY are related to LED function and defined 
in LEDSTS_* in mac.h.

I think it is some kind of enable so something like ITRTMSET_ENABLE 
would do.

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
