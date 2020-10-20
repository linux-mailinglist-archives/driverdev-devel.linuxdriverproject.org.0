Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91623293F8D
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BACA887341;
	Tue, 20 Oct 2020 15:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQCvVOiQraPp; Tue, 20 Oct 2020 15:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1915872EF;
	Tue, 20 Oct 2020 15:27:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A0811BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE17B2E1DA
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXNn1D3FxMF9 for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:27:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E440B2E1D4
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:27:00 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id m20so2472731ljj.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Zeh27GzRmL8bPL9oQCB5ck5CEjhVPNog8LVAko3+L1c=;
 b=VkRmWZIVxZksp8YLlWRlb3EAWtNkOyEbd+ADeHDy4h61/4SfZruYbo+z4tN9CDCzLU
 I3woZVHaKjTwjo+8bzUc8WYFhE9bryxKtrbmgtJy31mMmgt2C3e9WNuZMfwwLnVWpYpJ
 xwm3OvkQubPrJGYzh1Yd/7pY5ezKXF8z1a38qpYU016pzgn6yrBA/fJEtn+crlhBZPHQ
 jpGaCgMKX6LsPsXl3PcWu40OhzlOsyKCqWrRmWonnoA2Iub5RdFeZrzXRNCrt8vB6tmX
 nc+gZaC/5O43vGR17vuQ/hDvgaiD/STlIlkDEmdB6Jv8xN6PzKt75QTDBD3TNEt5oX8y
 xJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Zeh27GzRmL8bPL9oQCB5ck5CEjhVPNog8LVAko3+L1c=;
 b=APNmpetiGXFB6abxvx4W1TMIF9SZV/0cB3UCdZXcpxmz05eKuwCVVL9pxy9Hxe1wwL
 e5m1MPES8+u17XTtWQCQweOlqdn0hxPFrlGc9nJ/0F6DeQdtiGsvh1SW/GLAEFVfg+2a
 K5IeK/+QZ3BBar9Y0FXl2IGGhv2ZriSEvKrTW+R4hfdyBTaQUaSnw3W95aa6Bb1qq3BL
 BdwdljWbf2vVMUZkicZy5zi8pA4BX21KP83yS3GfrUNYNvtPQP0QZtBBWvIc800nnEYy
 YjWJPxgxxEWZJ6w9QU88CgrzEFEDiTyISrLvqI75K9T6Ghscs+M+T13sk4AEithZBVwe
 PkYw==
X-Gm-Message-State: AOAM533WMUvxSQMiRlgs4bpkQNgiw7f+TF/N7cK5BgSOWwbYtfiCfIN/
 aYkm7uO4Y/0v2KRvOkSvQ3o=
X-Google-Smtp-Source: ABdhPJzAjbHin9jDCXbdGqowQUIWlKwEEke8GprqItrPraiYcVu/u+wHu5GtgtboGSrKPFAWE0k7XQ==
X-Received: by 2002:a2e:7304:: with SMTP id o4mr1284890ljc.437.1603207619099; 
 Tue, 20 Oct 2020 08:26:59 -0700 (PDT)
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id p7sm350369lfc.299.2020.10.20.08.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:26:58 -0700 (PDT)
Message-ID: <db06e14584ad31f5a16e6600fa269543997cc28a.camel@gmail.com>
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
From: Elena Afanasova <eafanasova@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Tue, 20 Oct 2020 08:26:45 -0700
In-Reply-To: <20201020151949.GA852005@kroah.com>
References: <20201020150823.35734-1-eafanasova@gmail.com>
 <20201020151949.GA852005@kroah.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-10-20 at 17:19 +0200, Greg KH wrote:
> On Tue, Oct 20, 2020 at 08:08:23AM -0700, Elena Afanasova wrote:
> > Replace function names with __func__ macro.
> > Remove unnecessary characters in error messages.
> > Reported by checkpatch.pl.
> > 
> > Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > index bc642076b96f..f972edcde8a0 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> > @@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device
> > *ieee)
> >  	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF,
> > MAX_CHANNEL_NUMBER + 1);
> >  	RESET_CIE_WATCHDOG(ieee);
> >  
> > -	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
> > +	netdev_info(ieee->dev, "%s\n", __func__);
> 
> This is a pure debugging line, and should just be removed.  Can you
> do
> that as an add-on patch to this?

ok
> 
> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
