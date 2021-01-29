Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA46330873B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 10:08:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2762086860;
	Fri, 29 Jan 2021 09:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PP+uhY-8xbhX; Fri, 29 Jan 2021 09:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFFAE84F4C;
	Fri, 29 Jan 2021 09:08:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 785DD1BF59E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74D1686A0E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9OwJtiplx9z for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 09:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8E3A86A02
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 09:08:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t25so6245295pga.2
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 01:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=E9Oc4sqWbLNUALyOCQOgo41/DhxFD13o3YKhv/SIqiY=;
 b=NZT9fU1+4aSVlvfHaXhgsm6wwBoUGf3gWOgeO2nKQgXfJZIFrH4rgSHclZjKyKBSVS
 eqgBM+idt8UGiabLe0cD3HfKx/9YFJXJtNK5q3aBIXMR/ox6608SVu2OmU2dOAQlwxwZ
 QriRkiaywW2lV3rKM5WCoGdjWD6ZdXv2+4Ze3qlCt4GeStpE2iJkJdu4V+pkenW+hqU2
 q7L47sy8zeXYZH0P+d8ypprZ8G6wm/mYD899mk5w8rgKYrnHYDZA3QiG19st1sqiss3/
 /Wuek3dJfEdPKyFza1UX3tSQlDFEsj0JUISU8+bQ0UIatAAH7dczlkQ1pqx+dW2ftwpG
 I8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E9Oc4sqWbLNUALyOCQOgo41/DhxFD13o3YKhv/SIqiY=;
 b=koLPfLbN4H3iFkdE6UNupJCiQOCFP/F8zkbG+N11dZxjbqBPCAVDss9TobS5hXsKuw
 iSkG1q2pZy+Bq4RdwPKH54erZhkkjHxT50sOW7rtqWC5c4ogSm/3fhpSxBxtfQrbUf/i
 75hcs8QJKXWgsKhkjxVXJZfHIUy2oOYj9huV979EGZNBZU8crJeS+Zm+trg9ViiiEUV6
 9WcJnIs7j/EQwwJLe1G2zFg64pBnBvebpT15GPcE6mqW8HOlV0DIBuhozDEecCgAD+WF
 knsMggnEuZdvO3JtNMiGpR0iisyjXve69iadAjXdwMCgm5AZkBumMlZhMPkcq30nUaCF
 eUkw==
X-Gm-Message-State: AOAM533ekxa9hrCR24xrNBEf3gbfycSzZYlZfT6rfvIgHsKliaAeRiWa
 87NfnOPrTnFwSts0AmDNP71F8B02e2I=
X-Google-Smtp-Source: ABdhPJwG2nM+M52T0wroGfdIo+Jq+NbNWL1GziJCKcA2p1JlCFh/Nlf4D5gp25ktdA/8zowaSYqG7g==
X-Received: by 2002:a63:4204:: with SMTP id p4mr3704031pga.246.1611911318429; 
 Fri, 29 Jan 2021 01:08:38 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:bf74:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id v9sm7111570pju.33.2021.01.29.01.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 01:08:37 -0800 (PST)
Date: Fri, 29 Jan 2021 14:38:33 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Message-ID: <20210129090833.o3sdo7drhd4un53z@apollo>
References: <20210129064522.97548-1-memxor@gmail.com>
 <YBPBoajKXbKhI7ji@kroah.com>
 <20210129082155.2ob4kokjdjbutdqm@apollo>
 <YBPMnCqlxSDs84qF@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBPMnCqlxSDs84qF@kroah.com>
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
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 0129, Greg Kroah-Hartman wrote:
> On Fri, Jan 29, 2021 at 01:51:55PM +0530, Kumar Kartikeya Dwivedi wrote:
> > [Forgot to reply-all]
> > 
> > On 0129, Greg Kroah-Hartman wrote:
> > > On Fri, Jan 29, 2021 at 12:15:23PM +0530, Kumar Kartikeya Dwivedi wrote:
> > > > Fixes checkpatch warnings for usage of strlcpy.
> > > 
> > > What warning would that be?
> > > 
> > 
> > 5dbdb2d87c294401a22e6a6002f08ebc9fbea38b
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5dbdb2d87c294401a22e6a6002f08ebc9fbea38b
> 
> Hint, in the future, write the above as: 5dbdb2d87c29 ("checkpatch:
> prefer strscpy to strlcpy").  The documentation has examples of how to
> do this easily.
> 
> And yes, I know that checkpatch says that, but I need to know how you
> know this is the correct change.
> 
> > > And if we could just search/replace for this, why hasn't that already
> > > happened for the whole tree?
> > >
> > 
> > I think that's because it is hard to tell whether truncation is expected at the
> > call site or not, so each change needs to be audited manually (to check the
> > return value or not). In cases where it's just a safe strcpy, strscpy is a
> > relatively better choice (due to not reading the entire source string).
> 
> Did you do that auditing?  I need to know that you did and that this is
> fine, or that maybe, this isn't needed at all?  All of that information
> needs to go in the changelog.

Yes, because it's copying the source strings to fixed size buffers in
ethtool_drvinfo, so truncation would be fine here (as it's the driver name and
other identity related stuff).

Should I send a v2 with the reason?

> 
> thanks,
> 
> greg k-h

-- 
Kartikeya
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
