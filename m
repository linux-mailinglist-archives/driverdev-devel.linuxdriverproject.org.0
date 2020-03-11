Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E17181586
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E7C3880CB;
	Wed, 11 Mar 2020 10:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttM6tGYHd72n; Wed, 11 Mar 2020 10:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA93187823;
	Wed, 11 Mar 2020 10:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD0CD1BF59D
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9FB587823
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W91Pn1FRWoPD for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4BD6877E2
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:10:13 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id s1so1187714lfd.3
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 03:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1XLEeIPfqgBDQQvgNuhJItuY/OoKKpQLje79EweWqFE=;
 b=QXwig6vtLFu431RMY6Y5veqHtM4pjygGE5kS15wL8oNd9A2897uJkNvQTnX3G4l5qe
 BP4BfU+ezB7kC0WFqYZTghZf8zFX3yL5Q2Lg46qqq7vfJMP/mKrRw1Y+Y+NAVqH7pxw7
 nfn6FmyRSLedAS+XQLF5ZceqkGS47seUz/vwWVr0OXykW7zxLbZ2e4ppqbw50Y6V8rb5
 3+uWWIaezknsPy6m8D1jdQJ3ydF0orEzIE80NW/2HECCYnW783Uy6Srp3zNr1ZTq4bSb
 aJ1UN3uOmi/u2hB+MiURbbU2PWtEVtSon8cxWNzvtUNR1GgLTVA6NM1Hb1thCXidcG/P
 EbrA==
X-Gm-Message-State: ANhLgQ3H10tcj7fqhOhTM2enWiZhmvrJ2QoJzQEG+DvleEu3xM0RihoG
 YbWbQTV690yPpNuewdOMBzQ=
X-Google-Smtp-Source: ADFU+vsnhCrAPpusQtABX5HWr+F/qSRtGWNDECFv8RkNxZp8EvewOxXKz8zUSHAbyUJPPUWabZreTQ==
X-Received: by 2002:ac2:46ec:: with SMTP id q12mr1694023lfo.60.1583921412100; 
 Wed, 11 Mar 2020 03:10:12 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id b16sm3341426lfg.33.2020.03.11.03.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 03:10:11 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jByJL-0004gt-9S; Wed, 11 Mar 2020 11:09:59 +0100
Date: Wed, 11 Mar 2020 11:09:59 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH RESEND] staging: greybus: loopback_test: Use scnprintf()
 for avoiding potential buffer overflow
Message-ID: <20200311100959.GK14211@localhost>
References: <20200311100535.29635-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311100535.29635-1-tiwai@suse.de>
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
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 11:05:35AM +0100, Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
> 
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
> 
> Just corrected the subject prefix per request.

Acked-by: Johan Hovold <johan@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
