Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2522C2964CB
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 20:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16A432042C;
	Thu, 22 Oct 2020 18:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agCp7zyl0yXN; Thu, 22 Oct 2020 18:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 997C8203DC;
	Thu, 22 Oct 2020 18:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9DCE1BF357
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 18:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A132D86D9F
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 18:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cPEjcuxlen6f for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 18:45:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6544686C8C
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 18:45:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id w21so1706561pfc.7
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 11:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PJ+uKLoDbt4Kdg8ImByLjA8Njsk3WlOLgUgCbpkC9zk=;
 b=A8jUhEN65PHD6v/QKxHHZH30h3Bes875e+6+YJN1oRjC7MZxpv05pacosmi/+65EBk
 Dx8XXnOnRTnBVHVQ5JmYEycve17jrdZVst0f6IsgoRtTyydrVVoQEhhVNi4cbk+tod5A
 MNLeNR+TUQSkY5iFpk/xW8fcCvmfbFIEIsWzj8l/+MZ2GaZLFfk/oasxZ10SVZDdetqd
 m7cKjO1GDgNygAgXbqYg3qwViz8gUMo2l9iN/xTV7hcM7OzUJgHiVxn2xn1Ix11Xn3Mj
 w5xyxZzMqJdXhyvSL/CCT5pFyt+G/Ry3aTxphw+1BfRgwJ6o1PZGhL3mLbVF7NEE1HQo
 stlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PJ+uKLoDbt4Kdg8ImByLjA8Njsk3WlOLgUgCbpkC9zk=;
 b=ZC2JjxuhQiXiKqSWJ1qszGyLXGfDju9GyjtWMEio74a1lwlCp/HZGNixL2Kjq5QqSS
 CGdY60h22EADoYP//A8NetuIcl/BKneH6LtSQhumUA+K9LbIRLNQMmKTBkEZu6Fj/H0h
 lqUZEHpEpXOP+OD1DL9Ll2iCV6+etbKJY1j+53JeWhihdQso6x0rMeuCcIbC/E26T6Qr
 j93qiSZ1POY4bRMguPBp/2xXJ8+OXYuje8Cj+ncgfs5gZ1HXoHveA/XucNbDIXbFo98H
 3wfmiLElZomDpOXuK9BpjGvzL0/sQWq1Oy78lNCbxoSGMFEYE4G8DU7iDRDgVCi3Ikrg
 P1QQ==
X-Gm-Message-State: AOAM533XIYYvQZjPBH9W8E6bveKV1L7zUl+Ev25k1wqpPDkGOjJwiLMI
 4E5b6LTisYGqT20R+swMSa7LmRaslrKEVbCNeBo=
X-Google-Smtp-Source: ABdhPJwNbfbJKg7L/+F+lSBYE2PF207sJKCE67fjAwiCaIsXfyZycJr3U4/+t0LHsJes+amoJNW5cfEG1vmDYyxED/U=
X-Received: by 2002:a05:6a00:22c2:b029:156:543:7c1d with SMTP id
 f2-20020a056a0022c2b029015605437c1dmr3749000pfj.40.1603392352903; Thu, 22 Oct
 2020 11:45:52 -0700 (PDT)
MIME-Version: 1.0
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-2-nsaenzjulienne@suse.de>
In-Reply-To: <20201022155858.20867-2-nsaenzjulienne@suse.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Oct 2020 21:46:41 +0300
Message-ID: <CAHp75Vej4UfsySRB6qXL7fFN7SjnTjy=p4Xkn1xBO0YOFy-kcQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/10] firmware: raspberrypi: Introduce
 rpi_firmware_put()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
 linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 9:06 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> When unbinding the firmware device we need to make sure it has no
> consumers left. Otherwise we'd leave them with a firmware handle
> pointing at freed memory.
>
> Keep a reference count of all consumers and make sure they all finished
> unbinding before we do.

Wait, if it's a device, why do we need all these?
get_device() / put_device() along with module_get() / module_put()
should be sufficient, no?

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
