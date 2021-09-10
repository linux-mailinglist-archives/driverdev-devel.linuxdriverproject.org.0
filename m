Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4008B407088
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 19:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E2F84A7F;
	Fri, 10 Sep 2021 17:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TCG6-Tx-Nuq; Fri, 10 Sep 2021 17:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B68368496C;
	Fri, 10 Sep 2021 17:28:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D9DC1BF83C
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D1EA6065F
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fXT6WzjiMhMk for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 17:28:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD50360620
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 17:28:33 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id l18so4353324lji.12
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 10:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BhHuc7Cjlx8Uws6mK4+1ThnTH6hFaC10ASuiWh5hFCE=;
 b=qv45Ea7vxtjrefJIVv+WLaFopsIDKTCxymXO09US5GHfhMRQuyrbFRdu6vsgzmw8DP
 AL1gl3Ueh2BU2Ns4o19SrnIgkBGL43SA4oKjCr6rAEtY7tPHLCWlsj+z7PgYw05gJB8r
 rsBZP54+dj/W8RN2lWD6b39zTUX3uu1zRfkJJtG7SAkU/Qp8AmMU511lkzog97/WhFmv
 65u3Aoxbld2gAfBEW7LjS7MytBgCyIYt0voqfUshYcUSFZsA6eZcXkNJxy0AOQTkdYXb
 htqz9ndrBQR8HJI3Yex9KbVJD+18E/A0HCDdg6N8oycPTE6y0I3PvyQ0RLhcLqHXqxPC
 sonw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BhHuc7Cjlx8Uws6mK4+1ThnTH6hFaC10ASuiWh5hFCE=;
 b=yQwka6TcNPdTlE3Xs74KidZ2Bee0+4MYJ6uvpbRNBo5rIZqSAlNb7v+kfhgHy9aEQy
 IDHARbIPJp3TvVu05HAjqaufi1zEimUAwWMb+nWnUpvGSTuoM/hx6lehVLW1oT9AHoRm
 3O66Bx6oaHarxUXRCCZeClXo+busTqgN9YMekKNPANDaunTjdSNfvZxy6dMXvX74Bb37
 JrjdEP2CGTzoohBrY1snvpt/pteaFxrATWx5UPMqfOxiFp1+V10/BY5efkHjRtq4qQRT
 6ltZQBz3DkbHko49XuLr4C6GC+jLQC2rI47Ao3nHd9LqcCemyK3NnegT02ojEQ2k634O
 dBvQ==
X-Gm-Message-State: AOAM532b7814Wk+Zy2GngQTWzpLdHNTvE88KNMeS18YPP+rqv0Y2I7ku
 O8gaox4CcG0wybPUSPNctbw=
X-Google-Smtp-Source: ABdhPJwSBQ6v5ZHbTXA6zQuREQfbmodC2z+uYCqtOijsZuoj7lR2ycruSDUwnEKdi4BdxWj+lDKklQ==
X-Received: by 2002:a2e:8511:: with SMTP id j17mr4954431lji.407.1631294911915; 
 Fri, 10 Sep 2021 10:28:31 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id t11sm614979lfc.54.2021.09.10.10.28.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 10:28:31 -0700 (PDT)
Date: Fri, 10 Sep 2021 20:28:29 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 31/31] staging: wfx: indent functions arguments
Message-ID: <20210910172829.3ulrvnl7d5kz43wt@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-32-Jerome.Pouiller@silabs.com>
 <20210910165743.jm7ssqak7gouyl5j@kari-VirtualBox>
 <2462401.Ex1rHSgKji@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2462401.Ex1rHSgKji@pc-42>
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

On Fri, Sep 10, 2021 at 07:12:28PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 10 September 2021 18:57:43 CEST Kari Argillander wrote:
> > =

> > On Fri, Sep 10, 2021 at 06:05:04PM +0200, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Function arguments must be aligned with left parenthesis. Apply that
> > > rule.
> > =

> > To my eyes something still go wrong with this patch. Might be my email
> > fault, but every other patch looks ok. Now these are too left.
> =

> I don't try anymore to check alignments with my email viewer. The
> original patch is as I expect (and I take care to send my patch with
> base64 to avoid pitfalls with MS Exchange). So, I think the is correct.

It was correct. Nice to now know about that something funny is happening
with my part.

> =

> > Also it should alight with first argument not left parenthesis?
> =

> Absolutely.
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
