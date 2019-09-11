Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAF1B02C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 19:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 659AA81E24;
	Wed, 11 Sep 2019 17:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QpGdMQUV+u-o; Wed, 11 Sep 2019 17:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3124D8435A;
	Wed, 11 Sep 2019 17:38:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18ED01BF59B
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 17:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15CC28533D
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 17:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6q0d6UX5rfyk for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 17:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1EF6784BAD
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 17:38:09 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x15so11870012pgg.8
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HFNs3VIOJF+/jkI2zxc/LRnDhLyxHsi8ph6smCt7L+Q=;
 b=VUHggKfeiF4j3v+totu3C0Tp7d/fJ/jAEC1zdOH7PL668WlWcKvhipruHzLbs4m+Nc
 JrUBAYQo1bupDyEFXf3aRwA+XlLmxsmtF7saY1i7SSP02eCix58F3yxnteuMR7xiwEO3
 dlvjmP/WbmTkoVpDNNJN+y3fpkYc04i5Y2s5DNw+KeDkgJkeHOB6tkdA1BSFbk4r30UO
 yhQBG6VM4Ee2YONhlhaEdGtp0LLEm6Gfv5HwYbHVMJAMU8LVssO9ajHs8ZZq9dWE5kSV
 jMDAB2kSEseAea2r7G2jf7hKcr9/i0TlRtqbXbsWlrmxPBYjxOGkeVNbxodBaRnt0e8U
 hhOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HFNs3VIOJF+/jkI2zxc/LRnDhLyxHsi8ph6smCt7L+Q=;
 b=XI0724la8BR8a3AQdiB8N9Ckc4UCLLxYbXsPH0XNRWOBpQ9HGc3ao6KkwXxh1UYFTQ
 gP1thF054Ex7uBJ9nZzsieNUnOiRinQ9/ITXrH/dS6Uh7fgCsum9nJrCtHyEpaCQ5qVj
 lOv/ncf9ripOHcUEqTBnGNQtULJriBwagXZoeuTyrKolaiGG4EJBPiEeYekRcI+TTIZJ
 CJOem9lNkFgc3PlNPX/GpN0AmFTwqO3VsebciTvpRkg7YewGzGNAAwT4MZAbC/2ZFY7E
 LgXdsKQ88u8XDUaiuLkbHj9eavKicYKAZDPoVWf27zx8x2YWE+YgfFR/kDI4WrxMD6c8
 T23g==
X-Gm-Message-State: APjAAAUsuCQC9om+D1pJwlQAcU33xbeChmZimIQxsbXinDXIRUN6v4lw
 8f8DNJtQTV4cUZVaecyuIDA=
X-Google-Smtp-Source: APXvYqzhAECrRcZjqz2bn2C1j+nqBdtUB7K77PGTq3g0XPCgVmWcXukcaaW21a/0sx9XIIxonXpeIg==
X-Received: by 2002:a63:d64f:: with SMTP id d15mr34892141pgj.345.1568223488521; 
 Wed, 11 Sep 2019 10:38:08 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id 207sm29076441pfu.129.2019.09.11.10.38.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 10:38:08 -0700 (PDT)
Date: Wed, 11 Sep 2019 23:08:03 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911173803.GA19183@SARKAR>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR> <20190911144312.GL15977@kadam>
 <20190911150300.GA12027@SARKAR> <20190911172422.GK20699@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911172422.GK20699@kadam>
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

On Wed, Sep 11, 2019 at 08:24:22PM +0300, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 08:33:00PM +0530, Rohit Sarkar wrote:
> > There are a lot of usages of "snprintf" throughout the staging
> > directory (315 to be exact)
> > Would it be worthwhile to find ones that may cause an information leak
> > and replace them with "scnprintf"?
> 
> A lot of times it's really easy to see that the uses are safe, so
> snprintf() is fine in that case.  If it's not obviously safe then change
> it.
> 
> regards,
> dan carpenter
> 

Sure, thanks a ton!
regards,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
