Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F9B41C189
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Sep 2021 11:22:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73EA56065F;
	Wed, 29 Sep 2021 09:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CiWY5AwckUZe; Wed, 29 Sep 2021 09:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D271160652;
	Wed, 29 Sep 2021 09:22:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF79A1BF2AE
 for <devel@linuxdriverproject.org>; Wed, 29 Sep 2021 09:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF1914071B
 for <devel@linuxdriverproject.org>; Wed, 29 Sep 2021 09:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQkAUCsWjjlF for <devel@linuxdriverproject.org>;
 Wed, 29 Sep 2021 09:22:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72370406FF
 for <devel@driverdev.osuosl.org>; Wed, 29 Sep 2021 09:22:36 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id j5so3107081lfg.8
 for <devel@driverdev.osuosl.org>; Wed, 29 Sep 2021 02:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=pRp4uGUNTnL3zIP7ZkjQGVHzB+m4RFp5zwN3JbYDBEY=;
 b=SEFkufTx9m0oxnk6fPmaUK8GDrrYQpZrughsi6cblbdme1oqgMjFHzc7Am03+YTuhO
 beiWybySf5jYPitNEJ3DJpnN5py9GcaqKjEUz2EmDIkee6ICpL8pKzPD1cWcDsGl22M8
 TO9b/9bBx307atJ6yGp9+Kv/7O3w7ldQL80jdTWJN1boFpaY53t/VfUjW9bJnEgkQzf9
 dkHIIlZDBfHBdn0GdUMifzIXhgcmnLd5XrJAtWwNtCmHEFirN8dy+RqD+48tGdoUolLQ
 X4ceRcgJHPOBXM5t1meMVfDxqIel4zeOa5Pc3tu9gJvw27wbWSLZzIYepoQ0o6174Kt8
 shzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=pRp4uGUNTnL3zIP7ZkjQGVHzB+m4RFp5zwN3JbYDBEY=;
 b=7FnkmZu8avyDUJvGQwmoCHSMugrWpNua+Anp52lWLgTIifwsAHjlEJDwws5h9LFcCw
 5leqIFzRghhdxy38z04vIcayZKMM1+PHej2libZrAPgh9b7vjtqhj5/oPwX4TOmnEMI9
 mfYpy1W4llu/5CI40mo7AcH8D9G5UT5hvXedwQurEiCnqVR640j3tmnEZ26RAv1PfcC4
 M0BmG5Z6Kws75pkoGr4trmz2A0ZJRq2lMepUu18v6m4ssh9rze3CIK6KOoLwxME1ic6q
 VFU63z6x84m1urs55xQPMDKsWxD+94qyfp1e6Ki2F0FbqAmd7sJqXWKd8Pf+w0G+MiQ+
 avxw==
X-Gm-Message-State: AOAM532Q5EC/T1lb3sGmcAkJH7Vny+CjQ2G1cDE5tFG3N5qDecAc0qYb
 T9xzjl9nF0mM4TEu7AlF5CFnxuUFS89MwD/Ufgc=
X-Google-Smtp-Source: ABdhPJxHet2/s1bQAn/RJPBIf2Pd2IwayYusIn6bF8nCkAjjCTurB0t8/Kd5A9UDKt8yvwv/YzXXcEL7EQKrBZElzXA=
X-Received: by 2002:ac2:4896:: with SMTP id x22mr10595218lfc.257.1632907354116; 
 Wed, 29 Sep 2021 02:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:651c:102f:0:0:0:0 with HTTP; Wed, 29 Sep 2021 02:22:33
 -0700 (PDT)
From: Evelyn Philips <evelynphilips517@gmail.com>
Date: Wed, 29 Sep 2021 02:22:33 -0700
X-Google-Sender-Auth: dgMgT3DTWen_5l9l-N08ZCagp1A
Message-ID: <CAOBvALuEZH7rdAfCJsxHbS=MnyAjxWqDhB8cJF6jMQfftVvnbg@mail.gmail.com>
Subject: Hello
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

Hello My Dear,

 I am sending the same message to you. My names are Mrs. Evelyn
Philips. a widow diagnosed with brain tumor disease which has gotten
to a very bad stage, Please I want you to understand the most
important reason why I am contacting you through this medium is
because I need your sincerity and ability to carry out this
transaction and fulfill my final wish in implementing the charitable
investment project in your country as it requires absolute trust and
devotion without any failure, which i believe that you will not expose
this to anyone or betray this trust and confident that I am about to
entrust on you for the mutual benefit of the orphans and the less
privilege. I have some funds I inherited from my late husband, the sum
of ($ 9,500,000.00 Nine point five million dollars.) deposited with
the Bank. Having known my present health condition, I decided to
entrust this fund to you believing that you will utilize it the way i
am going to instruct herein.
It will be my pleasure to compensate you as my Investment
Manager/Partner with 35% percent of the total money for your effort in
handling the transaction, 5% percent for any expenses or processing
charges fee that will involve during this process while 60% of the
fund will be Invested into the charity project there in your country.
Therefore I am waiting for your prompt respond, if only you are
interested in this humanitarian project for further details of the
transaction and execution of this charitable project for the glory and
honor of God the merciful compassionate. Your urgent reply will be
appreciated.
God bless you.
Sincerely Sister in Christ Mrs. Evelyn Philips.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
