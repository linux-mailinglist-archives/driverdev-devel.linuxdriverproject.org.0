Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D4D2B8F11
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 10:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 060C7873D2;
	Thu, 19 Nov 2020 09:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P6EpKZ+Vudi3; Thu, 19 Nov 2020 09:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 50D8B873B3;
	Thu, 19 Nov 2020 09:35:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF0A51BF31A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 09:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB8DD86A4F
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 09:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HipCepSwn0xN for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 09:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41C9E86A47
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 09:35:50 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id h16so4662373otq.9
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 01:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wM+ecfsKrvO3rc1/geqb60FiAxjMBeRileH+PC0H49Y=;
 b=ZrL/jWDo+iFZh4HMoSucR3OspDcVXtUCX0SnrbDlA3+pS+5pP2E5Ma4ZKNV7090uiO
 ygn2eGrRc7DSi/F9Z6WMx1xsrPhzGu5Ihulp7YPeA0sGulwwJUckXM7oS5WEzAjSucmi
 b8+58YZezQiRbq8KG3yYzvc2jbOqMxmknF8NXj8hUnpk1OoQhOmNA5LRbPW0+S3B4o26
 gtnYedDZVsTfTx93Ehd8jsMXSB3FjktBifq81Gk7Q3THOMW6ajd6o5GXJ4BmVTRQ9z9F
 78Y3OSGwz5nD+E6oUGEvDjf2j8gYUsKq6snE7tPRtGl5S1PIjy/ONVIlpuuTguWL452R
 SjRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wM+ecfsKrvO3rc1/geqb60FiAxjMBeRileH+PC0H49Y=;
 b=rb1QY5xMVyTS0jTEbuKF+ZY7akltBCH+j8TsVTLrNM4o6T7+xqYf8nfG20knThzHD5
 pe4S05UfkH30tS3ZVsGrlta991JXNrYmS/1r690JEgo6gfYnOsOWRPAfFE51oX72Fvvi
 T5TtV463fdz6w6kBw0hv0uPHju7bSfbmrrhHyDaxzQ/i4A/eoTtL8IIrnzry6k76AVWO
 pQ9GlcSagqK9RHGYXN1EE0jY5y02ogBin/VSBgnWSCKEzwjTEk3CfwdZZpXCT8a/XrDa
 Few1zBPAgX1hsGpt7dkS+2Vox8aWqxevFH5rVbtIZPUsFPfuaZBMqbljT1FLRcmRabO/
 9ouw==
X-Gm-Message-State: AOAM533Q26HFwH5eslEQsami45YOWYDAvkIBSVVYH3/3jtKfnVHqWAml
 gTwmAMFLpkqqItU5ik48Nr1XceFXTnhEf5eT8Bk=
X-Google-Smtp-Source: ABdhPJykfMo2H23O1RLI3nZpHLSywArPKNbXytZU480c48TgWX4LYj4Md4b3bFUcty22u9/7rLAhNFml78/iIJqE6lU=
X-Received: by 2002:a9d:4704:: with SMTP id a4mr9303980otf.236.1605778549518; 
 Thu, 19 Nov 2020 01:35:49 -0800 (PST)
MIME-Version: 1.0
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-4-sergio.paracuellos@gmail.com>
 <CAJsYDVL1ZYc=OaCS7_NNu27aUKmpHp63nPuVq1V8xp8s6Vguxw@mail.gmail.com>
In-Reply-To: <CAJsYDVL1ZYc=OaCS7_NNu27aUKmpHp63nPuVq1V8xp8s6Vguxw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 19 Nov 2020 10:35:38 +0100
Message-ID: <CAMhs-H8axFToyEYUwtc1ZGMd9mOb3ixnha_trJ7C5yFz06xdbQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] clk: ralink: add clock driver for mt7621 SoC
To: Chuanhong Guo <gch981213@gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Thu, Nov 19, 2020 at 10:32 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Hi!
>
> On Fri, Nov 13, 2020 at 11:46 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > [...]
> > diff --git a/drivers/clk/ralink/Makefile b/drivers/clk/ralink/Makefile
> > new file mode 100644
> > index 000000000000..cf6f9216379d
> > --- /dev/null
> > +++ b/drivers/clk/ralink/Makefile
>
> Why ralink? The clock design of mt7621 doesn't seem
> to be part of ralink legacy stuff, and ralink is already
> acquired by mediatek anyway.
> I think it should be put in drivers/clk/mediatek instead.

I don't really know. It seems in that directory only arm arch related
code from mediatek is included... but let's see what other people
think about this.

>
> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
