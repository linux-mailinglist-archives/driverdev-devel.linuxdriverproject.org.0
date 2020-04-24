Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B338C1B73A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 14:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36D9786FD5;
	Fri, 24 Apr 2020 12:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D6zILIyU-2fJ; Fri, 24 Apr 2020 12:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3A1A85F34;
	Fri, 24 Apr 2020 12:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 984AB1BF348
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94F1D85F34
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N67hzDo7oXSV for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 12:12:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD9C9859E3
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 12:12:16 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id v24so9151367uak.0
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 05:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h0z5ld1WSv+uCtbs/DgylXlcT9i3DCsdVOPXc/hPY7o=;
 b=hwQepM/bXpUDZkqdGyGGTFFGFNmGx+VGOU1xAn2w6kWh7TpIs1TVzUvC7Y8WfV5Avv
 eBW9GDKE1srlE8pjEXdpZU4tXNiz4H7u5pefQcy0FulLXzcxvs79P05uhucqMfCVMQYQ
 7XujRwL1+db0Xik9NlNhqzowuqaVg69dHl2J8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h0z5ld1WSv+uCtbs/DgylXlcT9i3DCsdVOPXc/hPY7o=;
 b=WZAqJ44NOIcdnws4r7w4t14Vgtau++3SkKod22NFQpngDr78ANj5JQ0GxnqWS+udFs
 OvFIhKwucJMZgmXP3eWurVTemrUEcwg1OG5HqALFqCaClm1Tm9GPQtgjm1NaZaYtf5Wx
 JDNLtOXlkZUYr6aomrDqu5jBGQyY3wOeJo74ml/PABaActPtACy1qU8f3tfzW0eYAinY
 s9AxBTHRWZ7/YWCFzZVBcxMEeMolriDz6C1Yyber/qdwFn0ZJ6UHmUyOfhmjP+bb3iyB
 h8P60gw655kUnksPOoFd2vKs9tGNx4l1psW3uuVacmK2nP2Qiz9nFL5WKtmyE3J8NNs3
 C1eQ==
X-Gm-Message-State: AGi0PuaZO/SBjb17xVVYXkaFYfVJ9tiUuVVRBJQSUC4W1dgyseZP7HER
 VqCCMeyWBaKtVj88LFRcVLXr/ofHU7JGTIo4y2GrsQ==
X-Google-Smtp-Source: APiQypJlKxen8G2zO7JAXCkFHrtJVs6fTHB/52uvBVD1WuZXJLx6iNR7mkvt90cHOCFrx1bhwh1bwttJBXrxJvTAToE=
X-Received: by 2002:a05:6102:308b:: with SMTP id
 l11mr6943000vsb.14.1587730335778; 
 Fri, 24 Apr 2020 05:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1582529411.git.xji@analogixsemi.com>
 <a81adcf2e79d440edcb7b3989f31efcb80a6e9ff.1582529411.git.xji@analogixsemi.com>
 <CANMq1KBfB6tXFqYGvr=8fV_bpCV5GbVHeEbRs+fuaZba65-OPw@mail.gmail.com>
 <20200424065124.GA31922@xin-VirtualBox>
In-Reply-To: <20200424065124.GA31922@xin-VirtualBox>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 24 Apr 2020 20:12:04 +0800
Message-ID: <CANMq1KBJ6f74aNAr8BwC3wz8MEeJzwXOQE44gv6C=DNzYmUWCQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
To: Xin Ji <xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pi-Hsun Shih <pihsun@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 24, 2020 at 2:51 PM Xin Ji <xji@analogixsemi.com> wrote:
>
> On Thu, Apr 23, 2020 at 07:55:15PM +0800, Nicolas Boichat wrote:
> > Hi,
> >
> > Just commenting on the mode_fixup function that was added in v7.
> >
> [snip]
> > > +       /*
> > > +        * once illegal timing detected, use default HFP, HSYNC, HBP
> > > +        */
> > > +       if (hblanking < HBLANKING_MIN || (hfp < HP_MIN && hbp < HP_MIN)) {
> >
> > should this be adj_hblanking/adj_hfp/adj_hbp?
> NO, need check original HFP and HBP, if they are not legal, driver need
> set default value to adj_hsync, adj_hfp, adj_hbp.
> >
> > > +               adj_hsync = SYNC_LEN_DEF;
> > > +               adj_hfp = HFP_HBP_DEF;
> > > +               adj_hbp = HFP_HBP_DEF;
> > > +               vref = adj->clock * 1000 / (adj->htotal * adj->vtotal);
> > > +               if (hblanking < HBLANKING_MIN) {
> > > +                       delta_adj = HBLANKING_MIN - hblanking;
> > > +                       adj_clock = vref * delta_adj * adj->vtotal;
> > > +                       adj->clock += DIV_ROUND_UP(adj_clock, 1000);
> > > +               } else {
> > > +                       delta_adj = hblanking - HBLANKING_MIN;
> > > +                       adj_clock = vref * delta_adj * adj->vtotal;
> > > +                       adj->clock -= DIV_ROUND_UP(adj_clock, 1000);
> > > +               }
> > > +
> > > +               DRM_WARN("illegal hblanking timing, use default.\n");
> > > +               DRM_WARN("hfp(%d),hbp(%d),hsync(%d).\n", hfp, hbp, hsync);
> >
> > How likely is it that this mode is going to work? Can you just return
> > false here to reject the mode?
> We want to set the default minimal Hblancking value, then it may display,
> otherwise. If we just return false, there is no display for sure.

Right, understand your argument. I'm pondering if it's not just better
to reject the mode rather than trying a timing that is definitely
quite different from what the monitor was asking for. No super strong
opinion, I'll let other people on the list weigh in.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
