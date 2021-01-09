Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4AF2EFE12
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 06:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68A1886D65;
	Sat,  9 Jan 2021 05:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cuThM-iFfQua; Sat,  9 Jan 2021 05:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E8AE86D19;
	Sat,  9 Jan 2021 05:28:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 374FF1BF841
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 05:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 310E32045E
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 05:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05k1zJDdybK0 for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 05:28:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 by silver.osuosl.org (Postfix) with ESMTPS id 80B81203DE
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 05:28:33 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id u12so12584779ilv.3
 for <devel@driverdev.osuosl.org>; Fri, 08 Jan 2021 21:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SGJ+rw+W4GURXrNK2pmbCTTGByeuvg3W5dm2nsGXVqc=;
 b=e6nx/kwcJM7VPuCBH5IWplKbkraC/qn24FmETITfB+AdMox+nSM0xHvvv708lOonRF
 DLeZ5Rv5WL3zZH7s3BMkI6yYsuPJPviDM+EONQoJBoZsQknXIkUtDrm1XLtJ98j2DZZU
 +A9uP+JUBpcUhflklMJS0Udebfu+ItwwQMHHm8CPwnlFVGUHruVn3bxs+ieOXxcQtbBm
 PZUdp6y2kDD/E3NJSdlQVlwg9ALQ3m1kV0xWLmtyseEI1E1xXowMUAqcS9rZG3ibxGkw
 j0jKB8OMKpdsZyCG5jGmwn2n+7/kV+Q6Svk1AVRJBlVrV2y8XOV/IJGVQ7nKPPt5yRdK
 Je6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SGJ+rw+W4GURXrNK2pmbCTTGByeuvg3W5dm2nsGXVqc=;
 b=uR+f2SvjdoB75hwOBiE7J1f2joO5O42neoS8STCKucTfBtyxlUlyNFvSxllBQeCDec
 Qwb3WmrXkzGnXuqHjC4QNIgbECUetiG9KJQ5+hsoAW3oQuP/uc1Npb+RCDrDI9O6CnJE
 CwhZPIwVc9xFUP+LKMvOBW4Gra648Lcdfw2DhmpY2h1TPvzjuLwVfY3aaCCBJKxsbJkv
 IC1P2RGIokSPftHpN122onFlvxSjYhOcDAFx0pjUzl47S9i7WrrXk9ZIityvzJwIlBKF
 67N7UA4K7PltHflRYCSt8EBXBSd0+R2lp7oTgUTyUXVgunvJlr/Bq1Rvsyc4yxiRUtlt
 /7yQ==
X-Gm-Message-State: AOAM532maQesSpO+5umu7sOgMBlBEI/Pm3vDefvqR5euYbjiRIH9GzOJ
 POkBoM+8ciVymuS9CVnTtQYq9Ubpnq00xJ8VJxQ=
X-Google-Smtp-Source: ABdhPJwXmdm0hnvBNMln0jDzDSyCadfT8/QRKEJtLxxdHSdh9mYMK50aw50mzokAvARDzxSWoWjR2ryTm1PXaEOQz5w=
X-Received: by 2002:a92:d40a:: with SMTP id q10mr7326896ilm.20.1610170112894; 
 Fri, 08 Jan 2021 21:28:32 -0800 (PST)
MIME-Version: 1.0
References: <20210108025155.31556-1-dqfext@gmail.com>
 <X/ijjWpq4eLQEDot@lunn.ch>
In-Reply-To: <X/ijjWpq4eLQEDot@lunn.ch>
From: DENG Qingfang <dqfext@gmail.com>
Date: Sat, 9 Jan 2021 13:28:30 +0800
Message-ID: <CALW65jaWwhiWbr1kcEW3OZEUcGYUO9_vmT7PhA+u4SvVGdEgRQ@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: remove obsolete switch node
To: Andrew Lunn <andrew@lunn.ch>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 NeilBrown <neil@brown.name>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rosen Penev <rosenp@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 9, 2021 at 2:25 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Jan 08, 2021 at 10:51:55AM +0800, DENG Qingfang wrote:
> > This was for OpenWrt's swconfig driver, which never made it upstream,
> > and was also superseded by MT7530 DSA driver.
>
> What about
> Documentation/devicetree/bindings/net/mediatek,mt7620-gsw.txt ?
> Should that also be removed?

Yes.

>
>        Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
