Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A55B3164F0B
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 20:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A83685039;
	Wed, 19 Feb 2020 19:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0ZKWE8R1HVk; Wed, 19 Feb 2020 19:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 624E6835F5;
	Wed, 19 Feb 2020 19:39:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 138451BF2FA
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 19:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 10703845D5
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 19:39:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNA5zPI8kx0v for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 19:39:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 192A4835F5
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 19:39:48 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id y2so728701qvu.13
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 11:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QhXQ/cXtwYHdMsHGCBQq3KT1zCPY2mBxOplKOphUcO0=;
 b=qlADmI86J0XVdWbUcyyqOAzkIo/erCaqAHsFJej8QGQc9MASUfjo4tracziYv76Rde
 Ibn9uj/Tw41+og1tTJjmZ0JHhDaiLACkoyT1z5PR2pIfIYF1tCSrPC1+nVqVXLWUWpOK
 b3nnAguYvMtvPie/n1u3eIs8ht8viK+cvNzOzop6C1Qgms2x0rG4k5x+NfKa1OnS73zt
 9+EFEwuQMuFxJsC0fQSo8TgvSJ1tIg9proQW0HJ9WR76oARr0s/8mLtFoKlY6U35iIwH
 E3xFk11LekDO7F9zYeQT2PJXwl2Oo25Gicnf9vxqP+XeyB/of8lgiwde/EVtN2Z0oqlm
 bICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QhXQ/cXtwYHdMsHGCBQq3KT1zCPY2mBxOplKOphUcO0=;
 b=RBAqjP+sXIWooYv/CnmAiNyOMjcefnfNbHyX7L+PTdWMhx9h6+l22WSaDDIPmiIrlb
 TnO4tJcRkRn996FdBcEeW58v6M4Qk/dOTwXaEYSKDnj/tdcmO/hxFfw1rxHxwpsSOwAZ
 uLy80Dr82M8xIk+nQZ7MGdarqNrJ4CVz20+FZaXbAsH6Skt88Bhq+jTD39BNUNMGT1Wh
 G6pfmroujH0IwrYrNEQM1AcPjzpl3HFG3jB4/M7lhEuxddTaSexT9ZkEMBMLQnhGVu+t
 XoOiuM0WqALPjnBE3HEvNbAKWtp37y+DDfugcm18ene4UppgXGo3FSJs4rMvzR/mUCS8
 iVzw==
X-Gm-Message-State: APjAAAWVG0PrAhS4mipn3DgnwGGUrKfm1VsgcBkSjmUQ3a+RgaYyE7a6
 A+rTUzZWytPwZ+3WxeUKAvq517Z0Q5xwd5sm
X-Google-Smtp-Source: APXvYqwN5bpa2pBX6QeC9TD8aVtDM1ClvbzJcPqmW4HL7uQ83xvSRAUOhmj5p6kGzu9msSBSUefyXQ==
X-Received: by 2002:a17:902:a984:: with SMTP id
 bh4mr28037054plb.281.1582140689769; 
 Wed, 19 Feb 2020 11:31:29 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.172])
 by smtp.gmail.com with ESMTPSA id 10sm397662pfu.132.2020.02.19.11.31.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Feb 2020 11:31:29 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 20 Feb 2020 01:01:23 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: comedi: change CamelCase to CAPS
Message-ID: <20200219193123.GA31142@kaaira-HP-Pavilion-Notebook>
References: <20200219174646.GA27559@kaaira-HP-Pavilion-Notebook>
 <20200219184741.GB2854654@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219184741.GB2854654@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 19, 2020 at 07:47:41PM +0100, Greg Kroah-Hartman wrote:
> On Wed, Feb 19, 2020 at 11:16:46PM +0530, Kaaira Gupta wrote:
> > fix checkpatch.pl check of 'Avoid CamelCase' by changing NI_CtrSource to
> > NI_CTRSOURCE in all the files. Change it to CAPS because it is a MICRO
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/comedi.h               |   4 +-
> >  .../staging/comedi/drivers/ni_routing/README  |   4 +-
> 
> As proof of what I said in my previous email, see the changelog message
> for this README file, and read it to see whre the names came from.

Sorry, a typo, it was MACRO.
Again, really sorry for the comfusion. I should have gone through the
README well.

Thanks!

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
