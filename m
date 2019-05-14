Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C53A01CC45
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 17:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 266192E5CF;
	Tue, 14 May 2019 15:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oO+QhtVxr3ho; Tue, 14 May 2019 15:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 38AE52262B;
	Tue, 14 May 2019 15:54:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76E961BF3F9
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 15:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72677220CA
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 15:54:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDuEgqTjdYbc for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 15:54:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E09E420773
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 15:54:46 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 145so8837912pgg.9
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 08:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GLufggGK8E2bGMZGas47LMLbeEjUIYqrBsiW4ldDcmY=;
 b=IUU/rhgP3E6oOJKIJeEvKLmECR0h/axMwp4xvis+2BeYbItSAbu1itu7GKr4/wfj0/
 m9kYyiY6QbsonaIK0YA8aUuSZtvK+nW2BrVG/zW4REvXlOUcVwrEfYbPl3lRMW0R4RqG
 LY4j4uCOpVeStB81vwrtyBXXno/4xsMJvFihdY238Fggp4eCOWMlpW9E52y2aZnUN3DR
 WqNFzmWKqAtUNCCpfmzQWY99rkez35kCg8/dPr/K8SMcRFaRYd97s41wuULd4ISWy8O6
 OZrDBJvb2B+qAsjQz7hW6jQRLe+fzQvU6t+8GE8xHD75yff/a8CTZZ+BJHSxkpuUw+lD
 zXBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GLufggGK8E2bGMZGas47LMLbeEjUIYqrBsiW4ldDcmY=;
 b=dlVwnEF6D8xe1j5cFIkdy8DPTUi1UbcIM54S404snYCUkz2RFq8Ax9DJKsUTyX24VD
 wE5JTpubD2JWi4iZlUQT8y4rrUKVLjLwtTfd63nP4srIloUWFESYAHHu7ghYfJeVPBr1
 NAZ9IwEnY7n11e+98IoceyguwFj9GMia1XaB1Rk0y5xnNgmJ1sAqzaZG2Kt0KGkaDFkw
 YUOJlw6UuBMrVPEhSa/QlVkeyYDOJS7Zj3QBuasK0U5aIEL1QkI+iC2dXS/DtuR4hLLJ
 HT1oy2ZFVG0wOliEx46uA60tkXfmp3F5yEjs4qW6hYwLKI/rpEiEPfZLLs8njPtpIvbA
 0XlQ==
X-Gm-Message-State: APjAAAUZukkXl0t45o/QRyvHgaorv9NmUQJEEdvFNSJXTPOWaqNfVrZV
 0ZpxVZ0EpkYiTUEVPlEjZiU=
X-Google-Smtp-Source: APXvYqzx0ALoleoW+ebEoEDWYJRLx7BzX0358oc0XfxFePB332ZnYWc6r/oDTDFSCuI8cUu225VLBA==
X-Received: by 2002:a62:5f02:: with SMTP id t2mr1483473pfb.7.1557849286209;
 Tue, 14 May 2019 08:54:46 -0700 (PDT)
Received: from arch ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.gmail.com with ESMTPSA id c76sm3387746pfc.43.2019.05.14.08.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 08:54:45 -0700 (PDT)
Date: Tue, 14 May 2019 21:24:38 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH V2 1/5] Staging: rtl8192u: ieee80211: Fix coding style
 warning
Message-ID: <20190514155434.GA1371@arch>
References: <20190514091224.GA786@arch>
 <20190514140905.GA16844@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514140905.GA16844@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 04:09:05PM +0200, Greg KH wrote:
> On Tue, May 14, 2019 at 02:42:31PM +0530, Puranjay Mohan wrote:
> > Remove braces around a single if statement to fix following
> > checkpatch.pl warning.
> > WARNING: braces {} are not necessary for single statement blocks
> > 
> > Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> > ---
> > 
> > V2 - remove extra blank line before the closing brace.
> 
> When you fix up a patch in a series, please resend the _whole_ series,
> otherwise I have to try to piece together the different patches and put
> them in the proper place.  When dealing with 1000+ emails a day, that's
> a hard thing to ask a maintainer to do.
I am sorry! 
> So please just resend this whole thing, in a threaded email series (such
> that they are all grouped together.  You are sending these as individual
> emails, and so email clients do not link them, making them harder to
> manage :(
> 
> thanks,
> 
> greg k-h
I will resend it again properly.
Sorry for doing mistakes everytime.
I am trying to learn and trying my best
to make good contributions.

Thanks and Regards,
-Puranjay Mohan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
