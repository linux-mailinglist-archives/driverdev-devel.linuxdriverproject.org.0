Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4198E109
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 01:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BA7C86934;
	Wed, 14 Aug 2019 23:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qSv-OkMoUei; Wed, 14 Aug 2019 23:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04D5C867BD;
	Wed, 14 Aug 2019 23:00:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 621AA1BF963
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 23:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E6C6867BD
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 23:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PuJa9qAb5c8G for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 23:00:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F378986702
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 23:00:39 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z11so627175wrt.4
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 16:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=LQeCebufkkpC6WKzESrg64pDAh48aV2VR4IeDbj6/L8=;
 b=N7B99RfDJqtudXxJ12iE/11Z9YHhp85VfKeZYP2Eg1yxBgprn1LE3EN/cNoOR0SNiN
 BNomQm6AsRUPr5xxMPC3yZuovmJrSQ9SQRyxEUJU0HomC3BrzYtIGC4RE0nrXV81FPwF
 Qxl7GutRvuRPfS3tpLVyeRdhIBEM7gPJ/r/Vl+YSt0gjfsB3GOACTiFiFmKQ/6dLvQz4
 VWJbewtH7gy1GyB4ACiemd9XYNFMpvxrUYI8TgIaWsXaIALtd11cFFGpriHaj7Lk7iZL
 iFhja2RdtSCThVqqRznoOe5VtD8fGVVDhpyjilGx66CsJyPaDiX/7YQxKQNdj+xRnXQ+
 4D+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LQeCebufkkpC6WKzESrg64pDAh48aV2VR4IeDbj6/L8=;
 b=rwTVFoPghIfRONVzF0Q7BGGibHTRSQ/U+JUtVGw+gwgf9+jICMEb35zo0Z52IYT5v5
 L519iwPkZegH4cnqryndQ3oKbO/e2xlPyBCC0Shl3n7lfj1vcoM0jsmofmbtWkWqdA7N
 +4w8IWw9J5amI1vg9PDzcsMVB4hl3VhU24ePN1KcVcN4iV07STW0nugzgQMR0wQDKGEJ
 mTuaYN7N8JNAacOkSPKpN/HtIAM6Jedy61OwZBsKVk/JTDvxrwoFGXoLBPz/FFRvSm0N
 /1z0j5HqqnNRDvRx/Fu+hPLKkc5N+a5MKuN3uzojdmFPgruzddVKxOJbbuN/2G57lQjS
 U0IQ==
X-Gm-Message-State: APjAAAWi4z8GXmH+AiLRd8UnqFjISxDnsXvt3A74SImwNVLGcWAd4ECF
 xAHw1KSV8ilPwyATCpL1MGQ=
X-Google-Smtp-Source: APXvYqy/+/XdeQktv/fI48rKLISc8GH28SdlH+mrdeysQ6Kcvq+nTphnRe5OL5sSxp3kPcLQ8LJALA==
X-Received: by 2002:adf:fc87:: with SMTP id g7mr1798905wrr.319.1565823638173; 
 Wed, 14 Aug 2019 16:00:38 -0700 (PDT)
Received: from [172.30.88.90] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id o9sm777435wrj.17.2019.08.14.16.00.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 16:00:37 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
 <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
 <20190814220437.GJ13294@shell.armlinux.org.uk>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <1842bf8f-4f97-6294-41db-74f9f8e2befd@gmail.com>
Date: Wed, 14 Aug 2019 16:00:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814220437.GJ13294@shell.armlinux.org.uk>
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 8/14/19 3:04 PM, Russell King - ARM Linux admin wrote:
> On Wed, Aug 14, 2019 at 12:04:41PM -0700, Steve Longerbeam wrote:
>>
>> On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
>>> On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
>>>> The full patchset doesn't seem to be up yet, but see [1] for the cover
>>>> letter.
>>> Was the entire series copied to the mailing lists, or just selected
>>> patches?  I only saw 4, 9, 11 and 13-22 via lakml.
>> The whole series was posted to the linux-media ML, see [1]. At the time,
>> none of the linux-media ML archives had the whole series.
>>
>>> In the absence of the other patches, will this solve imx-media binding
>>> the internal subdevs of sensor devices to the CSI2 interface?
>> "internal subdevs of sensor devices" ?? That doesn't make any sense.
> Sorry, but it makes complete sense when you consider that sensor
> devices may have more than one subdev, but there should be only one
> that is the "output" to whatever the camera is attached to.  The
> other subdevs are internal to the sensor.

Ah, thanks for the clarification. Yes, by "internal subdevs" I 
understand what you mean now. The adv748x and smiapp are examples.

>
> subdevs are not purely the remit of SoC drivers.

So there is no binding of internal subdevs to the receiver CSI-2. The 
receiver CSI-2 subdev will create media links to the subdev that has an 
externally exposed fwnode endpoint that connects with the CSI-2 sink pad.

Steve

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
