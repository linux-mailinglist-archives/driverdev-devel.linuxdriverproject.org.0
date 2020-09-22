Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B789274870
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 20:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9400F228AC;
	Tue, 22 Sep 2020 18:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npU4Rxdc1gFM; Tue, 22 Sep 2020 18:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0170203C4;
	Tue, 22 Sep 2020 18:43:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 940AE1BF865
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 18:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87930203A4
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 18:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZrrtNsh6hSy for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 18:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 698342037A
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 18:43:06 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id v14so1871571pjd.4
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 11:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AOc4DnOR/AfJCb7O1YlqXCVVgO3c4FUkM/X5f+Xzp3M=;
 b=FHtOU4t3Tpe7QIuQmCTJz0l2N6Ox/POqHxEfuXG4fqF+rkXvXzpJ96tGrXx/UkHb1+
 F+Ch15P8R2lHavNQyUE+IQno9mhT9bE5TSVRcc/TwFNtbMXMDRHq2+qoisKfSxkEQ2gT
 AQb4hWQBVB0urL43ZHxkYaYUuH9ysNHrZR7pNwKWosl8hg07XAhm9xC+RaQJ+AqOg1RX
 DkbjBhFNY3TUF1vbz2EWk/cIKxGfcLInEpHWCqiIATk4QcjnetqEnnam4YHLfiZlXgvT
 kT+RUaD64sWxK4PgsFF1qo7pFF2Vo2Zq7TjK1EHFs/NL+z8UsedPu7JkWjpbosqSD9YP
 oxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AOc4DnOR/AfJCb7O1YlqXCVVgO3c4FUkM/X5f+Xzp3M=;
 b=MczHA6hj36XyWHtUps8fhE2wvRP4JeXXg4+4Ch6eoa3W9wisOLNzw8qVVxoJd0ae8u
 Yq/jHGI2fqc1IiUU2v74BEy9DioaMrm+6JizMlu+tYk3YK2maG3i/2gP/q0j5DZcCN1K
 /At2k8jLCCZ3LXGnu3iDKhhr9OyIT67wWqCc/0ICkKqpvP68Vinwv710TX7qCs7USMsU
 diDf06wB0VNBsn510c4lrkYL6kJ/Hoy/EhK/Rc0STP+LfbQIgs22NqzDYPPsbIQnyxF3
 oX1e9xXfeeHIkVNEDeIdIl+CXEaiE0PJdH510TL9F3lQlWxq4C2tQ/GS9Gf5fhaJu7qY
 E74Q==
X-Gm-Message-State: AOAM532p2zlaRK4jvlb/Xjr1ZwqujJ+S96/9guDlztJ0tTTyNtrQwXIu
 p8x+t7llF7npLdYQRBvO9ZM=
X-Google-Smtp-Source: ABdhPJw5DgATqvxAw3bfOAIboduwo/Gxmk9LXH5h4qz7hRNCuDztoqlxvdV0k7yutr4ODKwzZeMRfg==
X-Received: by 2002:a17:90b:3252:: with SMTP id
 jy18mr4726795pjb.1.1600800185993; 
 Tue, 22 Sep 2020 11:43:05 -0700 (PDT)
Received: from james-Aspire-E5-575G (c-71-231-36-179.hsd1.wa.comcast.net.
 [71.231.36.179])
 by smtp.gmail.com with ESMTPSA id ev19sm2872317pjb.42.2020.09.22.11.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 11:43:05 -0700 (PDT)
Date: Tue, 22 Sep 2020 11:43:00 -0700
From: James Browning <jamesbrowning137@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: comedi: comedi.h: Fixed typos in comments
Message-ID: <20200922184300.7rd7uzuq27vz7su6@james-Aspire-E5-575G>
References: <20200921053018.64095-1-jamesbrowning137@gmail.com>
 <20200922075224.GA1789797@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922075224.GA1789797@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 22, 2020 at 09:52:24AM +0200, Greg Kroah-Hartman wrote:
> On Sun, Sep 20, 2020 at 10:30:00PM -0700, James Browning wrote:
> > Removed repeated words "the" and "in"
> > 
> > Signed-off-by: James Browning <jamesbrowning137@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> What tree did you make this against?  It's already in my development
> tree and in linux-next, so I can't apply this again :(
> 
> thanks,
> 
> greg k-h

I made that patch on the 5.9-rc6 mainline tree. From now I will check the linux-next tree.

Thank you,
James
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
