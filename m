Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E00CFBBB4
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 23:37:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A77AA8A166;
	Wed, 13 Nov 2019 22:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8wRemHNuR4w; Wed, 13 Nov 2019 22:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A6D78A156;
	Wed, 13 Nov 2019 22:37:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76B561BF3BB
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 22:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FF6389093
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 22:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vF4uXLq7qZjN for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 22:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 47B6B89091
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 22:37:16 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k1so969395pgg.12
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 14:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w7B875XZuR5oafFG8NOnl5OI5GsCZ+1ssBbHKFrJSNA=;
 b=d/m02anasZDot/whtRvfnFm0gsNWyld10J7fYzOfI64BcxOfVfBgn7fcJJBYdjkIVk
 zQlcyqV5L7dHO3dOAVKQ24V9iokEnJKRO5LPumfEVbvDwAMuKjaMARfOjx+jxu44Ur1r
 rzQ0989x7JNwDpaPJhD5304VJkPwRWK8mSYcx54a2RGtFX3I8kzl9BQS6KSWAjfu6iXb
 gBSx1T/MVs5PSphidTpet1T/qqxfLsO7UehqjenlSfqKQnDC9fjj/twChfMVS6uF57Ij
 VE0KvK08LhGziEVTBFLiY5jbB9OrWrps6xcICiApRCv3HXvYRHpo9cWMpRpZL0zCqsOH
 dOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=w7B875XZuR5oafFG8NOnl5OI5GsCZ+1ssBbHKFrJSNA=;
 b=V7lJi+4QvCDoi1Y/ocSzwfnAIhxI4bzBkH62qPsiQqRcd+Q+MRGz+6vk65/wBezYT/
 0i2YE56z+jn54wMVWc7DlajVG89+I8ovb6Q2A7wkINi4M5oCmSXOkcBNSdpv6YMQqZxA
 HxEREzDkq7N+GuDEU7wy7+5WEPbGVbhhWsfUYaD3ArCfPR00JFyILW2I5ICM09H/HD7l
 j5sj0yojEEqefabRtC65VM58upTr34bnI4+FKHJKnmbgtFd1UptRHxHCbJ5Z8PJHNY55
 cK7ajwu89aQv2k0ynlMeuZzjHiHp5FfZE0CAAGkfUbkkfrrfBdzvOATD0e3or0t3pKOT
 qHOg==
X-Gm-Message-State: APjAAAVzEL5zn4oKggPqvXi/xeg62DQPgvmbX5GNmYg5X9IFOlR/HTLd
 Pdv2NtQS4avRVgFN8A5oXoc=
X-Google-Smtp-Source: APXvYqxE14G1QBfNnL/Qz1wTaYvzj0nNNBvHZNCF1mojyUKZHlzFU3JyBmRdGrULYkBraC+sil870Q==
X-Received: by 2002:a63:e407:: with SMTP id a7mr6238050pgi.92.1573684635287;
 Wed, 13 Nov 2019 14:37:15 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 10sm3383259pgs.11.2019.11.13.14.37.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Nov 2019 14:37:14 -0800 (PST)
Date: Wed, 13 Nov 2019 14:37:12 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: "Hennerich, Michael" <Michael.Hennerich@analog.com>
Subject: Re: [PATCH 1/3] iio: Add ADM1177 Hot Swap Controller and Digital
 Power Monitor driver
Message-ID: <20191113223712.GA25398@roeck-us.net>
References: <20191112153552.27431-1-beniamin.bia@analog.com>
 <20191112173757.0000075b@huawei.com>
 <20191112181734.GA30127@roeck-us.net>
 <BY5PR03MB4965158557D9AEA20A48F95F8E760@BY5PR03MB4965.namprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR03MB4965158557D9AEA20A48F95F8E760@BY5PR03MB4965.namprd03.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Jean Delvare <jdelvare@suse.com>, "lars@metafoo.de" <lars@metafoo.de>,
 "biabeniamin@outlook.com" <biabeniamin@outlook.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "paulmck@linux.ibm.com" <paulmck@linux.ibm.com>, "Bia,
 Beniamin" <Beniamin.Bia@analog.com>, "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 13, 2019 at 08:10:50AM +0000, Hennerich, Michael wrote:
