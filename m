Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F88E8908
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 14:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF862879A5;
	Tue, 29 Oct 2019 13:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0nwwUPlXICA; Tue, 29 Oct 2019 13:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FD108781C;
	Tue, 29 Oct 2019 13:05:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9381BF86D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9911785816
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXYFRQ126gek for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 13:05:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C75A844A1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 13:05:41 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id i185so8828089oif.9
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 06:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I1m3xu+m9D6gNt192ldAysUnXZ1pnKI/Ej70V8nnp/Q=;
 b=Z+YX88goKKBun8hGKQzGum6fxwq27ys1g6YH8mzsIOFHjZeyo187uDWpv9vwW/WtQY
 IhmQsiwUHlb15K2hPLJuKkupAkfHS7Onbgi/YlW90rAKiooUkKIeAzm1mdgBj3LrQibk
 dL1h9sf9joqZ5kU6XHo3civXlReFlcQgLzizNYxvdbylsl+TMjCzZZgRGxLv0xyNqmqX
 1roCCPyB7/4zGEUdoTCCLX+L+wHqj5ARSlp+bNRvA1ULMzPFAheyhB3fDZqo1IQVM2Rv
 KZJ1V99zSEykVE1LQGtq+xYUEztrxqnjxSD+vJKenwf/UDB5b9cl1MYzcek5AI/MIHo9
 LzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I1m3xu+m9D6gNt192ldAysUnXZ1pnKI/Ej70V8nnp/Q=;
 b=nlmuS6QCz89siuM5czGbp3RcQINgqQ72WN+Tf8oyqiwq82I4eoVv+8vwvCSxBwb57n
 9nMvKimeEr4jh0PtoPfqK0WpQVqthPK7GmFnbIExVGANCtupbIy6xnHSAOz9hjgVYPyP
 k6tvYe9e8wT9gcAWjc3+nM476yROeHwmrrKliSJgawpXH2xatnMx9Mws7LTk7PKlAG1I
 aya6IMcca+wAiKkBZZ28wlOWCYiFcAywMlqi1ZFF9EGCRIYs4VXxv5LuPlTN708ABdna
 sVJ3kDa3NgKdkKXRbbJ9cHB3iOmW6Kue/IPHTAKne6dYDErBADsyLWaxO2e5gSsvYpcS
 rqcg==
X-Gm-Message-State: APjAAAVDzgHtCesLMXQbRGqhN0zhLxdxYjnGLsfgagvYoRuoR2JCqWIH
 zzM88k8kmFVuVY5bemF371KrfaBupGA38NcIifk=
X-Google-Smtp-Source: APXvYqzcuXK39zeqZTtDeXlSdcOoUxbBCJz+mD+QEuH872R+9IM1iojFTcgFg1Pi9wN5zc2183cyT1KJYO/hUnpAdu0=
X-Received: by 2002:aca:90f:: with SMTP id 15mr3812140oij.92.1572354340215;
 Tue, 29 Oct 2019 06:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
 <CAGngYiX0zoAQB=SEoXfoMm9u_JzHu3eLErj4zmTYtSAoDwkp6Q@mail.gmail.com>
 <CAGngYiXxagQMiHA-pZupTPHfyFz4kU=QOrvM28L_jSV1VGw=jQ@mail.gmail.com>
 <20191029080336.GA493801@kroah.com>
In-Reply-To: <20191029080336.GA493801@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 29 Oct 2019 09:05:28 -0400
Message-ID: <CAGngYiWDUbnLCDMM4JM-Jn3GNBvQsbrD5NfNmL59q-3DVeD3uQ@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: make use of
 devm_platform_ioremap_resource
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 29, 2019 at 4:03 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This has been in my tree already for a while, can you verify it is all
> ok?
>

All good. I see you took Cristiane's version, not hariprasad's or YueHaibing's.
As long as one version lands, all is well :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
