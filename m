Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86062AFF76
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 17:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6734481414;
	Wed, 11 Sep 2019 15:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-zxz+7M3ZEo; Wed, 11 Sep 2019 15:03:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CE45811EF;
	Wed, 11 Sep 2019 15:03:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 440831BF295
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 15:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FBA984F98
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 15:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rw+q6CP2vxXi for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 15:03:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5881C84D8E
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 15:03:06 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id f19so10259105plr.3
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 08:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=d5/f69PU6WyAFI1qX9x9zilSuMPIBTYp7Aohz5P1zyE=;
 b=gG9oG4X6t6Mz6yTDo04xFkWf20EXHrv09t20/LH+aSTzrh2RTw+QSzwYppTHh/+iGr
 Xy3YKvNKV7lEtA8kVH00D0UqYTRP3q7UXUqGKtAqbp5+V+Ol5vglGzAkD6SdPRg6TEz8
 fAvO6N4Pz98rdBLVIlE63Pp79dtfoIMtgibcRylcAIO4eYNTWqxjWNwjzdmqYIue3w5H
 xXSQmYDJ3eRrJLWtftS6E2cn2mkOoNkJgam+8KNmTWWFY2RK+wekb8zPTnID9S69M3u9
 m9o8lhy3T9RKfd2gbUZ6R9z2h7AM8nABVyGJ/4AlWeGVG7pcjaxJgQ3YrEwRTy8f0gbj
 2Gvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d5/f69PU6WyAFI1qX9x9zilSuMPIBTYp7Aohz5P1zyE=;
 b=bFeN0XRLIbQSMFI300rblMaYFPXBFHKFZYBLX/zLI+Ov9dJGA3x3Loa7s0PnbO1BEl
 ki9iGAzBLzBGULuwLlcEyf8DU8GW+J0g7uPDT/cc1ATVRH5hcj0lO1OARkPG5kXtav36
 xTzP0iM1MPeYeBua/7I+q+D4nJFPBLdbOGlTFiII2qcJSAKWkTc7wJpCXtX8UwST5Zoc
 IXK+whKcQ0wQ+9QGlkXCvk7Ijl4tkkm83sX+qCQ1a8HNnQ3MaN2nlMKcTnmN37C7bnjc
 1k1oRFg/SxCMmEHiws4P8zxpqj45gCFpIrCpY1oXhUQLNSWI97YO3m+zAWVoLyJRtlIp
 +xJw==
X-Gm-Message-State: APjAAAU0kwUDN+2/26lo88cw8akkbF1VeP3LG0p+wErjhj2FM/oQLvMt
 +IfZL1U3GhsZD1B23/QzREE=
X-Google-Smtp-Source: APXvYqwAK3KLPcDsX3lbhfke/SAhZz2AVDZWn4jmFCZs0QExQGndexzB+79XY51SCLMPaunSN7zKbA==
X-Received: by 2002:a17:902:9d90:: with SMTP id
 c16mr26190254plq.12.1568214185878; 
 Wed, 11 Sep 2019 08:03:05 -0700 (PDT)
Received: from SARKAR ([1.186.0.68])
 by smtp.gmail.com with ESMTPSA id v10sm2771364pjk.23.2019.09.11.08.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 08:03:05 -0700 (PDT)
Date: Wed, 11 Sep 2019 20:33:00 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911150300.GA12027@SARKAR>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR> <20190911144312.GL15977@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911144312.GL15977@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Dominic Braun <inf.braun@fau.de>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 05:46:12PM +0300, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 07:55:43PM +0530, Rohit Sarkar wrote:
> > On Wed, Sep 11, 2019 at 04:17:25PM +0200, Stefan Wahren wrote:
> > > Hi Rohit,
> > > 
> > > On 11.09.19 15:51, Rohit Sarkar wrote:
> > > > When the number of bytes to be printed exceeds the limit snprintf
> > > > returns the number of bytes that would have been printed (if there was
> > > > no truncation). This might cause issues, hence use scnprintf which
> > > > returns the actual number of bytes printed to buffer always
> > > >
> > > > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> > > thanks for your patch. Did you test your change on the Raspberry Pi?
> > 
> > Hey Stefan,
> > No I haven't done so as I thought this is a generic change?
> > Will that be necessary?
> 
> No.  It's not required.  The patch is easy to audit and clearly
> harmless.
> 
> The question would be does it actually fix a bug?  I looked at it and
> some of the strings are definitely a bit long.  The longest one I saw
> was:
> 	"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)",
> 	123456789 123456789 123456789 123456789 123456789 123456789 123456789
> 
> If you get a lot of stalls, then that looks like it could lead to a
> read overflow (an information leak).  Either way this does make the
> code a bit easier to audit so it seems like a nice cleanup.  Next time
> though, I really would prefer if you put this sort analysis in your
> commit message so I can just glance over it.  (I'm lazy).
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> regards,
> dan carpenter

Hey Dan,
Thanks for reviewing this :)
I will make sure to add some analysis the next time I do a clean up like
this.

There are a lot of usages of "snprintf" throughout the staging
directory (315 to be exact)
Would it be worthwhile to find ones that may cause an information leak
and replace them with "scnprintf"?
Thanks,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
