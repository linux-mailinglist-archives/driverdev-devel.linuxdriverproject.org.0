Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90039181582
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:09:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A606287823;
	Wed, 11 Mar 2020 10:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PrHzJj96ehP; Wed, 11 Mar 2020 10:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B510988056;
	Wed, 11 Mar 2020 10:09:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05F4C1BF59D
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00BD186F87
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kk1e8ps5xrj for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:09:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E859A86AEE
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:09:17 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id i19so1194202lfl.1
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 03:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0LIbPZcsnClj0ryS1sOnfucz8myFOUlgKPSNLrqLB5c=;
 b=guMexoykxjFRTINb/dOI841ExS8jgtQw04WD59s9DySVS8rnJYc0ts/xINP4X+TeFN
 bbbZ+kKQk3mbaDkflt8yCMySPRe35A1HlFihVABU9y6wHqzuDPD6owxTA5k6cWrt1hZJ
 BJpyqzxdermEDewnd1HtDDn+BzWa+T+dzn2vclBSRNOBt0JAnDwpONBe2heQsZoHLAkf
 5YCw/59SiCP1ZYG8wIKh5CjSKZoJcMSYdE5Xsg/g59YW184XmkiD2rxMVUWnbrVhnkyO
 RkURsPUM7vJmREB/8WSs1Cs2i8Yc0/b5zJ7+ToiR1pQCMEPr0H2PkD7lmfA59Zg/fAsF
 nCmQ==
X-Gm-Message-State: ANhLgQ0W2FIeTtuzj9eCW6boEdCJk1LDphvvDBk7wvHjsD25MCQ04/Ht
 JslRQ0B/owkgebmTrLWJ8dw=
X-Google-Smtp-Source: ADFU+vvhrOZpQpOPEk8HFE3mp8c5VdQ2Mf3sWnKTi3SUcvwE+ue/Cy3vAP0xHzG9HwYz2xgqYTVXog==
X-Received: by 2002:ac2:55b7:: with SMTP id y23mr1625915lfg.140.1583921356143; 
 Wed, 11 Mar 2020 03:09:16 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id p5sm11421666ljn.48.2020.03.11.03.09.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 03:09:15 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jByIR-0004gF-Ah; Wed, 11 Mar 2020 11:09:03 +0100
Date: Wed, 11 Mar 2020 11:09:03 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200311100903.GJ14211@localhost>
References: <20200311091906.22980-1-tiwai@suse.de>
 <20200311095814.GI14211@localhost> <s5hmu8n8b0m.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hmu8n8b0m.wl-tiwai@suse.de>
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

On Wed, Mar 11, 2020 at 11:02:33AM +0100, Takashi Iwai wrote:
> On Wed, 11 Mar 2020 10:58:14 +0100,
> Johan Hovold wrote:
> > 
> > On Wed, Mar 11, 2020 at 10:19:06AM +0100, Takashi Iwai wrote:
> > > Since snprintf() returns the would-be-output size instead of the
> > > actual output size, the succeeding calls may go beyond the given
> > > buffer limit.  Fix it by replacing with scnprintf().
> > > 
> > > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > > ---
> > >  drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------
> > 
> > Thanks for the fix.
> > 
> > Would you mind resending with a "staging: greybus: loopback_test:"
> > prefix since this is not a subsystem wide issue, bur rather a bug in a
> > specific user-space tool?
> 
> OK, will do that.

Thanks.

Perhaps you should replace the snprintf() at the start of the function
in question as well by the way.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
