Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A92B4A3C6D
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jan 2022 02:11:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1BA54091C;
	Mon, 31 Jan 2022 01:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9e6oEof6k2j; Mon, 31 Jan 2022 01:11:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A186C40914;
	Mon, 31 Jan 2022 01:11:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40BA41BF3ED
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 01:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2697E60B0C
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 01:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HZRDqQSBI6O for <devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 01:11:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0578660A9E
 for <devel@driverdev.osuosl.org>; Mon, 31 Jan 2022 01:11:22 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id w81so13506081ybg.12
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 17:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=nWxzeyezrAnjemmnmGn1Pxt+YCj4pS8G0QD2+qUMSNn6cWqe0chSiQPJru6KOh1Gtb
 hq+F6ixs3nrAta+UYMF4KFMoBbCBuWfkpkN3HNKnhA0tRtrw/6kB/LIOyw32b6FkIL50
 pLsbAWVfYtvw81RiOHrr1yHWNRQSzAspJTHnjRZtsrdpARMA1v6qxJZ9T0e1clDaflj3
 NCTE37HXpycvWi6dGlo18OfzHJle/exMAOPXfJBRs36LZeWreQ0cGzEp8hSzvMP42x0S
 HAr7phq+sNT2Xc2cZ9EOx2KKvvajAAqb88yoESAs0ojiBi4vMZI9ug7dja03e8KvgUlm
 Rmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=BPeH/z43PV0gN2RqfrgONDbDyLCPL26J9z6rGWsk7OrXrbyTnGwN5tyS6vi4HjTbRF
 fKYBnRXfVbxsTv9R5333eX/HwtatuKYVvhyzK1E9azjvEA2iBTEdp3PMYuDXTGzMgsF5
 xb9qzTVRyNxG7Z6t+n6NCXq0hB8TZCcXM0u3SEQa28Ylqqh6r1VWnV3snCO4oN1Aj9yK
 OY9ZAmg4im8mkqh2Pnu6YLFWwTIxZSS8qaLTcqcvOIXHMk20HdnbVDqscN1VErHZkiX+
 9VqC0981a9j0l36Sm9TvRWgN48XtDS4kAWZK6/Hrz3He92w/DAgF7k0co0eBh9bnFG+C
 Q6xw==
X-Gm-Message-State: AOAM5328/6m1KuPLzn07z6DBNbTpDjT4nlff/z1KqdY5dYdo3hFz3pZE
 KEXsuANwYQTqNS2oLkAkEXpqOcXX3KwO93U5+OU=
X-Google-Smtp-Source: ABdhPJx56Vv58rulO0MEiyw9J2BY3uRm9UNjxpG0bCnGGx/BUi2buvBzb5U53LVhXfj/9g/PIW/byzQTRKdhe3VF7Rk=
X-Received: by 2002:a5b:14c:: with SMTP id c12mr27845106ybp.71.1643591481917; 
 Sun, 30 Jan 2022 17:11:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:e247:b0:202:59e9:ef28 with HTTP; Sun, 30 Jan 2022
 17:11:21 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Mon, 31 Jan 2022 01:11:21 +0000
X-Google-Sender-Auth: UkaFWgpLe2HHBIxIKhW6KO3zcnE
Message-ID: <CAGdet0-3pWNvXF9SKfwdWt+sdx+kNSa-EXqoptK_rbp9y6+3Lg@mail.gmail.com>
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
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
