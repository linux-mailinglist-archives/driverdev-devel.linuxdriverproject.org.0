Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 896B4232F07
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 10:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B09F86978;
	Thu, 30 Jul 2020 08:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjcfrqgrhXIS; Thu, 30 Jul 2020 08:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4A2A86972;
	Thu, 30 Jul 2020 08:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2194B1BF345
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 08:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1DE628805C
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 08:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJ-rkMKlaKdy for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:59:19 +0000 (UTC)
X-Greylist: delayed 19:01:31 by SQLgrey-1.7.6
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C677882E1
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 08:59:18 +0000 (UTC)
X-Originating-IP: 176.88.148.196
Received: from [192.168.1.3] (unknown [176.88.148.196])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9FA0C24000C;
 Thu, 30 Jul 2020 08:59:13 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 30 Jul 2020 11:59:10 +0300
Message-ID: <1739ef25b30.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
In-Reply-To: <20200730084545.GB1793@kadam>
References: <20200729135636.9220-1-cengiz@kernel.wtf>
 <CAHp75VfM3OapAkYJ-sN-MG2yuGDqaqDjc6p0gXT9cHYgnH+5LQ@mail.gmail.com>
 <20200730084545.GB1793@kadam>
User-Agent: AquaMail/1.25.2-1666 (build: 102500007)
Subject: Re: [PATCH] staging: atomisp: move null check to earlier point
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On July 30, 2020 11:48:06 Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Wed, Jul 29, 2020 at 06:13:44PM +0300, Andy Shevchenko wrote:
>> On Wed, Jul 29, 2020 at 5:00 PM Cengiz Can <cengiz@kernel.wtf> wrote:
>>>
>>> `find_gmin_subdev` function that returns a pointer to `struct
>>> gmin_subdev` can return NULL.
>>>
>>> In `gmin_v2p8_ctrl` there's a call to this function but the possibility
>>> of a NULL was not checked before its being dereferenced. ie:
>>>
>>> ```
>>> /* Acquired here --------v */
>>> struct gmin_subdev *gs = find_gmin_subdev(subdev);
>>> int ret;
>>> int value;
>>>
>>> /*  v------Dereferenced here */
>>> if (gs->v2p8_gpio >= 0) {
>>>  pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
>>>          gs->v2p8_gpio);
>>>  ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
>>>  if (!ret)
>>>          ret = gpio_direction_output(gs->v2p8_gpio, 0);
>>>  if (ret)
>>>          pr_err("V2P8 GPIO initialization failed\n");
>>> }
>>> ```
>>>
>>> I have moved the NULL check before deref point.
>>
>> "Move the NULL check..."
>> See Submitting Patches documentation how to avoid "This patch", "I", "we", etc.

Noted. Sorry. I'm not a native English speaker.

>>
>
> I always feel like this is a pointless requirement.  We're turning into
> bureaucracts.
>
>>
>>> diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c 
>>> b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
>>> index 0df46a1af5f0..8e9c5016f299 100644
>>> --- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
>>> +++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
>>> @@ -871,6 +871,11 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, 
>>> int on)
>>>  int ret;
>>>  int value;
>>>
>>> +       if (!gs) {
>>> +               pr_err("Unable to find gmin subdevice\n");
>>
>>> +               return -EINVAL;
>>
>> And here is a change of semantics...
>
> Yeah.  The change of semantics should be documented in the commit
> message, but it's actually correct.  I discussed this with Mauro earlier
> but my bug reporting script didn't CC a mailing list and I didn't
> catch it.  Mauro suggested:
>
>    53  > Yet, it could make sense to have something like:
>    54  >
>    55  >       if (WARN_ON(!gs))
>    56  >               return -ENODEV;
>    57  >
>    58  > at the beginning of the functions that call find_gmin_subdev().

I will be updating v2 according to this.

>
> regards,
> dan carpenter



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
