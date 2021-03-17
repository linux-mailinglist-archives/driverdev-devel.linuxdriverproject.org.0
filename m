Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 907CC33FB6B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73A9B8418C;
	Wed, 17 Mar 2021 22:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muxMWIiyZJyV; Wed, 17 Mar 2021 22:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01ED584169;
	Wed, 17 Mar 2021 22:43:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6ECC21BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 372886065A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjLWTO-A6OaX for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:43:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A7FE60636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:43:43 +0000 (UTC)
Received: by mail-io1-xd2c.google.com with SMTP id z136so265775iof.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T0M/PAXOO+j50lu6FBt2S8BVrDklBt3ZPhpsA7h6VIU=;
 b=FKbO9bkDIfk4bo8Mwm9dhYNZnlXFhXCK21RKldVdDI4L+kMlRS5xPSKmuNHAUax8Db
 PRd1eAjboV2nsqiFgeSCE0XPufR1igedDokyoi6kHnVwWk6doVXi0A43+MJlIl1S6VV0
 snon6E85q8Y8w5NfXGHghllT0MOiUgb2eliWMB00L+1cUiT+kU1SoJBeCxI2hVzXHWAz
 j4JMDFoVEcU3awEb51IVZqkNfKxFtbgGQJA76mPlLpO5/jqb3bj0cA4goDGG/i4yDYqZ
 +T+/FzQRwZQZHsFlhEKbkTSHOnA6xXgSxNBgadC40sG8ydSHuIKeVPobF/5PJkvlRWRp
 mZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T0M/PAXOO+j50lu6FBt2S8BVrDklBt3ZPhpsA7h6VIU=;
 b=QswtLK8+fmfa//4W247SCtXJTShyjuicqhgdkZknSYR66YUMdRwqnHS8JzV7yIldEJ
 AcNJKlxBv9Atgujd1IUeLj1T/pTwQNHRBYqhTdk38dAi7Z40OG2i8ViwV8j/sgsUHKhs
 E843it29ucHdItQPSENlSxtJ1s7Ts9GztaSfJ1piYPlHqXngaUhh+XxxoWYNbyQgkTLj
 5WReG4A/zID/uzNpxYBU/gYukZDDiFJUp70mSShQ3ZN8/gCJ1l0ef35JqQleGyaVj9sY
 FqR/fAIZC9on4wUGXowrUenEZU4nyRGrKKqy3PJ0/zaeWT32q6a5CethMSHXAGs4ZFOy
 puAw==
X-Gm-Message-State: AOAM532F3WtLKGmJ4+sCxFZZgSNJKjSwFE6CX0c5o6fLPqUBTx9twIws
 I334QFURQe/1uRrVv68hQu3trf7ABSEm4GOdYuU=
X-Google-Smtp-Source: ABdhPJz38+d4Us1reJyPt6zL7aG4QPIRGUPfM29fcCQMyQAZUympsEEUx7yKTm6LbfHap1SnllbQM0pahRbQdCZkx4o=
X-Received: by 2002:a5d:9e09:: with SMTP id h9mr8686152ioh.178.1616021022347; 
 Wed, 17 Mar 2021 15:43:42 -0700 (PDT)
MIME-Version: 1.0
References: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
 <20210316224227.348310-1-ztong0001@gmail.com> <20210317051426.GX2087@kadam>
 <CAA5qM4BcQ6+aa1C3_28zLVojwLduK-WZwsEftuasJgo8z0t0ew@mail.gmail.com>
 <20210317065248.GW21246@kadam>
In-Reply-To: <20210317065248.GW21246@kadam>
From: Tong Zhang <ztong0001@gmail.com>
Date: Wed, 17 Mar 2021 18:43:31 -0400
Message-ID: <CAA5qM4Bc5tW9QmeC7MKCO7yivxQrSfgVBwgyFLhipK9w=q7Scg@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: das800: fix request_irq() warn
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for sharing those best practices, Dan.
I was wondering if there is a spelling checker for git.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
