Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFCC369CC
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 04:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 452B7862A5;
	Thu,  6 Jun 2019 02:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3nX-E2g2Ik94; Thu,  6 Jun 2019 02:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3026985F6E;
	Thu,  6 Jun 2019 02:07:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B95971BF400
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5EAD8809E
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtH2+hcmuyYw for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 02:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9BB6A88012
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 02:06:37 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 136so320662lfa.8
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 19:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=88ECF44BWpL23s1dEr3eppcssIoU6JXyInAfcio0zoQ=;
 b=dNHrFF9iZ1C+q+eqDwyH3Y/mKptP033n2cjGq0Boy4k/jD+VX3QKwyHqAaW9p3JsEZ
 50z2rCcR2bD6pjdfuKzKW5goMhn/6XVS7tYWo0PoaHoIf0PX/yrQ3aCJgR+noLvcRfsE
 zf8WGDfMTB9PCNvDv17O6a2kAUCM+EU7nCNMHSrYsXgsbDfTPl3J3TF/XQxhsEh3Aijq
 e0Yh657rt/lWqH8mDLCvBM4qWlqgcdXWVrP2X+a6oMX2hqBeAbZMDKZ07by/W4wHN/IG
 hg2m3+FdOve4/kfa/rjAhCAVcupKX0Ewjq8DoCWUmROwNEciZz45voFO5gq3WTrxPVft
 yLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=88ECF44BWpL23s1dEr3eppcssIoU6JXyInAfcio0zoQ=;
 b=l0qO2QYfwEKY6FqNn9H1MXmXv2ZUvYjtML6klaZeHuEGlVsQsjx9cCMNTBUY60VFYX
 gV07jva6uRyLSPu9VvPsn78Pf7i8Vr4azDXScD3Xp/LU/euUawZZ4gCOVvzgUXj6zOH5
 PR2ZpgPQ+rNTo1iNOuMhfddcbkgDj2BD5DKlStTcw/Agb6rd7tEQIqKUfzS7t9uJ+mfS
 652pKbMHRmWfXbQ2HbRf1Yx91xh4i+nvPmteG+h8o1kMwV8hXsEOOLogORZZ2oG1ySm1
 uNt4f4ZudwR4nB94ze2t0p1ePXnFSkVjDl/Zt3chihfDS5qQyvd0Q/lWZyEiV8xNf/Wh
 zzXw==
X-Gm-Message-State: APjAAAWku1cc3sAoNE5i7Zgd1O1GdxqoYITmo2HdP2xCpI6PBvz0EZIt
 DnmkIMf41ove+QIMEBQAOFeuoG0iL1USvCnaJOQ=
X-Google-Smtp-Source: APXvYqyjbFnmg3Yh4T/j1CFsWigkIHLOBA9P6N1LbgUNEXHZTZI3tonoM2Q14fno09rHRbTfw6vWQv+xUONyovDBaKY=
X-Received: by 2002:a19:5046:: with SMTP id z6mr22308952lfj.185.1559786795716; 
 Wed, 05 Jun 2019 19:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190606014246.1850-1-festevam@gmail.com>
 <81b33d1f-0129-5fe4-9883-a9c30feafd9d@electromag.com.au>
In-Reply-To: <81b33d1f-0129-5fe4-9883-a9c30feafd9d@electromag.com.au>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 23:06:27 -0300
Message-ID: <CAOMZO5BkCFxLJS4ytrOmc5qw_Z83q_+1HpjDJ7hspA=ERUpGoA@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: adt7316: Fix build errors when GPIOLIB is
 not set
To: Phil Reid <preid@electromag.com.au>
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
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Phil,

On Wed, Jun 5, 2019 at 10:59 PM Phil Reid <preid@electromag.com.au> wrote:

> >   #include <linux/gpio.h>
> This should be removed as well.
> See comment at top of linux/gpio.h

Good catch! Just sent a v2.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
