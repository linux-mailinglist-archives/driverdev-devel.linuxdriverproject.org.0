Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB90181E27
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 17:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66523220D0;
	Wed, 11 Mar 2020 16:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLYpA0WVfTd8; Wed, 11 Mar 2020 16:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85C551FEDF;
	Wed, 11 Mar 2020 16:43:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 181021BF3E3
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14FD085650
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjBxeLBpOubK for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 16:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 28D098553B
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 16:43:45 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id l7so2287535lfe.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:43:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=773L+w0I9HPnHgYZP79UDOcRjAnkNWqJrs4B1M0USW0=;
 b=IO+Y0P2orBze6ZN88rpUY1D9BvSX5XTj7jai0h1bBgeTJyfM+ukSfl08mOzLyRrSFS
 j9Esq3B9zJPhKOUpcNGzr/I171PhmxC5lfF4DE693yDNmgP+m/uqhjEGKmCdRYoA6r81
 5/uPbt3OEHv0iFhINpWxxM5hqJ2AqYlxCQgdPfeGoDihncHzNWJI75wgQlcvIR/duVxr
 g2cpV5BqCAH0fwHpS3mbaznqRHbbsJkX5jZ/gTEsLARnTJJeFD8RTnjms3+JrKmmaVIG
 ATMVET+UKIueQB2hk6EnwTsO+rBbtro5RRHaGfamZIccRq+3zMgK9U62Fs/sLjtxU2Zm
 EOuA==
X-Gm-Message-State: ANhLgQ3Icb6chjkiPThopUewJZOWPSL2lwG5stJQBD9Y3dt39LcLarZ0
 wm38flSpskSE2+dw6JOscdM=
X-Google-Smtp-Source: ADFU+vupgM0nN8Yt6G4yQPQDbaxHbVAAVZo2CZGdMQfpGSFxgRsbJpNcnX4c2VIYIQf4tFlxP6oBMQ==
X-Received: by 2002:a19:be03:: with SMTP id o3mr105298lff.84.1583945023431;
 Wed, 11 Mar 2020 09:43:43 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id v27sm9092293lfq.78.2020.03.11.09.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 09:43:42 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jC4SB-0006Xi-Cf; Wed, 11 Mar 2020 17:43:31 +0100
Date: Wed, 11 Mar 2020 17:43:31 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH RESEND] staging: greybus: loopback_test: Use scnprintf()
 for avoiding potential buffer overflow
Message-ID: <20200311164331.GM14211@localhost>
References: <20200311100535.29635-1-tiwai@suse.de>
 <20200311100959.GK14211@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311100959.GK14211@localhost>
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

On Wed, Mar 11, 2020 at 11:09:59AM +0100, Johan Hovold wrote:
> On Wed, Mar 11, 2020 at 11:05:35AM +0100, Takashi Iwai wrote:
> > Since snprintf() returns the would-be-output size instead of the
> > actual output size, the succeeding calls may go beyond the given
> > buffer limit.  Fix it by replacing with scnprintf().
> > 
> > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > ---
> > 
> > Just corrected the subject prefix per request.
> 
> Acked-by: Johan Hovold <johan@kernel.org>

I take that back, this patch should NOT be applied.

This is user-space code so using scnprintf() doesn't make sense.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
