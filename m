Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DB52543F
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B57886DDB;
	Tue, 21 May 2019 15:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDw6x5vOTs1m; Tue, 21 May 2019 15:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A9A785782;
	Tue, 21 May 2019 15:42:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0321BF4DA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06710868F4
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0HeQRqaDmRg for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:42:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6CDF183791
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:42:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8A46208C3;
 Tue, 21 May 2019 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558453364;
 bh=YVqGX7wPjOLgTlzR5jmtZLS+DKkLdxVEO+PlCNfxMZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bRIh4826Y5QBpUzIJG1tI+RLUmDl0Z2OvLJ4ibal5FrYGZyjhcM4HfiBtkm+GktY2
 wuk4rJkBVFh36nGG1W+7gdxjEFiL9bf+fm0DmtwHfTHBynvQmG4fim8XRUridN7lDv
 35aCs0LXQmFBgX55Plpdkdss/VJ2qI8I1RgExZws=
Date: Tue, 21 May 2019 17:42:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
Message-ID: <20190521154241.GB15818@kroah.com>
References: <20190521145116.24378-1-TheSven73@gmail.com>
 <20190521151059.GM31203@kadam>
 <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 11:19:59AM -0400, Sven Van Asbroeck wrote:
> On Tue, May 21, 2019 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > There is no need to use __force.  Just:
> >
> >         void __iomem *base = (void __iomem *)context;
> >
> > For the rest as well.
> 
> Yes, that appears to work for 'void *' -> __iomem, but not the other way around:
> 
> +       return devm_regmap_init(dev, NULL, (void *)base, &regmap_cfg);
> 
> sparse generates:
> drivers/staging/fieldbus/anybuss/arcx-anybus.c:156:16: warning: cast
> removes address space of expression
> 
> Would it be a ok solution to use __force in this instance only?

Ick, if you are using __force, almost always something is wrong.

thanks

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
