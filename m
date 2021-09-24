Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D956841770F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Sep 2021 16:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB64C614C3;
	Fri, 24 Sep 2021 14:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qoFw2XdKamZL; Fri, 24 Sep 2021 14:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34FCC60762;
	Fri, 24 Sep 2021 14:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 688A41BF8A8
 for <devel@linuxdriverproject.org>; Fri, 24 Sep 2021 14:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FAE44075C
 for <devel@linuxdriverproject.org>; Fri, 24 Sep 2021 14:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjkeiUJCMOf6 for <devel@linuxdriverproject.org>;
 Fri, 24 Sep 2021 14:49:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E98C9400E7
 for <devel@driverdev.osuosl.org>; Fri, 24 Sep 2021 14:49:12 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id m3so41570287lfu.2
 for <devel@driverdev.osuosl.org>; Fri, 24 Sep 2021 07:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=pw1lx70fguPTutmUDcV0fxdUgcw43EI3MCCtmyMcY9WjggVc0IcoKr6ngIMqtmjQQ0
 V+/m34fAFx6r1+/0WaMUFjsFSUt9MHG0n+cKQ+Il1c26+XVIy64GNrrmoFJ1mAc1wNZT
 BjE9sR+gcMqw7yyQALC0XztFKC5pGMTL/iSW+Lq4Vcw1npSIhoABneoGjV7B7Ugu3jff
 blxjfuErdWErw+UidF3fdP61qUGz+j4X6slT9U7+eI/B9TDrhoTaTrlZ9avYS2iQHdH0
 2n8M8bFZam9mhsCJ6DNejeX2CXdwgZ+QoE3sMCtB/CGQunsx38retm8yUokLtwvFEzGt
 7/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=FC6j/qmjL6M6+Zb15WYgt1aKgiaYa7GmUwWFmR5PAWR50sQMK7d0Xy/uA+hzCnfbUr
 0syt1wh+HfYK5rwI7WVjrtROv55fOm373Tth8UNXMuxt4x1lhdalPWe1Nd4OR8uFguTw
 u8vCMK8RgJd963Nf3ZZzDgsbmCQHoH7xweRO36Jv+E+7i59BCUBGPlO90UBYqWjkk0vX
 lHXDB52OMkK+PfOJN19VA81dSvIuIWdTg46KQdeZMhjxa6JCs+rouEB0xwBDfupmFi4W
 erGI908jIAOoStEkN8SXnN9ekcN9jOc9n2b0Szcm58DY5DzLS40F3PI20m0P+n8kbQpS
 ynCg==
X-Gm-Message-State: AOAM533cKsjNxJE9xy8e667f4ipLpVsRC1vcmLjnXvoh2pyjTTA8X3qD
 6wkfwKzDco9Fx+4FTUuvivBiWuuQS7mzT1ZdRac=
X-Google-Smtp-Source: ABdhPJzd/fVZnI8CAP/Dmttlr+GigNP8HxwMUZE1NzoZxX3Z8y5Oy9/7CHNLVe5FqPEe9oh9qRyG6IwKKcQTL/zbxIY=
X-Received: by 2002:ac2:4c28:: with SMTP id u8mr9673707lfq.516.1632494950544; 
 Fri, 24 Sep 2021 07:49:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:2628:0:0:0:0 with HTTP; Fri, 24 Sep 2021 07:49:10
 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <mohaiyanibintishamsudin22@gmail.com>
Date: Fri, 24 Sep 2021 07:49:10 -0700
Message-ID: <CAHp6nLR0KmhbxY2awBVFcvRsrpHwuGkKjY5GpDFCd5mv9d3u6A@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mrsaishag45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I came across your e-mail contact prior to a private search while in
need of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment funds.

Your Urgent Reply Will Be Appreciated

Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
