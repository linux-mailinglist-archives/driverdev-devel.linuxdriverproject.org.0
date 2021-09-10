Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA6407025
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 19:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88A24849BC;
	Fri, 10 Sep 2021 17:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KtF3yhF8eV-I; Fri, 10 Sep 2021 17:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22CB5849BE;
	Fri, 10 Sep 2021 17:01:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 341BA1BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 238F0404AD
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMniOoxxqVrh for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 17:01:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 457924048E
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 17:01:10 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id w4so4222399ljh.13
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=luCCewcUIVNg8tXSXyMu+5nRZ0dHUI4Fwjbm5S01Y2U=;
 b=h/QNpQlwNofwoaKRkT1y6WQ8Nj4qmA7BfaY2VsAPMTbG40AGeaaeyf3FLUw+08hs0v
 77NUqe5VPFeNUjTEnBCejOW5YBoeSNeuxb+55W5iujMy8nE4N3FaPbzUlZsX5iC5b/1d
 zVe/YtcP5cvHZYDsFM44CbUNq42lWo+MGKyntqFU1wUy9bnWSOJdMPMHXy1L8pF2FFIR
 V+yv4ws/BRiZ2dTJZ4IE4YHdrG7RLWlfJaoScAsqtMmyC4g9ydQXkjdFCcOUS4LNnJ1c
 8hzRhN8G7+flxsbK1SVuGW7+Nob4+l6LXEP2YGe2Ty3bDq2zLVHLIataaU9aQE3TrH6L
 xIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=luCCewcUIVNg8tXSXyMu+5nRZ0dHUI4Fwjbm5S01Y2U=;
 b=iaw3aMr8Vj7Q0/CTsml04V26fHBvxDlGn/0YC+ps5+Xoc91L7vZr8I4h5foEg0azjN
 qT6pMIiQV/XTOKjOSfjzIRwthNDTXJ7fo0GFA1ku2g/9oamyIESHJivBwWFefOERzB+i
 qHvYGELgPP3uKqL34iuPgATkg/DVLvEZcZ0cUFA5xY6qmXmNwqEnd3CXtMjibxyGeA6O
 E/4VDt7s/83KmxfCgf3Ap3fPXIJnxD4X7M4fyjMMwF9pEOuDYI9dVd9WgOCMB0w+yju9
 PGMI3X4lHwV+80JBvgXk/4kqhohssU2jVmmfqQHnjh2TUpRcBC/xnFDch4UL1PIjqEXW
 2CAw==
X-Gm-Message-State: AOAM532sNzj60I5rJLRzfiSYht0zTEpjiJTKVMPxd8cTMtBoqTtRYG9W
 MgifmPz8hVvA7DNtUNlVkFY=
X-Google-Smtp-Source: ABdhPJxHbcevlixgrIhNLPgaCEkv/B5wKSFIEfWrJ9pDMO6apJ9tRDvioHegTujD4S5XJiv3nNj8oA==
X-Received: by 2002:a2e:5758:: with SMTP id r24mr4873227ljd.432.1631293268254; 
 Fri, 10 Sep 2021 10:01:08 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id 3sm629840ljq.136.2021.09.10.10.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 10:01:07 -0700 (PDT)
Date: Fri, 10 Sep 2021 20:01:05 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 02/31] staging: wfx: do not send CAB while scanning
Message-ID: <20210910170105.6lbdnonxyfoo6kbb@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-3-Jerome.Pouiller@silabs.com>
 <20210910163100.n6ltzn543f2mnggy@kari-VirtualBox>
 <2897625.p8pCB6X8cM@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2897625.p8pCB6X8cM@pc-42>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 06:54:36PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 10 September 2021 18:31:00 CEST Kari Argillander wrote:
> > CAUTION: This email originated from outside of the organization. Do not=
 click links or open attachments unless you recognize the sender and know t=
he content is safe.
> > =

> > =

> > On Fri, Sep 10, 2021 at 06:04:35PM +0200, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > During the scan requests, the Tx traffic is suspended. This lock is
> > > shared by all the network interfaces. So, a scan request on one
> > > interface will block the traffic on a second interface. This causes
> > > trouble when the queued traffic contains CAB (Content After DTIM Beac=
on)
> > > since this traffic cannot be delayed.
> > >
> > > It could be possible to make the lock local to each interface. But It
> > > would only push the problem further. The device won't be able to send
> > > the CAB before the end of the scan.
> > >
> > > So, this patch just ignore the DTIM indication when a scan is in
> > > progress. The firmware will send another indication on the next DTIM =
and
> > > this time the system will be able to send the traffic just behind the
> > > beacon.
> > >
> > > The only drawback of this solution is that the stations connected to
> > > the AP will wait for traffic after the DTIM for nothing. But since the
> > > case is really rare it is not a big deal.
> > >
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > ---
> > >  drivers/staging/wfx/sta.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> > > index a236e5bb6914..d901588237a4 100644
> > > --- a/drivers/staging/wfx/sta.c
> > > +++ b/drivers/staging/wfx/sta.c
> > > @@ -629,8 +629,18 @@ int wfx_set_tim(struct ieee80211_hw *hw, struct =
ieee80211_sta *sta, bool set)
> > >
> > >  void wfx_suspend_resume_mc(struct wfx_vif *wvif, enum sta_notify_cmd=
 notify_cmd)
> > >  {
> > > +     struct wfx_vif *wvif_it;
> > > +
> > >       if (notify_cmd !=3D STA_NOTIFY_AWAKE)
> > >               return;
> > > +
> > > +     // Device won't be able to honor CAB if a scan is in progress o=
n any
> > > +     // interface. Prefer to skip this DTIM and wait for the next on=
e.
> > =

> > In one patch you drop // comments but you introduce some of your self.
> =

> Indeed. When I wrote this patch, I didn't yet care to this issue. Is it
> a big deal since it is fixed in patch 27?

No for me. Just little detail.

> =

> =

> =

> -- =

> J=E9r=F4me Pouiller
> =

> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
