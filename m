Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8274849A046
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jan 2022 00:26:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C160184C4C;
	Mon, 24 Jan 2022 23:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnfOdTbycFEl; Mon, 24 Jan 2022 23:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29BF084C41;
	Mon, 24 Jan 2022 23:26:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3C471BF296
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 23:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2586605A4
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 23:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNXocNX0oWZS for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 23:26:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 204BC60B09
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 23:26:39 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id v123so24056762wme.2
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 15:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=9QG7nqKtgJmtAtajxYHgw8Tjr2fbVE88KF3FisGmd6E=;
 b=QZuZU61Bevos4oBZFfPt63pRl1Np7nvbI+HGTvuCu5AZPO9Sh1PCnIpEHVShQljbrJ
 gxuZbgxGkStZgs4FepGIeNXmySrfn8IpVUWmokLQfA2DsHWiuUN753VEZ8IaBSfSmDQB
 lVF1pzWlNj/QUn84LtWvsvNjhX3KDUzSGpX/TPsB6+HszFehYUa4h5rQ+vGM7zo3Isrw
 +juixabl29ddfqSifnrEIQzFY17dhQvt4rhUn8ZHlePYoxGmsWYg6xpGY6Mz9Qg9OXjH
 TOpUnrtIEw9m+YBdezVDKmXa78seut8JM8IP/pm1WcGBTG2vZsJ3Dso3Bi2rXpWY2lSd
 zKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=9QG7nqKtgJmtAtajxYHgw8Tjr2fbVE88KF3FisGmd6E=;
 b=b2aV37fUCvO+3LkEDGO7ngRaQBGbsTOpF6CfTgjKXplYr+JWGFdxyPPrmEXQl+FROd
 RivulmeQMxt94O1b3ESPULKVC8WZtVBUShyLXLuKiETjAQLcgeNxfUTFQ1VLREY+Efgk
 tiw+cwv6QhMG3cos7jZwCkazkiSQbO5XLVCVMieHLyJupn8kbSRfHKhG/hDCHdqezVyE
 uB3sdiES9zWy3V/PLkyeqB6MNllkV6dSzGCvDvBO2YJLtU/yR38YfwHaWWvXYUgNzHar
 YMpP6PTsI71q448k4Wj0mlo8Te883q3lMzNU2qiR587MKiOD5Es3bw8FknkIB9U0mU2f
 JQrQ==
X-Gm-Message-State: AOAM531/A14LnXD4/p16z/oRKLjrFZiDa7XphCtkSSulJ/bd0d11sxxX
 N6M5hYUvIqPaQvlP/y5qogItwWGpaSbSM4kxtuo=
X-Google-Smtp-Source: ABdhPJwnXs49vt5roAbYDtuXXyxJInV8GWzvVl560SRUYzEuqBtiY+kU1qYAudJrrtRx+vNIIkeV7LLLGjah2bHnzi4=
X-Received: by 2002:a7b:c0d3:: with SMTP id s19mr488537wmh.20.1643066797251;
 Mon, 24 Jan 2022 15:26:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6000:2ab:0:0:0:0 with HTTP; Mon, 24 Jan 2022 15:26:36
 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Mon, 24 Jan 2022 23:26:36 +0000
X-Google-Sender-Auth: cmC6u5il8lKSftu_J9Hgwgy-Y80
Message-ID: <CABio39-BN5a42_XhJUA2jnT5vrZVxFAMMHsYvBbJU1-dMZjfXQ@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,
Nice to meet you

My name is Hannah Johnson, i will be glad if we get to know each other more
better and share pictures, i am expecting your reply thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
