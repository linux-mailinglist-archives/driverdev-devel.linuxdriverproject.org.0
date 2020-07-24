Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE59B22CFA8
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 22:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 432BC88B31;
	Fri, 24 Jul 2020 20:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kzW7RBZVv6jM; Fri, 24 Jul 2020 20:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19BD588A4E;
	Fri, 24 Jul 2020 20:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29FC61BF342
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 20:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2667F88A4D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 20:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k69FQfBjbmJv for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 20:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 628A188A49
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 20:42:53 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 37578160060
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 22:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1595623370; bh=CFRrsybpNNeAyc4qnC2Tdbw8cOnA5BAgyVoXp0fPP0w=;
 h=Date:From:To:cc:Subject:From;
 b=kFDFS6yLy6Y5l6nPABSJnWBC17+oq9/8WFnMS8Ztq0/FPejbco5QQJ0iE4QXVSN9m
 vkjlnpd3CWN9THss9xGYW/MkO2yQTv1RTtziBymFJee6yYs4IhGb/sOMZ3Mb6UOSK9
 SbCR1aSVZqnaeFBWkEXm6ByGVda8LTlpp9/eJe53Lf5Yxi/8KT/Vc8hLGzMrXItjqa
 HH3SyGhMUrSfT4KnTi5R4jrjTGjPmBHJ3wlozzyVr3KkrCw2WpIiRt6hg2DSsBc48v
 L7RRH0G5D+thHdXC3LEE5TmQ+MxStiw3QyhCygxIP5+ndXph1s9nDvhdkT1QIfNBdb
 dn/RujJVFVhiQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4BD1Nn012jz9rxN;
 Fri, 24 Jul 2020 22:42:48 +0200 (CEST)
Date: Fri, 24 Jul 2020 22:42:48 +0200 (CEST)
From: Marc Dietrich <marvin24@posteo.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
In-Reply-To: <365fd26d-94b1-760e-48f5-bf8a85a90399@gmail.com>
Message-ID: <alpine.OSX.2.23.453.2007242238230.12486@macbook-pro.fritz.box>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
 <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
 <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
 <alpine.OSX.2.23.453.2007241835260.9201@macbook-pro.fritz.box>
 <365fd26d-94b1-760e-48f5-bf8a85a90399@gmail.com>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-1424241931-1595623369=:12486"
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
Cc: linux-tegra@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, p.zabel@pengutronix.de
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--0-1424241931-1595623369=:12486
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT


Hi Rohit,

On Fri, 24 Jul 2020, Rohit K Bharadwaj wrote:

> On 24/07/20 10:06 pm, Marc Dietrich wrote:
>>
>>
>> On Fri, 24 Jul 2020, Marc Dietrich wrote:
>>
>>> Hi Rohit,
>>>
>>> On Fri, 24 Jul 2020, Rohit Bharadwaj wrote:
>>>
>>>> On 24/07/20 1:58 pm, Greg KH wrote:
>>>>> On Fri, Jul 24, 2020 at 01:44:27PM +0530, Rohit Bharadwaj wrote:
>>>>>> On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
>>>>>>> changed usage of slave (deprecated) to secondary
>>>>>>>
>>>>>>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>>>>>>> ---
>>>>>>> v3: change patch subject, add version history
>>>>>>> v2: add changelog text in body of mail
>>>>>>> v1: fix style issues by changing usage of slave to secondary
>>>>>>>
>>>>>>>  drivers/staging/nvec/nvec.c | 12 ++++++------
>>>>>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
>>>>>>> index 360ec0407740..5d7b66719a39 100644
>>>>>>> --- a/drivers/staging/nvec/nvec.c
>>>>>>> +++ b/drivers/staging/nvec/nvec.c
>>>>>>> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>>>>>>>      return IRQ_HANDLED;
>>>>>>>  }
>>>>>>>
>>>>>>> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>>>>> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>>>>>>>  {
>>>>>>>      u32 val;
>>>>>>>
>>>>>>> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>>>>>  }
>>>>>>>
>>>>>>>  #ifdef CONFIG_PM_SLEEP
>>>>>>> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
>>>>>>> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>>>>>>>  {
>>>>>>>      disable_irq(nvec->irq);
>>>>>>>      writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
>>>>>>> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>>>>>>      platform_set_drvdata(pdev, nvec);
>>>>>>>      nvec->dev = dev;
>>>>>>>
>>>>>>> -    if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
>>>>>>> +    if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
>>>>>>>          dev_err(dev, "no i2c address specified");
>>>>>>>          return -ENODEV;
>>>>>>>      }
>>>
>>> as Christoph said, please don't change this line.
>>
>> arr, I meant Dan of course ;-)
> Dear all, thank you so much for your inputs, I will try to make some other patch which will not break the driver (hopefully :p), or if you give me permission to submit this patch itself by just keeping this one line
>
>> if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr))
>
> unchanged, and provided it does not break the driver by doing so, I would gladly make the changes and submit v4 of the patch.

please resend the patch with the line above unchanged as v4. Don't forget 
to to update the changelog to the commit message. I tested your patch 
(without the dt property change) and it does not change behavoir - as expected,
so you will recevice my Ack.

Marc

--0-1424241931-1595623369=:12486
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0-1424241931-1595623369=:12486--