> 
> 
> > -----Original Message-----
> > From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> > Sent: Dienstag, 12. November 2019 20:18
> > To: Jonathan Cameron <jonathan.cameron@huawei.com>
> > Cc: Bia, Beniamin <Beniamin.Bia@analog.com>; jic23@kernel.org;
> > lars@metafoo.de; Hennerich, Michael <Michael.Hennerich@analog.com>;
> > pmeerw@pmeerw.net; gregkh@linuxfoundation.org; linux-
> > iio@vger.kernel.org; devel@driverdev.osuosl.org; linux-
> > kernel@vger.kernel.org; mark.rutland@arm.com; robh+dt@kernel.org;
> > devicetree@vger.kernel.org; paulmck@linux.ibm.com;
> > mchehab+samsung@kernel.org; linus.walleij@linaro.org;
> > nicolas.ferre@microchip.com; biabeniamin@outlook.com; Jean Delvare
> > <jdelvare@suse.com>
> > Subject: Re: [PATCH 1/3] iio: Add ADM1177 Hot Swap Controller and Digital
> > Power Monitor driver
> > 
> > On Tue, Nov 12, 2019 at 05:37:57PM +0000, Jonathan Cameron wrote:
> > > On Tue, 12 Nov 2019 17:35:50 +0200
> > > Beniamin Bia <beniamin.bia@analog.com> wrote:
> > >
> > > > From: Michael Hennerich <michael.hennerich@analog.com>
> > > >
> > > > ADM1177 is a Hot Swap Controller and Digital Power Monitor with Soft
> > > > Start Pin.
> > > >
> > > > Datasheet:
> > > > Link:
> > > > https://www.analog.com/media/en/technical-documentation/data-
> > sheets/
> > > > ADM1177.pdf
> > > >
> > > > Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
> > > > Co-developed-by: Beniamin Bia <beniamin.bia@analog.com>
> > > > Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> > >
> > > Hi Beniamin,
> > >
> > > A couple immediate thoughts.
> > >
> > > 1. That cc list has some rather non obvious people on it.  Unless something
> > >    fairly surprising is going on, probably better to cut it back a bit.
> > >
> > > 2. Why IIO?  Not entirely obvious to me.  From first glance this is definitely
> > >    doing hardware monitoring.  If there is a reason there should be a clear
> > >    statement here on why.
> > >
> > 
> > I don't see why this is implemented as iio driver. I think it should be
> > implemented as hardware monitoring driver.
> 
> Totally agree that this driver could have been implemented as HWMON driver.
> Well we use this device as USB supply monitor on our embedded portably kits, to detect low VBUS or excess current draw. 
> 
> ADALM-PLUTO and ADALM2000:
> https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/adalm-pluto.html
> 
> https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/ADALM2000.html
> 
> The only connectivity to the host PC is via IIO/libiio USB Gadget FS and Ethernet backends.
> 
> We recommend people to read the IIO attributes whenever they report an issue.
> Unless libiio supports directly HWMON or HWMON adds an IIO bridge we would prefer this driver being exposed as IIO device, since HWMON users still can use the IIO/HWMON bridge.
> 

I do not think this is a valid argument.

- This is a hardware monitoring chip.
- Implementing kernel support as IIO driver, keeping it out of tree for years,
  establishing an iio based use case, and then pressuring kernel maintainers
  to accept an iio driver seems inappropriate.
- The argument of "we need libiio support for this chip" could effectively
  be used to re-implement pretty much all hwmon drivers as iio drivers.
- The iio->hwmon bridge would add complexity for the majority of potential
  users of this chip. Focus should be on the majority, not on one use case.
- Userspace may as well use libsensors and/or sensors to do the necessary
  access - or implement it if neded. Or add a libsensors based backend to
  libiio (or to iiod).
- Last but not least, it would be more appropriate to implement a generic
  hwmon->iio bridge for iio use cases for chips supported by hwmon drivers,
  similar to the hwmon->thermal bridge.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
