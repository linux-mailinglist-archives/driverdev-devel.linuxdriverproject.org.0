Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D71413BC0
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Sep 2021 22:49:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47AA683E7B;
	Tue, 21 Sep 2021 20:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xI8ncyGOmuyZ; Tue, 21 Sep 2021 20:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2442D82D7C;
	Tue, 21 Sep 2021 20:49:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC5611BF47E
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 20:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 957E282D7C
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 20:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ye8nDpRqvfo3 for <devel@linuxdriverproject.org>;
 Tue, 21 Sep 2021 20:49:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6307F81DB2
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 20:49:42 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id b65so1517953qkc.13
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 13:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=iTGoqFM8qijEpuvk9WwIalanNU02ORS6d7bs4+cIQLs=;
 b=EMaUl6NuWx/O5ziBqc4sxJp4CD6L3fUB/WFE5Zvf1LwfiUQc1MJEeDudtccDcxwMxZ
 923DGM7VenSDxQbkhr4kzi5R2MEIelVx35ubeQn65ZU8hQQXkNIvK6WRhxVoT3oywkma
 AQbxv7Gla9S3XBapgXlFBB8RaVOlTI5e7ifSfZC2RgtzZXKkBQ91zXSVDQ8Q3KbRa1wg
 JEFq2rADdVIFmoMo4BIwnKwtR+rMeUnnO7mMTCcqjpZNLAAQsJFsU4TbHOmCHWq7WevP
 gHLMo6CJex8a5JrbK4oswwBF2NGGrv2d13evyaz3StIL9IhbrXnEkw7bTHBsMUcNiz1w
 ZZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iTGoqFM8qijEpuvk9WwIalanNU02ORS6d7bs4+cIQLs=;
 b=A/TMSJ5cz2Sr25/7xE2dk1oeGRC3YeyH5AEZNBjXxnMBTX2ST84mDk3PBPg4iUmkgZ
 DZqHMs5pFntYRKUfRNK6LALngk+ky5sWw4/fq7o4/8LqIORlaTNRiEZTK7u/PFnRGPYU
 /oj9HPPYIZe3mL0dzjIrflrgr6gbn96InQl6XV+1ZYXV+9CIMlm6+lLDEHuXJa7CcmL7
 5/O9Mr2xx8KGlJU5K4RYU+JYnUudL3qI4IaD9tej9j7mBjvNnOopr5b1HT5067MUFjde
 jFxLhEiOPvpI/5wzMt3hyuNqL1tvbXx5tNa6vFBGT9EwArPXi9/XeHpYLLNGouJcyAI8
 2pGQ==
X-Gm-Message-State: AOAM533UtZ4/UE7qkX9jwb+s+p6goX5iVp4SZ8jbvzlPkH8570X+hQR9
 tKMkNzMTYknwIQW1VfLHZQZjz0iwLVj5i4jTBis=
X-Google-Smtp-Source: ABdhPJyox/on6mZejq1Zh3IrJ66X3QotTJjlPTvqc0oBhrw1XQmpCZb0VvEl/yRwl037dNcDNIeaTNUJhpNZZp3viOs=
X-Received: by 2002:a05:620a:d87:: with SMTP id
 q7mr31112278qkl.173.1632257381215; 
 Tue, 21 Sep 2021 13:49:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a37:9446:0:0:0:0:0 with HTTP; Tue, 21 Sep 2021 13:49:40
 -0700 (PDT)
From: SUSAN WONG <susan22wg@gmail.com>
Date: Tue, 21 Sep 2021 13:49:40 -0700
Message-ID: <CAGL+yoyWreZXqONWDdFKL8sgmfh1hN7ckkhWUmQN7AufjHbc4A@mail.gmail.com>
Subject: Dear Beloved,
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

Dear Beloved,

I am writing this mail to you with heavy tears in my eyes and great
sorrow in my heart. I am Mrs. Susan Wong. A widow to late Mr. Hamson
Wong; I am 63 years old, suffering from long time Cancer of the
breast.

From all indications my condition is really deteriorating and it's
quite obvious that I won't live more than 2 months according to my
doctors. I have some funds I inherited from my late loving husband Mr.
Hamson, the sum of (4,500,000.00 Million Dollars) which he deposited
in a bank here and I need honest, truthful and God fearing person that
can use these funds for Charity work, helping the less privileges, and
30% of this money will be for your time and effort, while 70% goes to
charities.

1) For the sick, less-privileged
2) For the Widows and the motherless babies
3) Orphanages or Charity Home.

I look forward to your prompt reply from you for more details.

I will like you to write me on my Email address;
sosanwong123@gmail.com , to enable us discuss in details. I hope
hearing from you soonest. Thanks for your understanding.

Yours sincerely

Mrs. Susan Wong
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
