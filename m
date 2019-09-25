Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E02BDA03
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 10:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D22785F2F;
	Wed, 25 Sep 2019 08:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-qD4bMryGjz; Wed, 25 Sep 2019 08:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BE5884492;
	Wed, 25 Sep 2019 08:40:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC4241BF3EC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C92D88462A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvXajrkmUfMM
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:40:09 +0000 (UTC)
X-Greylist: delayed 00:07:30 by SQLgrey-1.7.6
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4716984492
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:40:09 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id a1so11697591ioc.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 01:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melexis.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BHSqfET/v0VOqVkRgYfeqgKZdLBryNUUngLfhvTg3eE=;
 b=Mvn+xFy1fsIUIn4KjRkB1jcDLVNlcbrjMuo777H8U2ogjy7MpktoZN4it0SCulFcjS
 F4yuMnUZAUpJKWQ5PYDcmJuDWzb+FW1LTIOQjBpdpT3glC3Bhg+o8d9BZVUVfyGOSdhR
 cidJtOJVwuxL74D6HIiRt+DC+pahQDIoXYDtwVEPYy/DI7IIKoSSm7k5dNq6yghQfKMe
 1TwMyHHJgemHj6Q4plTMm2od8/ie5IzTHUtfSyknzDPpS5Rg1i76AvJhe75KJiFLlMgt
 U4dZlVdSKZKF/9NqHs9TSRE93bEQGYMCDg+FkrQ7owqW5i9NVKI0PtqfkswuEosElCv5
 uVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BHSqfET/v0VOqVkRgYfeqgKZdLBryNUUngLfhvTg3eE=;
 b=TKcPWBPJwFQRqk7pXIFwTZX8ZYQVm9/HUdJ2SPCgicFXKisslyOz9CIEbMSSp8irlp
 UPo5WZ5CIkG1HTNl5e0fO6X6SgrILUR1e1fNFKCRtgoyPb6gBU1uxwjCjX0eCw1Yvyzp
 bFIF482twFDyXblUaRYlSudl7CI3smgnxZ1qJZfNjRIDBimhw3lgbkVIefbmMSweVMsy
 Bq71F5xYASFQDPJ/kYvtapXG1xz4c/csyBnj2T0qKzX06aVtcJGBYbCPKtJgMlbO0aU9
 AbNF6TIkq8dxxRucF/6Yyq2l/IP6AUaXKtdURqcUINh9OJXkSxFnUmvgHBC61kqiX3+u
 J6gA==
X-Gm-Message-State: APjAAAVAB2+5jQoZniD2W/+LyuUQrG6NpiKdxAbsIfQYQrGo/EH9gh21
 BV48F1JyexBSf82HV6DUKv8mwzGyHKLjJnnbSUPTmOfO
X-Google-Smtp-Source: APXvYqwH8uhlqnUXuE3lOBTiowf8S3XZZjuT45gaRADxfhmLKcFmYQiPYbXC5mi1JnmvxHCMyA0/Z8H2D3iLazRE35c=
X-Received: by 2002:a5e:960f:: with SMTP id a15mr513194ioq.13.1569400358384;
 Wed, 25 Sep 2019 01:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190925081836.GA22717@SARKAR>
In-Reply-To: <20190925081836.GA22717@SARKAR>
From: Crt Mori <cmo@melexis.com>
Date: Wed, 25 Sep 2019 10:32:02 +0200
Message-ID: <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
Subject: Re: Hardware prerequisites for driver development
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
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
Cc: Linux Iio <linux-iio@vger.kernel.org>,
 driverdev-devel@linuxdriverproject.org, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rohit,
There are many companies for hobbyists which sell sensors included in
IIO subsystem and for sure some electronic component store in your
local area. Price of sensor can be from 0.10 USD to 10 USD. Then you
plug this sensor to your Linux board (Beaglebone Black is Linux
Foundation preferred, although there are others including Raspberry PI
- can even be RPI Zero if you are on a budget, Odroid, Linaro, ...)
and you will need to provide correct voltage/current for the sensor.
Easiests is that you pick sensors which are 3.3V or 5V domains,
because you have pins on most Linux boards with this voltages and
these pins supply enough current for most iio sensors. Then you just
connect (wire) power pin on sensor to power pin on your board, and
then communication pins from sensor to board and ground from sensor to
board. Some addition into dts will be needed for the Linux to know
where your sensor is connected at, but then it should work as
plug-and-play.

I hope I did not miss too many steps in between :)

Crt



On Wed, 25 Sep 2019 at 10:18, Rohit Sarkar <rohitsarkar5398@gmail.com> wrote:
>
> Hi,
> This is probably a real rookie question.
> I have been interested in contributing to the driver subsystems such as
> iio. I have submitted some minor patches but nothing substantial.
> I feel that I need some hardware to be able to contribute more.
> What hardware would I need to get started?
> Where would I get this from?
>
> Thanks,
> Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
