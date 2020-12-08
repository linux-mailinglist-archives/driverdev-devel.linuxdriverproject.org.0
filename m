Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EA02D26C9
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 10:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2304587497;
	Tue,  8 Dec 2020 09:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4e4Vtwlb72nv; Tue,  8 Dec 2020 09:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25EDA873B5;
	Tue,  8 Dec 2020 09:03:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB6C21BF3AE
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7B71873A3
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VIzx-YSn20kg for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 09:03:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9D798718E
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 09:03:00 +0000 (UTC)
Date: Tue, 8 Dec 2020 10:04:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607418180;
 bh=3d/Fkn9H5Rqs73iZAbPEejt4Yj7ve3ULsCzHc7JQQWw=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=cuvRUmogdGcCJ/CivpcOegXqLAtH/YfWt6nOpXr7y71sYCPPeVKZ32UT8A+DSKiWW
 x/Wa8ormQofW9NwuO6CWi8Ipf0uJZuNtlCRiXX1u1YklBJMUgYgyzvQsQ1h26xkEMB
 VP9zMeEvTCkOrSYue775OsmlRmqiHdc06jyfHH+8=
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/2] pinctrl: ralink: add a pinctrl driver for the
 rt2880 family
Message-ID: <X89BiDacLNQ7ZQOH@kroah.com>
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
 <20201208075523.7060-3-sergio.paracuellos@gmail.com>
 <CACRpkdY_Me8kO-Fa-vUspJNv+2vy0fswTM-RaUoaZJ5rCfuynA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY_Me8kO-Fa-vUspJNv+2vy0fswTM-RaUoaZJ5rCfuynA@mail.gmail.com>
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 08, 2020 at 09:21:31AM +0100, Linus Walleij wrote:
> On Tue, Dec 8, 2020 at 8:55 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> 
> > These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> > pin individually, these socs have mux groups that when set will effect 1-N pins.
> > Pin groups have a 2, 4 or 8 different muxes.
> >
> > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> 
> Greg I'm happy if you just apply this right now for v5.11, as Sergio
> is obviously on top of things and the DT bindings will get there
> eventually so I don't see any need to hold back the de-staging just
> waiting for patch 1 (which I will eventually apply directly anyway).

Now merged into my tree, thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
