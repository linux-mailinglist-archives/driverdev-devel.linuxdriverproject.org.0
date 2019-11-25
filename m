Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 040B4108AD1
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 10:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF24F85C4B;
	Mon, 25 Nov 2019 09:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wnILQo7G2NO; Mon, 25 Nov 2019 09:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF76E858C6;
	Mon, 25 Nov 2019 09:27:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 187DF1BF3EA
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 09:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 14D4F204EA
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 09:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlBS1Ld5hU5Z for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 09:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D1EE920006
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 09:27:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f129so13647142wmf.2
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 01:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GPEnZNQEI8QKSUnH82DWjy/DOlQPOIbDIUbMCpH13uc=;
 b=OOA0opZBwLH1JTUMyzqDx7FpKLojjoTy9X8fiOzRNOUWulU66lRwhIvTVGOuHvcxBl
 i/K1roaWlbflWdjCp7QQe6ijp6djt7dCmenW/J0ANIQKISO97fqvVaNTvCwg0lhWJ6dw
 rsMNCoR0PoOqpI8TWhuGSd5fiwceT33EZlFXNVJ4hGOCwK7rZNWheXzjcX69rWSqnJzj
 pYty3+YuzE/DHBIIypzKck8vwiwffrmFxLjHGH0FGMbSukhgjzqeXKpj8c+yAaQ/aa9o
 YJA70p3Q5Gq4FexTAP0jF3HKgrzvuV8v5qaM7oVAinr7H04qfxHUuPq4/Wxs6NfnA7IR
 aU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GPEnZNQEI8QKSUnH82DWjy/DOlQPOIbDIUbMCpH13uc=;
 b=BHiBYT0YrZ9Hg0DApnidev6EjsXOcAGTfYRGrkAC58Kdxz6IhsWOTPvq5i4G4m/5+n
 7H69tDEwG330pmeF630wgnBGY6j5WSPSmb7Qx1jbWhM+jOiZdi1i8wBr9qaf912SwLJ/
 BUvymGHJL2qW00yziMLuSTiwFGg8qMQbyWfO6HFw/6BfHVrBcUrE25ZxcN92eYaATEIU
 jTYo6kfv+6AUJc6geq/lhfTL99JErgOUMjMpknQNtG0bUx6p4mBfHF2VVMteTijqKWvv
 B40fIJFCHfiKdOaJssXLx7jzn1nWreI7Oijo4LfnuwqWwVi3Tlof1vMMoZY1s5qzNxzL
 pfjA==
X-Gm-Message-State: APjAAAWdFweNljzTgsVvLDwEUEOlIutA9AcwEbFxH9pIYYaK3JrUqzho
 U5hhk93FRRDgfxUfPFqo0mWgNXGpwh6s087lvjg=
X-Google-Smtp-Source: APXvYqxzdo3Q5FMwIo3FbQht8mabp2Hsamcv3s8jm+BuubQR5plKLDThjkZYoeVig7g/1dob+nT2rjG4fWtkPMX7IRI=
X-Received: by 2002:a05:600c:228c:: with SMTP id
 12mr20671074wmf.154.1574674026240; 
 Mon, 25 Nov 2019 01:27:06 -0800 (PST)
MIME-Version: 1.0
References: <20191122205153.30723-1-adham.abozaeid@microchip.com>
In-Reply-To: <20191122205153.30723-1-adham.abozaeid@microchip.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Mon, 25 Nov 2019 20:26:55 +1100
Message-ID: <CAGRGNgV=zW8xpgHfj99m9LHN=dtUBH_36_kQSnnBOrd_6WpDoA@mail.gmail.com>
Subject: Re: [PATCH 1/4] staging: wilc1000: use runtime configuration for sdio
 oob interrupt
To: Adham Abozaeid <Adham.Abozaeid@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 Ajay Singh <Ajay.Kathat@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Adham,

On Sat, Nov 23, 2019 at 7:55 AM <Adham.Abozaeid@microchip.com> wrote:
>
> From: Ajay Singh <ajay.kathat@microchip.com>
>
> Set SDIO Out-of-band interrupt configuration at run time by passing
> parameter during module load.

The OOB interrupt is a GPIO and this is an SDIO card, so why not just
set the relevant pin in the devicetree and detect it based on that?

I'm pretty sure that the Broadcom fmac driver does something like this.

Thanks,

-- 
Julian Calaby

Email: julian.calaby@gmail.com
Profile: http://www.google.com/profiles/julian.calaby/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
