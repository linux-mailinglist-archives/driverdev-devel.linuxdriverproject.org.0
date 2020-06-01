Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D681E9C74
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 06:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5C2C204C7;
	Mon,  1 Jun 2020 04:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2Q6p9-XvZNF; Mon,  1 Jun 2020 04:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC8892037E;
	Mon,  1 Jun 2020 04:20:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 553401BF426
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 04:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2017120349
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 04:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0osfMhw98htI for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 04:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 45EDD2033D
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 04:20:10 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d10so2889018pgn.4
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 21:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x8a609a5qZV/8uK75Z+5pZGlJvWxTwewnSI1kRcruvg=;
 b=EcXQ31HMxvgQLQA3X19WLJf7eLN+UICimuf8ahojOCfjxhipVAcPXK6rUNSLcFoWM7
 zCy9sXmj/KUmWr0BQpFzAMQhWpIMOQ6OvYkeLH+SRjwIhwVvpjQZsBv21/QRCGKjODHM
 qSHaOnht3ufj3s18UykNubcE3++uJC4wO0C9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x8a609a5qZV/8uK75Z+5pZGlJvWxTwewnSI1kRcruvg=;
 b=KJEcd/teyAK3XNc7JD/hKwZ/bQpdRViIUgoKoAqtDmsmuvZhvAuKqfxtZ/uu9ukWl2
 iFE5Uwd7MNa/q60a3bZsgdU6M6Due8mLJb/Q7Dr/PrdWsB9xoc2oHMLzJh/oD1JfAv5x
 XFwCVc3MAvwgDXBKh23pdoO3vuJeD6SlR73nWtUoX4dIjGTEHYw7VgKyMXsbHic6Cxdr
 GuQVI6LTXOtYGc+YFpsc6BqIyBBTyqIUClr0kKI0o46g5+6HItLdUHKDPqGYPtA3y2HJ
 MsYImHMO7hswyYRrB4QLwXxG17yktzwjXFBI0ab8wEZeH0asrUUZQDDnBVzc+G5Wzw0i
 4iGQ==
X-Gm-Message-State: AOAM532DJaxsadBtWzhxdpN6iomEVJwqWcr42CXPc0NSyZYexI93zxtN
 QAgc5MjXTiwhcLIgoqws5VIKckkskQwbvaU8Z70vXvlg454=
X-Google-Smtp-Source: ABdhPJwDkiEP8Fr2F3U+zwZn2Cnk0c+q57D8FlJ0+ONjXpxJhdRbpWqi0aGoLKsD8uIuEDU5EshV/8yDSE1Eqot3/Qs=
X-Received: by 2002:a92:d908:: with SMTP id s8mr18767942iln.283.1590984875133; 
 Sun, 31 May 2020 21:14:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589511894.git.xji@analogixsemi.com>
 <3946984ac1024b53b72c2eb39ee41967a2bf9c3d.1589511894.git.xji@analogixsemi.com>
In-Reply-To: <3946984ac1024b53b72c2eb39ee41967a2bf9c3d.1589511894.git.xji@analogixsemi.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 1 Jun 2020 12:14:09 +0800
Message-ID: <CAJMQK-hkrsgbvi91=uBhPfn0scwTSh3OJBGLcy9tC3GYiW1i9Q@mail.gmail.com>
Subject: Re: [PATCH v11 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 2:53 PM Xin Ji <xji@analogixsemi.com> wrote:

> +
> +static int anx7625_bridge_attach(struct drm_bridge *bridge)

Latest drm_bridge api:

int (*attach)(struct drm_bridge *bridge,
     enum drm_bridge_attach_flags flags);

https://elixir.bootlin.com/linux/v5.7-rc7/source/include/drm/drm_bridge.h#L70

> +{
> +       struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> +       int err;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
