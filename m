Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480E16C4D
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 22:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9BEC130C4C;
	Tue,  7 May 2019 20:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TR-tGfwjOXrr; Tue,  7 May 2019 20:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C47330A33;
	Tue,  7 May 2019 20:36:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F13F1BF313
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BCD787D6C
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yeWq589cj34w for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 20:35:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70A9987D0E
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 20:35:52 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id d20so3137228qto.2
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 13:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=O6gYEqTbmv77FQYhVi46xNiLmwAMPiLYwUgMBGFBieA=;
 b=DP4a2KW5qtKsIGNZTbytzYP7dwD1YeVKxt5nKVusb5m2B9WbYuR5Jf/HLcnroDEl3F
 ZDZSYuCplS0pSppqUPkpUzCv3/Y3T9WdzWUkVqjmKRy00gSOLHRjUTqlmmKPPrwndkLu
 ifcBifvdYmBG40jasDnyuJpDXu01VtHRtHk86MiHT9yI8jFdciqilPFn86X6QMaGz1AO
 AKk1rBcVS8JJ5z7/AQvUtbkChQBnSFNwnV7jzbz4ulZlNPy9bfZ7b2O8xF/e2M0ltQUt
 IdKjGtG154Pj1mRvnRxyFKI9bqSQp/QEs3//JYoI7aZPq0KIJqdwNa0yKJuXhBvqR6eq
 bKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O6gYEqTbmv77FQYhVi46xNiLmwAMPiLYwUgMBGFBieA=;
 b=GC+PF5LeBUdnvihNtZvp8Pu5aiC0Blep9n6DQg0Yru2pCwpx3ElQ0oRHadusGn0VmC
 H3Hw4kbrMOH258k2EdVgH//+VTSZtuGb6S9wRAY56DEBlzcwBUOTKxKyIuI1hLPb7XcE
 iTjjscLFkiW0g6jyPig1ZqskBl57VZlc2aD+TIZJaIHbCWbwftozFSFIonT4Ftl7i6Qf
 0oRpo5LD4MRs+2oTAKAQ5ZecAhHpH32iCYp/Pw8Gx5qKRaNvRzL6XSAMQh2lPnQoT+bC
 ExJqNRSV8pJNc6qEcts4SB6Sw4658k6+qEbLREY2Pgvd1FdZYCESVJ+8cRRUHR3We0La
 96Qg==
X-Gm-Message-State: APjAAAXLsVEyTq5W1+T7ufVTNAm6l3dU2FD3znhr7BLqlR2vKdsTQvXS
 AwHY0xJLJcSKhaLJ3D/YbqA=
X-Google-Smtp-Source: APXvYqzosXvm/SegHMlT/UBeJMN/OuZyRFk1+Vu46ooovqfZMwVzQXDxBuUoSQWqKDxd1jpJ0eQf1Q==
X-Received: by 2002:ac8:222f:: with SMTP id o44mr29115731qto.198.1557261351365; 
 Tue, 07 May 2019 13:35:51 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id j25sm9197094qtc.24.2019.05.07.13.35.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 13:35:49 -0700 (PDT)
From: Melissa Wen <melissa.srw@gmail.com>
X-Google-Original-From: Melissa Wen <melissa.srw>
Date: Tue, 7 May 2019 17:35:43 -0300
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 0/4] staging: iio: ad7150: improve driver readability
Message-ID: <20190507203543.dpold6kx5j2pjar2@smtp.gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
 <20190505140510.62b42abe@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505140510.62b42abe@archlinux>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Melissa Wen <melissa.srw@gmail.com>,
 Alexandru Ardelean <ardeleanalex@gmail.com>,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/05, Jonathan Cameron wrote:
> On Sat, 4 May 2019 14:12:22 +0300
> Alexandru Ardelean <ardeleanalex@gmail.com> wrote:
> 
> > On Sat, May 4, 2019 at 1:24 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> > >
> > > This patchset solves readability issues in AD7150 code, such as clarify
> > > register and mask definition, fashion improvement of mask uses, reduce
> > > tedious operation and useless comments.
> > >  
> > 
> > Hey,
> > 
> > Two patches seem a bit noisy/un-needed.
> > The other 2 are fine from me.
> > 
> > This driver does need some work to move it out of staging.
> > I am not sure what would be a big blocker for it, other than maybe it
> > needs a device-tree binding doc (in YAML format).
> > Maybe Jonathan remembers.
> > 
> > Some other low-hanging-fruit ideas would be:
> > 1) remove the code for platform_data ; that one seems forgotten from
> > some other time; the interrupts should be coming from device-tree,
> > from the i2c bindings
> > 2) you could do a AD7150_EVENT_SPEC() macro (similar to
> > AD7150_TIMEOUT() macro) and use it in the ad7150_events[] list; that
> > would reduce a few lines
> > 3) similar to 2), you could do a AD7150_CHANNEL(x) macro ;
> > 4) in ad7150_event_handler() the checks could be wrapped into a macro,
> > or maybe some function ; i am referring to "(int_status &
> > AD7150_STATUS_OUT1) && (chip->old_state & AD7150_STATUS_OUT1)" checks
> > ; those seem to be repeated
> > 5) add of_match_table to the driver
> > 
> > I (now) suspect that the reason this driver is still in staging is this comment:
> > /* Timeouts not currently handled by core */
> > 
> > I wonder if things changed since then ?
> > If not, it would be interesting to implement it in core.
> Hmm. Timeouts are 'unusual' to put it lightly.
> I'm thinking the ABI needs to perhaps be more specific but not sure what
> a good naming is.
> 
> Otherwise, I just took a quick look and can't see anything much else
> that needs doing.  Obviously something might come up in a thorough
> review prior to moving it though!
> 
> Jonathan
> > 
> > Thanks
> > Alex
> > 

Hi Alexandru and Jonathan,

Thank you for your help! Soon I will send a v2 with the fixes pointed out.
I'm also including the ideas above in the work plan for this driver.

P.s.: Sorry for having previously sent an email with HTML.

Melissa
> > 
> > > Melissa Wen (4):
> > >   staging: iio: ad7150: organize registers definition
> > >   staging: iio: ad7150: use FIELD_GET and GENMASK
> > >   staging: iio: ad7150: simplify i2c SMBus return treatment
> > >   staging: iio: ad7150: clean up of comments
> > >
> > >  drivers/staging/iio/cdc/ad7150.c | 102 ++++++++++++++-----------------
> > >  1 file changed, 47 insertions(+), 55 deletions(-)
> > >
> > > --
> > > 2.20.1
> > >  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
