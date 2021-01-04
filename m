Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F22E9789
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 15:45:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA6D586101;
	Mon,  4 Jan 2021 14:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5ic5iUMs-jp; Mon,  4 Jan 2021 14:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F95D86099;
	Mon,  4 Jan 2021 14:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F7341BF346
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BC048656A
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ryjtpp+ugIU2 for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 14:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E5AC86918
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 14:45:47 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id i6so26236102otr.2
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 06:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OvAhumTD21QUbPNeTp8dtsndkhEIhLEEG5IdkVuRcDw=;
 b=KuLf/7jx14Horyal9YVKcvo7laAoBg7ZLpYV1q/T4mSrNjF6SESdHf1RR+oEv/QQ7S
 wfFVzp2b7aTvX7d1rP3L1JsAGoJ6iZg8Lw0lP1wFtUs/ef4RbRa+WYfjz8D9HYh1nkgW
 bpjC/e0pF4myYNzLIBTFbWmsMjo/LgbceqrjJAoTOKxSiS2JdbtUaCTEm3XeHPy/7CBL
 aJhqmOz/YRoVw9+0rNeNS7xVONqocWur9scKHUZ9eRmTzNQuRuSsIU6SbuMX1ioc8DMG
 kpPM7yPF3oTwmEDf0Xm8BXPE1NYWlkJP6GMm4r0gaPZNLbeQB1SkdLAt3i4e1S9cR+CW
 RyXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OvAhumTD21QUbPNeTp8dtsndkhEIhLEEG5IdkVuRcDw=;
 b=n0zD+cWozwlc+u4lOtpommyPzF7GQg4vjwrbOdC6oMINDaJh5XTQHc6ot9ZXPPYoSM
 DegL38GHY8sxl43LZ/bGM4axCNi05mbinosTrluknvdmRp9Y+qKC5Qxn2EaBtnoo1GcU
 5WHuqSon3TFMJYERCZZMdcfkcHFCbELUuJh33C9s6PJBNSYIcpkfCtVTsGN9p1vgaR4G
 lQ7qYviv7YGwacfafsfmaPK1FY5lMxt0rs4QSAxT6ndEOaa9uHG2/HImnxC0WcJwXklW
 VijU9rzbdTeM1beXLrjHqczlJ0OY5RhxB/r+hnJQcO1wJ3ytBR/O8wb1RHa4/+nVNiKG
 LmvQ==
X-Gm-Message-State: AOAM532gA/UXfbss85JeWxRLhKxRwpXY1vvDtvJVN9FmO1DdJKwAixTs
 HK3XYIEXDAYbgalpBOamMItjIpSb9jBOt+0jFPk=
X-Google-Smtp-Source: ABdhPJz+K2k8tvHCkfVc6mhXH0D14IYsmur6gSoZwx2Qt/U1hsSxGNi7edFxjP6Kaki0PObxjphDzEJljToPhVRKNTA=
X-Received: by 2002:a9d:730e:: with SMTP id e14mr52936430otk.74.1609771546969; 
 Mon, 04 Jan 2021 06:45:46 -0800 (PST)
MIME-Version: 1.0
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
 <CACRpkdb8z8su9HPkSdnRitVe0unuBDtg0azif19LGb84F=m19A@mail.gmail.com>
In-Reply-To: <CACRpkdb8z8su9HPkSdnRitVe0unuBDtg0azif19LGb84F=m19A@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 4 Jan 2021 15:45:36 +0100
Message-ID: <CAMhs-H9ACwSbJeqRvVOy3w44mhUB9ij1s=idP6xnEDF4LVvQpw@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
To: Linus Walleij <linus.walleij@linaro.org>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Mon, Jan 4, 2021 at 3:39 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Dec 13, 2020 at 5:17 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
>
> > After this driver was moved from staging into pinctrl subsytems
> > some reviews for bindigns and driver itself comes from Ron Herring
> > and Dan Carpenter. Get rid of all the comments to properly be in
> > a good shape before merge window.
>
> Applied patches 1-7 to the pinctrl tree, patch 8 needs to be sent
> to Greg.

Thanks Linus. PATCH 8 should apply directly as it is in this series
also in staging. Greg, can you take PATCH 8 from this series or do you
want me to resend it?

>
> Yours,
> Linus Walleij

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
