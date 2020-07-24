Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8801322CB1D
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 18:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EABDB882E0;
	Fri, 24 Jul 2020 16:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjLmnHD9JDEP; Fri, 24 Jul 2020 16:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F60887FFF;
	Fri, 24 Jul 2020 16:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DD491BF37B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 844812043B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUsodC3prbka for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 16:33:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 32ADF20427
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 16:33:27 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 3497C160060
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1595608404; bh=0gYLUq/Mn2wAVjYBymteJJm8c1Ixey3paEl6GWCDEmc=;
 h=Date:From:To:cc:Subject:From;
 b=lU1h2ZkCjbiPJxWBp42aBjdYM3vJeGyHQxF/5eStrbfDD3CQak5To6HudgNCnFsCO
 X0LA4HO91Msb9PDLmNpaLg7ZhStKMpdndpxrk7whrahoeuKBCoD/mvD6ldCRmRJkn6
 4O/SGbu4sGDbFBwFdFd6O8h7vczQv/8dVR0B0Pdx5xVKANzycDTySqsjmtFP9/LQPP
 fS8LTRB7MCWgwL/IAqFSeCbqoqQ0dm/XA0P23SWWFnqwGXCjzJ9ASa/pzV2dzBa7kt
 dLndy40RKMicX9pzcFTnPczcOlehRCU8BDph06g+SNkh7oCo4AXebqnegbH5+Pg3pG
 Yenp1pfl9yNnQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4BCvrz03p6z9rxP;
 Fri, 24 Jul 2020 18:33:22 +0200 (CEST)
Date: Fri, 24 Jul 2020 18:33:22 +0200 (CEST)
From: Marc Dietrich <marvin24@posteo.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
In-Reply-To: <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
Message-ID: <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
 <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
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
Cc: linux-tegra@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, ac100@lists.launchpad.net, p.zabel@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rohit,

On Fri, 24 Jul 2020, Rohit Bharadwaj wrote:

> On 24/07/20 1:58 pm, Greg KH wrote:
>> On Fri, Jul 24, 2020 at 01:44:27PM +0530, Rohit Bharadwaj wrote:
>>> On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
>>>> changed usage of slave (deprecated) to secondary
>>>>
>>>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>>>> ---
>>>> v3: change patch subject, add version history
>>>> v2: add changelog text in body of mail
>>>> v1: fix style issues by changing usage of slave to secondary
>>>>
>>>>  drivers/staging/nvec/nvec.c | 12 ++++++------
>>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
>>>> index 360ec0407740..5d7b66719a39 100644
>>>> --- a/drivers/staging/nvec/nvec.c
>>>> +++ b/drivers/staging/nvec/nvec.c
>>>> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>>>>  	return IRQ_HANDLED;
>>>>  }
>>>>
>>>> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>>>>  {
>>>>  	u32 val;
>>>>
>>>> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>>  }
>>>>
>>>>  #ifdef CONFIG_PM_SLEEP
>>>> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
>>>> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>>>>  {
>>>>  	disable_irq(nvec->irq);
>>>>  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
>>>> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>>>  	platform_set_drvdata(pdev, nvec);
>>>>  	nvec->dev = dev;
>>>>
>>>> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
>>>> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
>>>>  		dev_err(dev, "no i2c address specified");
>>>>  		return -ENODEV;
>>>>  	}

as Christoph said, please don't change this line.

>>>> @@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>>>  	}
>>>>  	disable_irq(nvec->irq);
>>>>
>>>> -	tegra_init_i2c_slave(nvec);
>>>> +	tegra_init_i2c_secondary(nvec);
>>>>
>>>>  	/* enable event reporting */
>>>>  	nvec_toggle_global_events(nvec, true);
>>>> @@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
>>>>  	if (!err)
>>>>  		nvec_msg_free(nvec, msg);
>>>>
>>>> -	nvec_disable_i2c_slave(nvec);
>>>> +	nvec_disable_i2c_secondary(nvec);
>>>>
>>>>  	return 0;
>>>>  }
>>>> @@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
>>>>  	struct nvec_chip *nvec = dev_get_drvdata(dev);
>>>>
>>>>  	dev_dbg(nvec->dev, "resuming\n");
>>>> -	tegra_init_i2c_slave(nvec);
>>>> +	tegra_init_i2c_secondary(nvec);
>>>>  	nvec_toggle_global_events(nvec, true);
>>>>
>>>>  	return 0;
>>>>
>>> Dear All, this message was not delivered to marvin24@gmx.de, I'm getting that The response from the remote server was:
>>> 554 gmx.net (mxgmx016) Nemesis ESMTP Service not available No SMTP service Reject due to policy restrictions,
>>
>> Not a big deal, email address atrophy over time.  That's why you always
>> cc: a public mailing list for patches.

yes, my mail provider introduces a bit too aggressive mail filtering 
recently, causing me being unsubscribed frequently. I just changed my subscriber 
address, which should fix the problem, sorry.

Marc

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
