Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7BE47E7FD
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Dec 2021 20:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A5AA40ACF;
	Thu, 23 Dec 2021 19:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXhCMIiRNbwH; Thu, 23 Dec 2021 19:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B1A0405C6;
	Thu, 23 Dec 2021 19:08:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4201BF2B3
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 19:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE5CE60ABD
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 19:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zBRgjSuDijFb for <devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:08:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F13A460ABC
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 19:08:26 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 rj2-20020a17090b3e8200b001b1944bad25so6432057pjb.5
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 11:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=nLV7On4KJAyl5X2ikNqGMI8S23Tx0u7zu/A8uyFo/n1z4EOt6M1jnvVm+XIAofYF2t
 NfJqwJqoQ6DDRt8Ft+xqYc+C3eS7mu9jT6NffB9ku6JLLHZiIHP6njbEuoKY24mvWhRB
 e0y6q8Sqkzsuz5jAIoUDf4LUgqCPn0fVqZtKouYtoxyrN/CDv9mdJWxZpGOza8vpRZlF
 g4IvwQ80eebb6xUB9aLcilz7igWcWLafB3u9BfKRerdm6xNkbSJBz1vmFqspjybs8JGB
 ZLLAP+j/jXV/B7K8sv+iqT3paBdcbRs/5LSd9wEm4eyHgH5gvThQUPG2FT6qorKLTbrz
 0tJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=zNF8cB44x8eXIRWnAcCMoDnaRRGIsVKQvQmyVl5SSSVzzLe2F5v8rREFWmjqg9rCda
 YX4wc4nBTHtIzz2oXQbRrnm0GBfLbSQ0ujFe/IQLBKx57pe/EZD6nmCEq4ypEeyTZTmD
 kpeCNmeuWSUbMaJW5DiCNfB4NGXq4QkYgu2Y7bb1OD0VxVtv9mogCgxS00dFi4cTGPv2
 9nnH7Mg4Bhrfydgyjrx7yMsogFNIQpb3JT7IXrt37/3Ks9GBUUtgxwWGnUsRku7epNca
 BorgTQKrYnv2z1Km6IseUd78fJTZgNi96d0JZg/8EBTFlvL58v+Ih+u7tGPnOZt0vlWn
 IaGw==
X-Gm-Message-State: AOAM531VYqAeZC0qvg6YOX6fCFeEGRGXQbpnINPsHRQev9e3HgVeaFNu
 rgW6P0FzpL/e/5stDRaFLy1cOo8q2A0uE7BZQXs=
X-Google-Smtp-Source: ABdhPJyNhAOQA0hSpBWSYCtp+K0IIg7pW7icgdeD0guzpnHPPxE4MZTUpXWHBdk6cpLdGPg+7nHxJO/RlMggPU7METM=
X-Received: by 2002:a17:90b:1b46:: with SMTP id
 nv6mr4050372pjb.161.1640286506102; 
 Thu, 23 Dec 2021 11:08:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:789d:b0:68:7657:a7bf with HTTP; Thu, 23 Dec 2021
 11:08:24 -0800 (PST)
From: "Rev. Fr. Paul Williams" <melindagatesfoundation53@gmail.com>
Date: Fri, 24 Dec 2021 00:38:24 +0530
Message-ID: <CAMk=7SRj5x+gPPP+_NCGJAmnFHBBypfzJQarYdwv1cCACv-Uyw@mail.gmail.com>
Subject: Donation From Williams Foundation.
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
Reply-To: revfrpaulwilliams2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Contact Rev. Fr. Paul Williams Immediately For A Charity Donation Of
$6,200,000.00 United States Dollars At E-Mail:
revfrpaulwilliams2@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
