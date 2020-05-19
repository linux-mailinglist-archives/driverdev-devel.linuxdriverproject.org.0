Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEB71D9172
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 09:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F8AD2268C;
	Tue, 19 May 2020 07:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id etNidsq9nAH3; Tue, 19 May 2020 07:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFBD8221DC;
	Tue, 19 May 2020 07:53:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C228D1BF2CE
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 07:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BEE4288313
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 07:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pR89KKKV1Qoi for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 07:53:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 533E18830F
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 07:53:56 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 145so6136683pfw.13
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 00:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=90JtBfQaO8CnvkM0ghj/tqXgttRAyyfAqTnngOdG3VI=;
 b=QZO8oZykFmocOOl7aFZ5ZbeTmoRkpjI18Td4wZGWrZ/LXrDrQpu266ulbaz9sRnBBh
 vwwADHvaUzikHT6Wla/j3q6OMfJpjv+OUkbs/Sk8R4r/bMNZJ0MGxdGMQFsPq3xbjf9p
 ZiVE6fug3h4OnadEuedJpLkeDkU3wUBJKKP+kQif3MbbOfixbBpfbVFhlyhrnA6255Xl
 xHNMQRMbBX8zdkzwBtsAR0mmoG8c8r4hviMLnjSemk0ByePhYHr7UWoh4VPaHwaQrDLg
 bqsYj2TV1NnfCu8v+CARZCLzBbN+hD2tUIuTT88HnqtSQElGwld4hBhTh0W1dpwr0wh/
 Dedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=90JtBfQaO8CnvkM0ghj/tqXgttRAyyfAqTnngOdG3VI=;
 b=Lh3rt90mBV5/sXwPU9gd3c+IuK2FhNT7Gk9Pv//VHR/oGRDHstZf04FHcyug2BVkfI
 5uSkow1aMpfkXmszN1osfztr7PY4KFUCIRp7MXVbPE01wvTSXcSbnDvbq5RRjGHnWKd9
 D1bKM2rdn75HChYDtLwPjfF+llbXxLwuEb49kq5mhKk7/hUb/VcHwzD3cEjeO9eYS9u/
 jLtLi06ZvIq9470JySJrie0QsMkw2BcLS7iBXw3/79hGhqUGvBPj8jsuascO2CiO1JPM
 Tpokv8QEc7qnlm3ZQTergii+xDmcs9UJmZkSvAz2LYFMp1XkdyCwiR4sdBDB/0XIxR2A
 jHTQ==
X-Gm-Message-State: AOAM530lcZ9V3I0axMIGBRe/HJKcy7znXhJ6tQP6ntT/Y0HZOld4z6sK
 NWb3rcjrFAuvHN5suTw5tdA=
X-Google-Smtp-Source: ABdhPJxMXA/j3m1VvlI5LVe0U7oVHJU9KIkdRwb3MBlxteaI8UdHaYhfylaqH+Ww2/HL4gxrdhjs4g==
X-Received: by 2002:a62:3006:: with SMTP id w6mr20807466pfw.29.1589874835786; 
 Tue, 19 May 2020 00:53:55 -0700 (PDT)
Received: from gmail.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id mn19sm1432158pjb.8.2020.05.19.00.53.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 00:53:55 -0700 (PDT)
Date: Tue, 19 May 2020 13:23:49 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH V1 5/6] staging: greybus: audio: Add helper APIs for
 dynamic audio modules
Message-ID: <20200519075347.GA18002@gmail.com>
References: <cover.1589734179.git.vaibhav.sr@gmail.com>
 <c1339e4d57c8b39bd25197d4514fabd868b829b1.1589734179.git.vaibhav.sr@gmail.com>
 <20200517173706.GB34497@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517173706.GB34497@piout.net>
User-Agent: Mutt/1.10.1+3 (f9293d646485) (2018-09-22)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 17, 2020 at 07:37:06PM +0200, Alexandre Belloni wrote:
> Hi,
> 
> On 17/05/2020 22:47:20+0530, Vaibhav Agarwal wrote:
> > Greybus Codec driver allows modules to be dynamically added and removed,
> > which further requires updating the DAPM configurations as well.
> > 
> > With current snd_soc architecture, dynamic audio modules is not yet
> > supported. This patch provides helper APIs to update DAPM configurations
> > in response to modules which are dynamically added or removed. The
> > source is primarily based on snd_dapm.c
> > 
> 
> I really think you should send this patch series to the ASoC
> maintainers, especially this patch. The main goal shouldn't be to simply
> fix compilation issues but to try to get the driver out of staging else,
> the current situation will happen again.

Agree Alexandre. I'll share this with ASoC maintainers as well.

Also, I'm seeking opinion regarding the scope of pushing GB Audio out of 
staging tree. I'm keen to make the relevant changes and work actively 
for the same. However, I don't have a real device to test the latest 
code and thus not sure if the changes can be pushed to sound soc tree.
GB maintainers, kindly share your opinion.

--
Regards,
Vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
