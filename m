Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB64634D68A
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 20:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB518607CD;
	Mon, 29 Mar 2021 18:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkQiiDXj8BRH; Mon, 29 Mar 2021 18:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 040146072A;
	Mon, 29 Mar 2021 18:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7661BF9C8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 18:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BEF84032E
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 18:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=poorly.run
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Szu7iwBJjcOi for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 18:02:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8B2340321
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 18:02:45 +0000 (UTC)
Received: by mail-io1-xd34.google.com with SMTP id n198so13739554iod.0
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 11:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Au5y7OoRawkUEJFPbHpW7802nDwRo0nj5nxIyw0Dfa8=;
 b=Zyv3esmbX3USPfY9NAG7q5qJ25C5cUmKUK84xtlRwZWvmEl9I9Vqc5cxJLsk1TUGi2
 MHGmzk+I9z1q7ecO1VPAa36DUoII1M34Y5/YSt73CTOgG2rthe8T+jq+pM+TT+wZ/ouH
 wMDgcJ7f8eOshtxjUXzmZ8WIqfIJyGirgIKQ66p9iWswBXj2B+Cdaff6XyJ3OyCeiqR/
 R1CRqn/hHZAOAEOFQoDV936hEf9CcA2fqSS7viWb85sEjL1LveJTJQkbxoO10OIgo98T
 oJOqBG0G/D261zEsXroGXVguWv00cRCPbeGpnOpJtvg4yLd69XejIXoU5GJNJxjD64P/
 VA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Au5y7OoRawkUEJFPbHpW7802nDwRo0nj5nxIyw0Dfa8=;
 b=s1DtVVtWcEWqNOJLJCIt20J8MqnUqGpZ/2c/b5CIkcR4qaSZ8HOt2QJK4B59MV01L8
 hcmmFficlRzWbK1Fvx+4dtf/0HCV+UgOO1YWfQg3iLG4Ttt5u3Uia2BNin4pGmY9fcHd
 WTSWacwU4CQ02kETfbHxLEuMqQ4FudXmwTaBANFwhw6Rzckhxm8/uLcxl8ZVAgh+s7d3
 kSAnLextoqzCOaMFD/py8z0yn/fr2FG6keih823QDumfQ/Rh4Og95DVHldCl6vsiKNJP
 w6mUTIsLjwQ14bQQ+AVrgWBSMn/96i3jWLwzM7WttdN6DDu3g6ZhTBkethqUjcifplKz
 dLQg==
X-Gm-Message-State: AOAM530O0+fQGeQ088k+I5Xsy8bSZvf+dKyzriX7WsbX0LDCVVWui9tL
 6lV1LZxMInI5Lb7xtBT4Jb8dRDFRwgPYrWGRXPJojg==
X-Google-Smtp-Source: ABdhPJxZkJRqw/QeGv+RrSKRBGLc4oFkV6J1+/TGuuqVGXQHnaoEB7kMLbeNK26s3AKHKzDMmyeObLY3VW0lugoGEc8=
X-Received: by 2002:a05:6602:1c9:: with SMTP id
 w9mr20873871iot.201.1617040964939; 
 Mon, 29 Mar 2021 11:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616135353.git.xji@analogixsemi.com>
 <189a637c87827f78c433a053e3c2129ebec73188.1616135353.git.xji@analogixsemi.com>
 <CAMavQKLN04F2rzu7J121N4GvQKh7kq9yXGk+fBSUjsC2nbiSiA@mail.gmail.com>
 <20210329102710.GA1930154@anxtwsw-Precision-3640-Tower>
In-Reply-To: <20210329102710.GA1930154@anxtwsw-Precision-3640-Tower>
From: Sean Paul <sean@poorly.run>
Date: Mon, 29 Mar 2021 14:02:08 -0400
Message-ID: <CAMavQKJHakp0ZfHFEy77r8wHY+3uaP-6Ab2ren6vA46njpjx3g@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] drm/bridge: anx7625: add HDCP support
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Sam Ravnborg <sam@ravnborg.org>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Zhen Li <zhenli@analogixsemi.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>, LKML <linux-kernel@vger.kernel.org>,
 Foss <robert.foss@linaro.org>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Sheng Pan <span@analogixsemi.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Bernie Liang <bliang@analogixsemi.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 29, 2021 at 6:27 AM Xin Ji <xji@analogixsemi.com> wrote:
>
> On Thu, Mar 25, 2021 at 02:19:23PM -0400, Sean Paul wrote:
> > On Fri, Mar 19, 2021 at 2:35 AM Xin Ji <xji@analogixsemi.com> wrote:
> > >
> > > Add HDCP feature, enable HDCP function through chip internal key
> > > and downstream's capability.
> > >
> > > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > > ---

/snip

> > >  static void anx7625_dp_start(struct anx7625_data *ctx)
> > >  {
> > >         int ret;
> > > @@ -643,6 +787,9 @@ static void anx7625_dp_start(struct anx7625_data *ctx)
> > >                 return;
> > >         }
> > >
> > > +       /* HDCP config */
> > > +       anx7625_hdcp_setting(ctx);
> >
> > You should really use the "Content Protection" property to
> > enable/disable HDCP instead of force-enabling it at all times.
> >
> > Sean
> Hi Sean, it's hard to implement "Content Protection" property, we have
> implemented HDCP in firmware, it is not compatible with it. We don't
> have interface to get Downstream Cert.
> Thanks,
> Xin

Hi Xin,
I'm sorry, I don't understand what you mean when you say you don't
have an interface to get Downstream Cert.

The Content Protection property is just a means through which
userspace can turn on and turn off HDCP when it needs. As far as I can
tell, your patch turns on HDCP when the display is enabled and leaves
it on until it is disabled. This is undesirable since it forces HDCP
on the user.

Is it impossible to enable/disable HDCP outside of display
enable/disable on your hardware?

Thanks,

Sean

> >
> > > +
> > >         if (ctx->pdata.is_dpi)
> > >                 ret = anx7625_dpi_config(ctx);
> > >         else

/snip
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
