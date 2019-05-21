Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3474925653
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 19:06:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2635086B92;
	Tue, 21 May 2019 17:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOmXcc6A7wGf; Tue, 21 May 2019 17:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D11AD8691B;
	Tue, 21 May 2019 17:06:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A82D1BF57F
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 576BB84FA4
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUJj5r584jHu for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 17:06:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D3E5F84F8B
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 17:06:51 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id u199so13368560oie.5
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 10:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DepsFwsb9lkjjmxtM22xms6DJ95kq6d7Pbuq4OqECAc=;
 b=TcSWYAwICafV+txluRy/7vKaRAad1DAY1lz4mpihseezFMb5NRnxsZD+8iDVu3FZB6
 pi5Hw9qEADP/3/GqCwLtF0grO5aJw9lps5WmJNEyCOqLMZ8B+j+9PO3XlO+FUXNRcrSD
 9hZ+Mk5f5Di1ZhVWW86yzuiGlVVa4qKbvBuLdIeAYI1CByBBJes3EdcNqQSevN+e0b5Y
 An+BrCC1DwZl8Uh2vLBt0XKtvl1b5B8gQQ8fhhRvTjtmDCf9+RiAYTjBJhWdRrhVusx9
 ZGWcMMc3Vuq44PfJXwPYNeNFmnk179KaDz6ysOPshDmfndG2FpPgcr8AyPvyoxPFCUv+
 XDeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DepsFwsb9lkjjmxtM22xms6DJ95kq6d7Pbuq4OqECAc=;
 b=sseFlxBJuM2GbQmvYVIISTRI0KCjhwgutsnas0Lh+paKd73YsIgOozXM8TUSfI/P65
 D72PGlQ1X0wDXVll/YSwTLhwy6RKe2ujHmtqPBvAFEMrkT7l3mAqjD7frJiyHRqy85Za
 ANQ5NBQeW9OmSiEaB6ZWMhbdujKxoTjiXzuK0TNBvRuXKr3vtQHpvBd5SZPZBV9AqveU
 muSUZx0OSss5+pfuPxjCGZ4VKzVIbMf+ET76QHuNTNEdFLqNjzRX/tBu+z0BgrD1e2Hi
 HRZ0+pxySTEFy7CySVyc7zlP4+XhxoShLvZu1HJaQO1nOonk6uQlHSVGFfSTBtsG1roT
 mL5A==
X-Gm-Message-State: APjAAAXGCy8AcDeXu7GgpnTTnMiIiGwT/J/UCgBpoq592vtxyHxVgyGz
 IlsqQjhABo5Qq/4MSAHviKSmLYISPwFacv3fZjfMZ2VJ
X-Google-Smtp-Source: APXvYqyhQAU5DIWDIgucQiRsTp1XPcJJXtZurXWE5faQ1ZKAc6K7EtB1j84FC/R0B3u6rDgmNnou1SxGphHWrYAKouY=
X-Received: by 2002:aca:580b:: with SMTP id m11mr1637263oib.169.1558458410830; 
 Tue, 21 May 2019 10:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190521145116.24378-1-TheSven73@gmail.com>
 <20190521151059.GM31203@kadam>
 <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
 <20190521154241.GB15818@kroah.com>
 <CAGngYiU_iK5=swD_DA5PcOeYFT0zTrdQ+30Db0YrahuEukEP_A@mail.gmail.com>
 <20190521162451.GA19139@kroah.com>
 <CAGngYiUSgtAXL+utPHz79OEbvrL6_TD9Wfkc6396E9vwQHCFKw@mail.gmail.com>
In-Reply-To: <CAGngYiUSgtAXL+utPHz79OEbvrL6_TD9Wfkc6396E9vwQHCFKw@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 13:06:40 -0400
Message-ID: <CAGngYiVZguWhbU_zvczVK3Xgb96nCFsTD-Zkvg8-S1rUVjTypA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 12:53 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> On Tue, May 21, 2019 at 12:24 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > what is so odd about this code that makes you have to jump through
> > strange hoops that no other driver has to?
> >
>
> Basically because it creates a regmap which accesses __iomem memory,
> instead of i2c/spi.
>

Wait a second... doesn't devm_regmap_init_mmio() do exactly that ?!
How could I overlook this :( :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
