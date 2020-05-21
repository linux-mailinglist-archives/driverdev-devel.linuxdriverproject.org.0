Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 225EB1DD119
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 17:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13684886DC;
	Thu, 21 May 2020 15:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRkvLt7ECmfq; Thu, 21 May 2020 15:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAE95885FB;
	Thu, 21 May 2020 15:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6BD71BF3B5
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 15:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C32CF885FB
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 15:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pG-UyIlgwQL for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 15:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77B6F86B68
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 15:22:20 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id b18so5807449oti.1
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 08:22:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uw/ECKoYgz/YxRjuJpnhpsZS31S0r5IQsD1sVVnFwsk=;
 b=Wp60Gov7IRgSg9bWMIZbiGMwt6D/2/nI4uKLHQ4kJGrpbvcZ31/M/w4D0RrCwCssQR
 TmHSTuPqE/xczbBHv7bE2o1SZs401KxsEYs/I48avi9V/b2jWB6E42SAqRMNaD7cPluE
 Dl4oXvKUb+oAnQvrFIF83ZKmbmNC1a+T7eC6x2EkW8nTqTqeyM6WD6UH+Xp92phKLzUc
 0mW/z+stq1fzcu2xiZpHHGoxh0ZH3itet16RuZzsKWBwvQnrSpgxJklcm1go4w9y3YJd
 nQQyjKctCH2F1ZYhLCv+tHGmLHsXKlnpE+DWkfnEmgM2y9NINixOz02CNIn0MwEsm9R8
 uZZQ==
X-Gm-Message-State: AOAM532BdVXZ2H0pMY9eo96rQmM7m2nViFxKxaU1mq3zf4QFXa8I0OYj
 tGnsQgh2+LyGQ4yyzHqQT/dWBswnqIBlv6MrNdQ=
X-Google-Smtp-Source: ABdhPJySYHHfJZQzmSAFX4YreFFQLn9SDcqp+e2Kz8pIAQ/fKPfh6o6bUIqNhlRZ/GFZaNjXxDQc9ZETXw93O7R/z84=
X-Received: by 2002:a9d:3d05:: with SMTP id a5mr7537138otc.262.1590074539694; 
 Thu, 21 May 2020 08:22:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
 <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
 <20200520150230.GC30374@kadam>
 <2a46539d.b977f.1723553aa81.Coremail.dinghao.liu@zju.edu.cn>
 <20200521091505.GF30374@kadam>
In-Reply-To: <20200521091505.GF30374@kadam>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 21 May 2020 17:22:05 +0200
Message-ID: <CAJZ5v0irLayBUPRWNT1tcZivz9inS1YbUgGj5WXvucLKKwRQAw@mail.gmail.com>
Subject: Re: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance
 on error
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@ucw.cz>, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dinghao.liu@zju.edu.cn,
 Kangjie Lu <kjlu@umn.edu>, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 21, 2020 at 11:15 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, May 21, 2020 at 11:42:55AM +0800, dinghao.liu@zju.edu.cn wrote:
> > Hi, Dan,
> >
> > I agree the best solution is to fix __pm_runtime_resume(). But there are also
> > many cases that assume pm_runtime_get_sync() will change PM usage
> > counter on error. According to my static analysis results, the number of these
> > "right" cases are larger. Adjusting __pm_runtime_resume() directly will introduce
> > more new bugs. Therefore I think we should resolve the "bug" cases individually.
> >
>
> That's why I was saying that we may need to introduce a new replacement
> function for pm_runtime_get_sync() that works as expected.
>
> There is no reason why we have to live with the old behavior.

What exactly do you mean by "the old behavior"?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
