Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0408D1BBAAB
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 12:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D5A886248;
	Tue, 28 Apr 2020 10:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWBC0M_2vDJB; Tue, 28 Apr 2020 10:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F287D86204;
	Tue, 28 Apr 2020 10:05:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41D721BF277
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 10:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DFCB86406
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 10:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXxX0+tpF7zO for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 10:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06EA686252
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 10:05:12 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x4so2065772wmj.1
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 03:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=l+k7yFMhMisNWSRZhvrwWfroBahbWYYcttXSTYKeIwQ=;
 b=jibHKywqEOHP7s5Uq17E8ygefJpPB+KB36cR9akz/wwH6GF74Ovy8y7nrJQgKD/v86
 +ADgY4xegjPKGLTcL6BJ0oyxEBc/3ebLDa6cz/R1bKVedxmKa2fGhgObMZIWZ0aSYDV9
 qIlGzv7MRvovl3lA5TeZpfsQe5hz34ij7dOQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=l+k7yFMhMisNWSRZhvrwWfroBahbWYYcttXSTYKeIwQ=;
 b=QA50eln4p800naByTAycOC+RWipXto09k3jHyrkujk9sFcaPJSk+Ka7YPUuNTt+oy7
 3bHDgcs5bdt5s9ZkOhJogfYV9mOtllgNG3IygaMGck2d1IX4jlAFC1NSV4ib5dxCdpnB
 N39VEJ5f9ptpkvjXp5fNwbTEunEXhbslB9YWsWUnAh5wkHVR61N8cdmVXScbnZ5FIWxw
 3TnqTpTHrI8g40g1vgN/SGyMoLLRzLYd0gcXMWsbCEX3ApQo21UCxGx6uEwxXzUKr9Mx
 xtSftQg4imZTX3Xr9w1VWpuCYjT0ew7EZchvfOLrN2rh1XYZztqORksmmdb8Cw0jNLV1
 Y/BQ==
X-Gm-Message-State: AGi0PubSAt+OxiaexGPoTTMVcPjZ55mC6rX8fHZFYUq+ymqBHpAA+wWq
 tobaaezqfzsJ9xfHfL0IScD/Qw==
X-Google-Smtp-Source: APiQypKQTCBtHEwl9qfvTCZEBaYghpXpXAL7yjy18ziiEevrdg+jQUjp5/w1QV7rvuqsCLOMh3LRRQ==
X-Received: by 2002:a1c:dc8b:: with SMTP id t133mr3745031wmg.117.1588068311327; 
 Tue, 28 Apr 2020 03:05:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 138sm2786040wmb.14.2020.04.28.03.05.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:05:10 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:05:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v7 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Message-ID: <20200428100508.GD3456981@phenom.ffwll.local>
Mail-Followup-To: Nicolas Boichat <drinkcat@chromium.org>,
 Xin Ji <xji@analogixsemi.com>, devel@driverdev.osuosl.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Pi-Hsun Shih <pihsun@chromium.org>,
 Sheng Pan <span@analogixsemi.com>
References: <cover.1582529411.git.xji@analogixsemi.com>
 <a81adcf2e79d440edcb7b3989f31efcb80a6e9ff.1582529411.git.xji@analogixsemi.com>
 <CANMq1KBfB6tXFqYGvr=8fV_bpCV5GbVHeEbRs+fuaZba65-OPw@mail.gmail.com>
 <20200424065124.GA31922@xin-VirtualBox>
 <CANMq1KBJ6f74aNAr8BwC3wz8MEeJzwXOQE44gv6C=DNzYmUWCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANMq1KBJ6f74aNAr8BwC3wz8MEeJzwXOQE44gv6C=DNzYmUWCQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
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
 Pi-Hsun Shih <pihsun@chromium.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Jonas Karlman <jonas@kwiboo.se>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Xin Ji <xji@analogixsemi.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 24, 2020 at 08:12:04PM +0800, Nicolas Boichat wrote:
> On Fri, Apr 24, 2020 at 2:51 PM Xin Ji <xji@analogixsemi.com> wrote:
> >
> > On Thu, Apr 23, 2020 at 07:55:15PM +0800, Nicolas Boichat wrote:
> > > Hi,
> > >
> > > Just commenting on the mode_fixup function that was added in v7.
> > >
> > [snip]
> > > > +       /*
> > > > +        * once illegal timing detected, use default HFP, HSYNC, HBP
> > > > +        */
> > > > +       if (hblanking < HBLANKING_MIN || (hfp < HP_MIN && hbp < HP_MIN)) {
> > >
> > > should this be adj_hblanking/adj_hfp/adj_hbp?
> > NO, need check original HFP and HBP, if they are not legal, driver need
> > set default value to adj_hsync, adj_hfp, adj_hbp.
> > >
> > > > +               adj_hsync = SYNC_LEN_DEF;
> > > > +               adj_hfp = HFP_HBP_DEF;
> > > > +               adj_hbp = HFP_HBP_DEF;
> > > > +               vref = adj->clock * 1000 / (adj->htotal * adj->vtotal);
> > > > +               if (hblanking < HBLANKING_MIN) {
> > > > +                       delta_adj = HBLANKING_MIN - hblanking;
> > > > +                       adj_clock = vref * delta_adj * adj->vtotal;
> > > > +                       adj->clock += DIV_ROUND_UP(adj_clock, 1000);
> > > > +               } else {
> > > > +                       delta_adj = hblanking - HBLANKING_MIN;
> > > > +                       adj_clock = vref * delta_adj * adj->vtotal;
> > > > +                       adj->clock -= DIV_ROUND_UP(adj_clock, 1000);
> > > > +               }
> > > > +
> > > > +               DRM_WARN("illegal hblanking timing, use default.\n");
> > > > +               DRM_WARN("hfp(%d),hbp(%d),hsync(%d).\n", hfp, hbp, hsync);
> > >
> > > How likely is it that this mode is going to work? Can you just return
> > > false here to reject the mode?
> > We want to set the default minimal Hblancking value, then it may display,
> > otherwise. If we just return false, there is no display for sure.
> 
> Right, understand your argument. I'm pondering if it's not just better
> to reject the mode rather than trying a timing that is definitely
> quite different from what the monitor was asking for. No super strong
> opinion, I'll let other people on the list weigh in.

Yeah mode_fixup is supposed to be used to adjust the mode in intermediate
stages (e.g. if you go from progressive to interlaced only at the end of
your pipeline or something like that). It's not meant for adjusting the
mode yout actually put out through a hdmi or dp connector. For fixed
panels adjusting modes to fit the panel is also fairly common, but not for
external outputs.

Since this is a DP bridge I'd say no adjusting, just reject what doesn't
fit.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
