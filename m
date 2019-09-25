Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CCDBE2E8
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 18:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E45F2844B5;
	Wed, 25 Sep 2019 16:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DDYuVIhsa19K; Wed, 25 Sep 2019 16:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B33584483;
	Wed, 25 Sep 2019 16:54:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B20A1BF414
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 16:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97A99879FF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 16:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GxkMYIW8DubV
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 16:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1AA10879CD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 16:54:45 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id v4so3875734pff.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 09:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sXKkE3u4Gt25Vll7joSYrDNRO6uCZgGWYBpw2Jrfy5k=;
 b=SD0ltrXBhGjEgN77oTEuFT6vJGiLOs/8mOKzZi0irWBPOAQyzb2Fya8tlSwvrLHMW6
 whp9B/+NZTj75Y66+QQiarwrGnRChibsPrl+tRSXOamZweX19lvFvZlQCjL2ngPY7CT2
 2/HA1F6fDqA5SoAtTpc1+mMrW7DGZdJxCspONgCpgiHtE8C9O5cBARGVlpF/zAPD1x4M
 zOHxjpUi9wnGS2C7FxkzIsybJ+J8WIkND5b3NMez27Qe/9ykW6IVg1dVutowgliCJIBp
 BTUdlODscdaT67ZmdHmb94QOZ7OBtCIFNrEr6xnXgdjXJ2GegWbdLtn24P8HdYQD0pDL
 X5ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sXKkE3u4Gt25Vll7joSYrDNRO6uCZgGWYBpw2Jrfy5k=;
 b=ii922JupbBA/cCHhAX1U2j9tisHPcNu2PqoQk3d2bbU/xZ/1HsTmg8n4QeJGCHjP8F
 FZZeq3uPejwXkvA1tPGU+auZqwDTaKsFBdeCKJs/shdZ/bCDGftU0SKLtv9rFvqNndCu
 CbtJfbT4qmZEjV2J/b3ra5SOfsQm/Y0oMiQHW328H5McD7w7VT0SBJtldArkOoRP5y0e
 rilfIm3lAy2BUEkSShSM35o8BwHQxNJPkBXAD8YsB3GQGDHnRk6QDsAfdc/ONbzDOwGp
 1DsqpAq+/hGMXG4HeLC8ROdct9MaU4ogojS7ZOvz7i5FR1d3h1AW0yFDW9/Fctf27pay
 CcJw==
X-Gm-Message-State: APjAAAXRnhwz0rzTPOANADjbb/fLoMBNd5N8j3DIWa3mS6nHakY0GxPX
 vZF/pKa0DhFJx32VvxFgPhDNbvadeJXWGw==
X-Google-Smtp-Source: APXvYqyIBiC1Po73o/eEPNSh26glwKPL/n/W7ckEbniNHmVMvuIJ0GnvXtzza43cS3aMSFo4kiunyg==
X-Received: by 2002:aa7:9ab5:: with SMTP id x21mr10683550pfi.252.1569430484220; 
 Wed, 25 Sep 2019 09:54:44 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id 2sm6268498pfo.91.2019.09.25.09.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:54:43 -0700 (PDT)
Date: Wed, 25 Sep 2019 22:24:34 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Crt Mori <cmo@melexis.com>
Subject: Re: Hardware prerequisites for driver development
Message-ID: <20190925165356.GA28917@SARKAR>
References: <20190925081836.GA22717@SARKAR>
 <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
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
Cc: Linux Iio <linux-iio@vger.kernel.org>,
 driverdev-devel@linuxdriverproject.org, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 25, 2019 at 10:32:02AM +0200, Crt Mori wrote:
> Hi Rohit,
> There are many companies for hobbyists which sell sensors included in
> IIO subsystem and for sure some electronic component store in your
> local area. Price of sensor can be from 0.10 USD to 10 USD. Then you
> plug this sensor to your Linux board (Beaglebone Black is Linux
> Foundation preferred, although there are others including Raspberry PI
> - can even be RPI Zero if you are on a budget, Odroid, Linaro, ...)
> and you will need to provide correct voltage/current for the sensor.
> Easiests is that you pick sensors which are 3.3V or 5V domains,
> because you have pins on most Linux boards with this voltages and
> these pins supply enough current for most iio sensors. Then you just
> connect (wire) power pin on sensor to power pin on your board, and
> then communication pins from sensor to board and ground from sensor to
> board. Some addition into dts will be needed for the Linux to know
> where your sensor is connected at, but then it should work as
> plug-and-play.
> 
> I hope I did not miss too many steps in between :)
> 
> Crt

Hi Crt,
Thanks for replying, your answer was super detailed and helpful.

Thanks,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
