Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7068DDA5
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 21:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE7CA877AD;
	Wed, 14 Aug 2019 19:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndbEAGvvnCyV; Wed, 14 Aug 2019 19:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9AE686C4D;
	Wed, 14 Aug 2019 19:04:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 405BC1BF3B5
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 19:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3ACAB864F6
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 19:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gINS013pCA9V for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 19:04:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9FB585ADF
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 19:04:55 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g2so54131559pfq.0
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 12:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=vseqSnSbN0/CqanKomWBzaCIiF5jTd1dDC+ZOTFJoRU=;
 b=NIUd46jprVTVWb3fgGd29jnISTwMC3sQLMBzqbzBx5/C/GbBaRyCyZuIZG4f8Uch80
 XGuLIqfmPvQ6z82mGFrCsuSFrROVu1t9z3XyMwxTEMjTlKIV5FkXdjanZh7Dd0POtN+S
 BwA9JU2VOATUXFcUNJCTHbhzp1EW/NnqqUw7VjKYbTpSAYfCV4lvoYfL37oM4x5RCCMG
 dgbSOh5K2P9x6Kw3+5rYztkqapb02op3DEUgrh3ZanrRGjq8F7MZomVPda30Ty7lY3/N
 Cl3ePLIn0U+V3+NOqwAJ1FHRAHOL21IJvANqGqrKfbgscg2sJCL035S3EbBpdmHZQxNX
 8NFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vseqSnSbN0/CqanKomWBzaCIiF5jTd1dDC+ZOTFJoRU=;
 b=FyhOB2VpxeWeeUqy7sLUn1QOE6Cte3/lUw4OjXL1TjrhPg/DqeHVlaIkrNMbxn0J+D
 W0J02uCUsxBCaSlxgOTWC1efaQXYB7tTuteMr07NjzVk4l4QcLrxKYCjHzNDEaX4zGch
 cMnUStFtrUKJU47Qv96tTRjR9aUdRssq7fIXTJ4K35pLRko+md7OvM8dpgl4YFxlKOgm
 KNUgQO60Ng5qbjVzxhIvCz28B+57UT746R2pPFLXzybF1ONFeTfHQtfyM+n57CGhBicl
 GReJ8LiWMSlIcXjo7azfZk+fbeQao3hyYtXKqwkGZOVI9fjA8T3xosJikJ7gAOfL8Uyy
 if0Q==
X-Gm-Message-State: APjAAAXoSqgCMZ8KlnNJVJ+F+OcDUMutNHiysC4FBLIxrNRYFopZPqfI
 T9pMbxQ6AeDxijjZ+1QvYq4=
X-Google-Smtp-Source: APXvYqxPvTpGzpOkdo/g/K4RNLCTrEvQmHU4pCu/ZH1U09LHKXfy4gAnJ648mZN9j/inAzh8Er9WwQ==
X-Received: by 2002:a17:90a:cc13:: with SMTP id
 b19mr1108603pju.117.1565809495303; 
 Wed, 14 Aug 2019 12:04:55 -0700 (PDT)
Received: from [172.30.88.90] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id t15sm702679pfc.47.2019.08.14.12.04.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 12:04:54 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
Date: Wed, 14 Aug 2019 12:04:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814103054.GI13294@shell.armlinux.org.uk>
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
> On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
>> The full patchset doesn't seem to be up yet, but see [1] for the cover
>> letter.
> Was the entire series copied to the mailing lists, or just selected
> patches?  I only saw 4, 9, 11 and 13-22 via lakml.

The whole series was posted to the linux-media ML, see [1]. At the time, 
none of the linux-media ML archives had the whole series.

> In the absence of the other patches, will this solve imx-media binding
> the internal subdevs of sensor devices to the CSI2 interface?

"internal subdevs of sensor devices" ?? That doesn't make any sense.

Sensors are external to the SoC, there are no "internal" sensor devices.

Not sure what you mean by "binding" either in this context, but external 
sensors can connect via fwnode endpoint, and later translated to media 
link, to the receiver CSI-2 sink.

Steve

[1] https://www.spinics.net/lists/linux-media/msg155160.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
