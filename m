Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB5CD3C30
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 11:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9316B88071;
	Fri, 11 Oct 2019 09:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlGEzCFyIG5s; Fri, 11 Oct 2019 09:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A78086849;
	Fri, 11 Oct 2019 09:24:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC5E31BF330
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C96B1884C9
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id noQ+286uDLYa for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 09:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E2B1487999
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 09:24:18 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id b24so9473707wmj.5
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 02:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-description:content-disposition:in-reply-to:user-agent;
 bh=WIjp9+j6LMVkQvyGCF2ejoVmRubycC08K6/Baf6C9Nk=;
 b=Wa/nkw6VJ3P3BW3d2/u7Yk+ZPRQ38ORiG9lld+ALso5woTyJoBcwkSzdtNRwREbDqZ
 yFcu7hVw8Gk0v9GxrGwlJw9/hQQ8i0Lgz2lqCV/Sz+UHGTtKeFIkyVjUeTb8mKG9F64B
 3In4KVrhpNHxo/Ye/dMjRnBWkFjOsFPi/0qDPGD4sGhbPCk17Zjh4zzWogQ3D6ndROR+
 W5m5npPVn5818D0oAt3LvYiqon17muDpgCTHLuWyWO7xIIncz7LSJrNoJCfQc4bZGh9i
 0FMH4OUFvG4nAl0V3RmjFz+yeiYJEylBt4O5LHGuBc50wCdFpoj0uwh0ugRBFDQj4NlT
 PH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-description:content-disposition
 :in-reply-to:user-agent;
 bh=WIjp9+j6LMVkQvyGCF2ejoVmRubycC08K6/Baf6C9Nk=;
 b=MP1ycxGwFbYEIDi0k+eQeJol1IXM0n5oNlcoSmMuPs0D3XxRvu/04nQckQko+WQn6V
 r31D35MuicSaTC0Ike4zHQTMOzL/sYmE68vGbmCIHIqTmK9TI07XYCvSnTxLnnzfmGAi
 RYDOAsTgsXPYeDmEycvRSu0AD/sLazwiU79WLYrtnSfe5kpt5GJWKesf7KjkmL8D9gfv
 krglNJYMY5e/b6ksmNVisYDjnhWbc+quTwliAonbSX4xfQ+4wkpzh3uv7jM7qJbl3ElG
 nu2/YqI8y2HNyxLdiYYVoyqP/LxOOdRV6NchQ5Grf5PKZYcgSxXmWqwyUZWubzl79OBt
 RgKg==
X-Gm-Message-State: APjAAAVLc1kEtb8gGhSd+bvDykBtGW1Az5D3/ksoGvww/FFcrxsygDRq
 ttpAQIVwq6++SaZDmdMVvHw=
X-Google-Smtp-Source: APXvYqyaQRZtHFF9tI/xmOcgidoH4mw9ucfAtHWGvRC6GJ2WNL6ZtlWOUdCBInDkBPLxi5UW7kWDWQ==
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr2471596wmc.48.1570785857217; 
 Fri, 11 Oct 2019 02:24:17 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id u83sm14078573wme.0.2019.10.11.02.24.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 02:24:16 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:24:11 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/5] Remove declarations of new typedef in
Message-ID: <20191011092411.GA10328@wambui>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <20191011090100.GA1076760@kroah.com>
MIME-Version: 1.0
Content-Description: evel@driverdev.osuosl.org,
Content-Disposition: inline
In-Reply-To: <20191011090100.GA1076760@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: 20191011090100.GA1076760@kroah.com
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 11:01:00AM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 09:02:37AM +0300, Wambui Karuga wrote:
> > This patchset removes various typedef declarations of new data types
> > in drivers/staging/octeon/octeon-stubs.h.
> > The series also changes their old uses with the new declaration
> > format.
> 
> The subject line of this email seems to be lacking something :)
> 
> thanks,
> 
> greg k-h
The ending of this sentence seems to have been cut-off. Sorry!

Thanks.
Wambui Karuga
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
