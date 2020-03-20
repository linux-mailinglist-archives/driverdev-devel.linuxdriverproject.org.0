Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F4C18D22C
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 15:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DAAF625279;
	Fri, 20 Mar 2020 14:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5lAfQcv+Ob5L; Fri, 20 Mar 2020 14:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9762C2042C;
	Fri, 20 Mar 2020 14:59:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E955C1BF20B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E1406204CC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nw4qAc0+R3DZ
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id CD6992042C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:59:12 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id 13so6747391oiy.9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 07:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6cU6dvNUXXgOk1ZWRGo5YIP4pVNNVxD4gSKmljkjxe8=;
 b=ej710H3FLW/b1wfk4Fa2EuvaljSBUf0Pru2Ad1sDMT5SyUoyHvpL3ziSq++JXH1SKI
 mffKbZo7peLSxkulHG8dnJ69nzwAjYwX8eqn7kqL/K83mfjAGaJ25PKnK7kMVe4ICPR8
 igEg5XUNMCVLfBlYZeSKkXvIOtk3QqyaDJFYleiENGleSgXw0v5zs47bPU2vDQrIpP4m
 Hj8ki/fNiobX42Pn2lLlgSDuDeG6Hx5OhU/PHZbbAwAFVy8t7aqiLDGMH2GkQPT0SFK3
 TR7BoawPPp+ucTiW9TaS1Y7OP9+Id1O7tyNlL1eQGul5u4idINNsGnr43bbmtQbyw7HI
 9Wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6cU6dvNUXXgOk1ZWRGo5YIP4pVNNVxD4gSKmljkjxe8=;
 b=SbaIY8DyzVGcxA0ZRY7/sWnoZsJI4eGhnrACAIrsWDBfV749iPBPs2IlKfF0XvUeEZ
 4mjnYFCuNRrXR97BuUWF775huzdlBEj4v444pvhnBm42dbhODMZwAUKvaiXkji0j4aQM
 n1NOaxgFoE4veFbVZd5S8aSEMAVY3MOJe8rGRBGIgoVZvBr5qr5eaNwSgBee9c8vt9po
 FY+PL0wO16nUsW7RU4DKvTs4PI2AfpIw6L2Sq0qg2NNv/uQ2uBFfp+qHe5rta/I5wY07
 I3I613LqwAvqniVn6cZrRKac+5hhe+5TEMWu7HH604PHAhIkJz/mFVzNEbvtGGagiPEY
 s4DQ==
X-Gm-Message-State: ANhLgQ0Lbo3PFO5/mR6l5WPd7grWA7a01AovZyv0eSySt96DMa0rudGT
 jQq4PRLgw9I5qYuu6GEE1mo6Rigd7Hdo23clwiw=
X-Google-Smtp-Source: ADFU+vuEPBBynSy/qquMe2DwCweyIeOC0f2YEfPa4wVRdDVwLNBCDabCv+f09cP2LYygDUY8nrxBlRL87EqBfBI3NFE=
X-Received: by 2002:aca:d553:: with SMTP id m80mr6886635oig.30.1584716352149; 
 Fri, 20 Mar 2020 07:59:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
In-Reply-To: <20200313200913.24321-6-sergio.paracuellos@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 20 Mar 2020 22:59:01 +0800
Message-ID: <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 gerg@kernel.org, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Sat, Mar 14, 2020 at 4:10 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> R3G's LEDs fail to initialize because one of them uses GPIO8

A gpio can't be used as pcie reset and led simultaneously.

> Hence, release the GPIO resources after PCIe initialization
> and properly release also in driver error path.

This pin conflict comes from incorrectly occupying pins that are not
used by pcie,
and should be fixed by not occupying those pins in the first place.
Releasing all
gpios isn't the proper way to go.

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
