Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E7826DD92
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 16:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE8718786F;
	Thu, 17 Sep 2020 14:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTKKT4DusX5z; Thu, 17 Sep 2020 14:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25FFC8784E;
	Thu, 17 Sep 2020 14:08:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C78A71BF399
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBB9D20421
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ayKkM4a9Q4Vg for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 14:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 7294F20415
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 14:08:28 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id mm21so1344422pjb.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 07:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zeRj3f6nyWLRdKoz6U7zTVJ0r+VVM/E42TLCww5Jge8=;
 b=GRhGAYpUbLQLD7rsHRD8Gt6k1AOgGiS8JgVFi1Z9AyzpAxgzpscPl7516mOzlQRaig
 HwoyNmxJ2Y1GITM61jjkMvzoVaIJGmsdrPO9L/S2hsHmFmyjOAtQF3TGzXrLBmqzDYQm
 ea2JHqKxKAwiVsprqTXNxrS8Oq5eWc2LQGiErzRamqG+OB9mGqJUnOdOIH1MO0jwMQCv
 xt9nr1FAo0ozDMPKqgA/h+2kSjIhpNPzh/Tl8aATX7Ua3wKL+91wNAt1Lz5lUuIre2yW
 HTo25DJKhYQ94jTe6CELMtUdoHG6mP+QczAbBaN8cOTcsdAt4tanwXUduvfzuETGyLsE
 qO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zeRj3f6nyWLRdKoz6U7zTVJ0r+VVM/E42TLCww5Jge8=;
 b=IeZiRLyrFfM7NoOOpGBVdKU5CjsAVTgPlTgg+QxFjYB8zqwJoqB4i3mjdJT10QCZ6G
 GCOyoH9y6smPdE1K1r2kX0gaOeTw/QKLmraXEt03IinxHP/26+M5+2jUb1dEiqlek1Qk
 UC3XXtQdfqBoDy6/0KRABofzv76d5quZnxVgeHZZhNSHW7y9UZkL0LxqB7n8DkEtg4gO
 3bavbomIgFHMBdccvOFpaW1jWb4IOzYNIkPGr+Vey2mKMrcJqhDT8fnoJa/31uOPVypj
 xiOtVtpcpINIts5MOy4G6BggU/bYjsFIgBU4qZe9/KtQuIC1dWFsFqGKTAOeUbJ/hJHK
 SMgA==
X-Gm-Message-State: AOAM530WVqq0jUstQhQw4YG5lQijiJxCUo8dWgHr2q4sUIoIzByTvbPN
 hQzrqp2ys4QLMDrY6n9sNCRIW4itRBlLljDnXpc=
X-Google-Smtp-Source: ABdhPJyh5SCZniVNl+/4l5cUoMNIO4kYJ+q3Jqvhcbm1nkQPGtZAzykiqRLIOqvGCrV8bWOIU+GOb4AQ/Szk8cTgcqo=
X-Received: by 2002:a17:902:b7c7:b029:d1:cc21:9c38 with SMTP id
 v7-20020a170902b7c7b02900d1cc219c38mr17716244plz.21.1600351707970; Thu, 17
 Sep 2020 07:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917075356.GA3333802@kroah.com>
 <d97fb93f-5258-b654-3063-863e81ae7298@gmail.com>
 <53787a36-4473-9336-6719-270930db2735@ideasonboard.com>
In-Reply-To: <53787a36-4473-9336-6719-270930db2735@ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 17 Sep 2020 17:08:09 +0300
Message-ID: <CAHp75VcjSZC7BG9ckFTogTK0xXog9tev8i3w=P0iN4JRQY05XQ@mail.gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: kieran.bingham@ideasonboard.com
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
 Rob Herring <robh@kernel.org>, jorhand@linux.microsoft.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Scally <djrscally@gmail.com>, Tsuchiya Yuto <kitakar@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Yong Zhi <yong.zhi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 4:31 PM Kieran Bingham
<kieran.bingham@ideasonboard.com> wrote:
> On 17/09/2020 10:47, Dan Scally wrote:
> > On 17/09/2020 08:53, Greg KH wrote:
> >> On Wed, Sep 16, 2020 at 10:36:18PM +0100, Daniel Scally wrote:

> >>>  drivers/staging/media/ipu3/Kconfig       |  15 +
> >>>  drivers/staging/media/ipu3/Makefile      |   1 +
> >>>  drivers/staging/media/ipu3/cio2-bridge.c | 448 +++++++++++++++++++++++
> >> Why does this have to be in drivers/staging/ at all?  Why not spend the
> >> time to fix it up properly and get it merged correctly?  It's a very
> >> small driver, and should be smaller, so it should not be a lot of work
> >> to do.  And it would be faster to do that than to take it through
> >> staging...
> > I was just under the impression that that was the process to be honest,
> > if that's not right I'll just move it directly to drivers/media/ipu3
>
> The IPU3 driver is still in staging (unless I've missed something), so I
> think this cio2-bridge should stay with it.

You missed something.
https://elixir.bootlin.com/linux/v5.9-rc5/source/drivers/media/pci/intel

IPU3 from Freescale (IIRC) is a different story.

> Hopefully with more users of the IPU3 brought in by this cio2-bridge,
> that will help gather momentum to get the IPU3 developments required
> completed and moved into drivers/media.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
