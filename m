Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB0C3FF035
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Sep 2021 17:28:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 334D04075D;
	Thu,  2 Sep 2021 15:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t02RIOQaBpXm; Thu,  2 Sep 2021 15:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7985F403B6;
	Thu,  2 Sep 2021 15:28:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A75A1BF4DA
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 15:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 573728301F
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 15:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKch98UQFdkO for <devel@linuxdriverproject.org>;
 Thu,  2 Sep 2021 15:28:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD5CE82FEA
 for <devel@driverdev.osuosl.org>; Thu,  2 Sep 2021 15:28:08 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id b4so1903295qtx.0
 for <devel@driverdev.osuosl.org>; Thu, 02 Sep 2021 08:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=Q+Y0vhwco500Y05ylOmEB6X3jfVg0W+7mov6++1Cqcg=;
 b=pWU0HAqknziD2GBDNj3UnSfIFAWyNmmbjt4pHvFne3MpOa6rNaMH2zCo/lX+1eXy0Y
 4svpRhZ5+ttPC+m1zqH452Pg5MpQ3eNyQ5tQx4EiiYRW1KPQ3DZqqadpb8/u51/P9D1y
 /ptdD2EGftBtdOj4SowOCYv2C+Kr/BNEU5k96wuTTDW6wHilkd2t/8hiNiM5p/FQsBiH
 5ZsYLxpGFZ3Fdhltgu1znqoz7hHYO/9BP3NZoI9NIxP6qnODuPD9b7kyiW8pzhNIabGn
 phGJlAuL4offlwafZT1ewvFMS9eDuULlWN3ReRM8SPpXAmpxt2E9UF29Wf+i5EJXYU14
 pjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=Q+Y0vhwco500Y05ylOmEB6X3jfVg0W+7mov6++1Cqcg=;
 b=ewKsDCQE6Mk7ffCL1kMSYhKGnjVjgAWZyCka4ZGHhxjr1pGpJ5pY6Dl4+Pv95qiEq6
 PFutk/cNSCTg4LdctQ9Z85RC0Lp6Rfgk/k247AmTEpT1emVkyeEfn/pE1vf6MxDb40r0
 kb4yuUBGTxP5EZffhOLXUxDXA42Gn6J4pTHF5jM29xZB8GmuGiPKPjR6Or57aqAKOYxi
 0u/wGPjy8uxj2fNSzZFdvji77QRgS4aqcI5n1IFZwcgiZ4+WUgHzmJ2obphRyJGkFdVj
 8TQFcKP4Aw4YT6NyWR6Vn4/zAN6t0nk1qOFYWHlcSo87wiUP9HphpceTqLEfdMUPrn0i
 /rkA==
X-Gm-Message-State: AOAM530rnXR7tAzJm1C8Kc9JnYKURXLxrP81ihf8C+4I4lxsxHnMtz1I
 uyFQ9wXPYKXfQGrg9MsxeGY/m/pBZAhtXXEMAoE=
X-Google-Smtp-Source: ABdhPJzqujTycEriZOSF3yPhq9GnMFchj7K+ekmWoD6co9mYMu2fpcPuhwKylrXyA7h/kP2IzRsZfMoMN8KFL9BfR14=
X-Received: by 2002:a05:622a:1a8c:: with SMTP id
 s12mr3413198qtc.232.1630596487561; 
 Thu, 02 Sep 2021 08:28:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a37:e84:0:0:0:0:0 with HTTP;
 Thu, 2 Sep 2021 08:28:07 -0700 (PDT)
From: "Mr.Sal kavar" <salkavar2@gmail.com>
Date: Thu, 2 Sep 2021 16:28:07 +0100
X-Google-Sender-Auth: 7s4URtWG93pjvyLxf2I-3WQ_06g
Message-ID: <CA+sSZDKQspMpZ38xcBRJdG4-KcM=uErFEdUTxuWKY3Eg0Qyung@mail.gmail.com>
Subject: Yours Faithful,
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
Reply-To: salkavar2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I assume you and your family are in good health. I am the foreign
operations Manager.

This being a wide world in which it can be difficult to make new
acquaintances and because it is virtually impossible to know who is
trustworthy and who can be believed, i have decided to repose
confidence in you after much fasting and prayer. It is only because of
this that I have decided to confide in you and to share with you this
confidential business.

overdue and unclaimed sum of $15.5m, (Fifteen Million Five Hundred
Thousand Dollars Only) when the account holder suddenly passed on, he
left no beneficiary who would be entitled to the receipt of this fund.
For this reason, I have found it expedient to transfer this fund to a
trustworthy individual with capacity to act as foreign business
partner.

Thus i humbly request your assistance to claim this fund. Upon the
transfer of this fund in your account, you will take 45% as your share
from the total fund, 10% will be shared to Charity Organizations in
both country and 45% will be for me.

Yours Faithful,
Mr.Sal Kavar.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
