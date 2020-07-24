Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E5A22CB2B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 18:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A6D823BC0;
	Fri, 24 Jul 2020 16:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EziHW9WUNr2w; Fri, 24 Jul 2020 16:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF62823455;
	Fri, 24 Jul 2020 16:36:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27D541BF37B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24C598715D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VeZTtpzChB_4 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 16:36:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B353C87152
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 16:36:40 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 27B5F160060
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 18:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1595608598; bh=WUn1vISGBg8YHDaWclh9H7idtEY4XvlGeJbKwqiax/o=;
 h=Date:From:To:cc:Subject:From;
 b=Bdnbc6v38ITAhXMYP5F3L93c4Px1v5H6Yh4lIA72UHt7w0xvDZvhhC1Gt6xOMDX0c
 7EjIWxZQnvw9uhnKCZBOeWQ9KtuvYVgX3omMGT+ahKwTBAReQy1TIkztXzamZxALhA
 CU1dzvpZY3x/3LS0HXuetQg9zHnOBerukuxSH9Im3hOlnxy25ANTYJ3nXkU1S1VQqV
 h8Cn3gwJsAV/PLiPBXbUjObeU6fuCSVW6g1QHPKQ+tsCtKf742zbEoLMbr8HZNd5ub
 nvKnslU8XBneHooqGYtZVF9aVV3VOewKNzmvS++giIwJcnA70dsofrHwwj73JkyypO
 KGPT1P7F/R7Cw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4BCvwj15Jcz6tm6;
 Fri, 24 Jul 2020 18:36:37 +0200 (CEST)
Date: Fri, 24 Jul 2020 18:36:36 +0200 (CEST)
From: Marc Dietrich <marvin24@posteo.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Marc Dietrich <marvin24@posteo.de>
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
In-Reply-To: <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
Message-ID: <alpine.OSX.2.23.453.2007241835260.9201@macbook-pro.fritz.box>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
 <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
 <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
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
Cc: linux-tegra@vger.kernel.org, Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>,
 devel@driverdev.osuosl.org, p.zabel@pengutronix.de,
 Greg KH <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 24 Jul 2020, Marc Dietrich wrote:

> Hi Rohit,
>
> On Fri, 24 Jul 2020, Rohit Bharadwaj wrote:
>
>> On 24/07/20 1:58 pm, Greg KH wrote:
>>> On Fri, Jul 24, 2020 at 01:44:27PM +0530, Rohit Bharadwaj wrote:
>>>> On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
>>>>> changed usage of slave (deprecated) to secondary
>>>>> 
>>>>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>>>>> ---
>>>>> v3: change patch subject, add version history
>>>>> v2: add changelog text in body of mail
>>>>> v1: fix style issues by changing usage of slave to secondary
>>>>>
>>>>>  drivers/staging/nvec/nvec.c | 12 ++++++------
>>>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>>> 
>>>>> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
>>>>> index 360ec0407740..5d7b66719a39 100644
>>>>> --- a/drivers/staging/nvec/nvec.c
>>>>> +++ b/drivers/staging/nvec/nvec.c
>>>>> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void 
>>>>> *dev)
>>>>>  	return IRQ_HANDLED;
>>>>>  }
>>>>> 
>>>>> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>>> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>>>>>  {
>>>>>  	u32 val;
>>>>> 
>>>>> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip 
>>>>> *nvec)
>>>>>  }
>>>>>
>>>>>  #ifdef CONFIG_PM_SLEEP
>>>>> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
>>>>> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>>>>>  {
>>>>>  	disable_irq(nvec->irq);
>>>>>  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
>>>>> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device 
>>>>> *pdev)
>>>>>  	platform_set_drvdata(pdev, nvec);
>>>>>  	nvec->dev = dev;
>>>>> 
>>>>> -	if (of_property_read_u32(dev->of_node, "slave-addr", 
>>>>> &nvec->i2c_addr)) {
>>>>> +	if (of_property_read_u32(dev->of_node, "secondary-addr", 
>>>>> &nvec->i2c_addr)) {
>>>>>  		dev_err(dev, "no i2c address specified");
>>>>>  		return -ENODEV;
>>>>>  	}
>
> as Christoph said, please don't change this line.

arr, I meant Dan of course ;-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
