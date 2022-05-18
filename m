Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1314252B94E
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 May 2022 14:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 898A860E0D;
	Wed, 18 May 2022 12:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceUaYvPV5Ts2; Wed, 18 May 2022 12:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 423E360A74;
	Wed, 18 May 2022 12:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 778E21BF4E4
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 12:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6561D4050C
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 12:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rYbZahR_9Hl for <devel@linuxdriverproject.org>;
 Wed, 18 May 2022 12:11:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E931840602
 for <devel@driverdev.osuosl.org>; Wed, 18 May 2022 12:11:22 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id
 a23-20020a17090acb9700b001df4e9f4870so1847688pju.1
 for <devel@driverdev.osuosl.org>; Wed, 18 May 2022 05:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cgWCcoEv8oDnYornbm8DTJVNNpb6nkaOLXyVQuMb0lA=;
 b=jMWO7ozvbAXe8v179zyEWt8uk7+jP35UEJGfWEPcK6YChgnPGm9z1W7WfkIt+U64Ob
 4PFqHTbwzwRtdrG4oyfLiq63mItaKTiuH5tvbYtG+Qui/dszVf+lkvRLJeYNLtshj9P5
 47Dz88qbbjZF/fdOiQYIEgsriQBk/dn61I/Xvi46GFAlr/6D10pCcRqdOSlgH33c3CMI
 mcuGppLSXN6I8nB4qGBEmX22OWxL8/kdygCRYuEYR4xTbjPONoyZfeTiNkSP8dQ93Uyb
 5EZcBSSVMzG5+d66O4m1cIBiko639ZLKfkQIUoz1COD23ur9mnDRkqbMCE9q6hXn7Vdo
 +9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cgWCcoEv8oDnYornbm8DTJVNNpb6nkaOLXyVQuMb0lA=;
 b=rW/Apu5IH6WrGghxdsanEw9NI/ZESWCYctCoGka8GErsQ1fCe5iltdA/a0aLAZLVVz
 oVsyN6Lm0UHe8ojZIUxtMViTZi/+kMCFEghlO8zku8iNbcSdkJISMDhOdhW/nVvD5xPI
 HnqAJwleTUYRHRfXgXb6OlkaujvR/P8ZCLnijEvY1wQcHxpCmnsusgvr3Hym3b3blJZH
 OZTP/kHizBD+weMZdFNNRajLPB5Zt69PdCymKeD+SUKTKpToOuByFONqevjQR1kG7SSs
 VbJZet3y6RjudxewmND8/0yFcXlxQgBELP6oSrjHzvj+IeIlTlt2bOdFFnYdmZ9HGzmE
 gG6g==
X-Gm-Message-State: AOAM532iMJnvhIfFwWfRB+pezolzTphy8yncRHQ+HGMQH7wlTXXJgJVU
 Iy1aglZN1rp0Pv8yYY9rS62qHOWgMG3rfpLx6hE=
X-Google-Smtp-Source: ABdhPJxPQkgbbTMOvyBCGMCZaJMHT5sAjPFNr6lqbh+FgNYE0v27nEvqqPyHq/4kEnQ9EoDZxbTFjTnxHl3rvX8ehgE=
X-Received: by 2002:a17:902:e0d4:b0:161:74ba:9def with SMTP id
 e20-20020a170902e0d400b0016174ba9defmr15429287pla.28.1652875882091; Wed, 18
 May 2022 05:11:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:ce81:0:0:0:0 with HTTP; Wed, 18 May 2022 05:11:21
 -0700 (PDT)
From: "miss.amina" <mr.martenmodiga@gmail.com>
Date: Wed, 18 May 2022 13:11:21 +0100
Message-ID: <CAGY8w1ZvByhEXUCDv7SbJee0qW1jNmjUEiP1BF+78B3yNbj2OQ@mail.gmail.com>
Subject: I NEED YOUR URGENT ASSISTANCE.
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
Reply-To: miss.aminaibrahim@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Dear Friend,

Please I want you to read this letter very carefully and I must
apologize for barging this message into your mail box without any
formal introduction due to the urgency and confidential of this issue.
I know that this message will come to you as a surprise, Please this
is not a joke and I did not want you to joke with it.

My Name is Miss Amina Ibrahim Musa from Libya, I am 23 years old, I am
in St.Christopher's Parish for refugee in Burkina Faso under United
Nations High commission for Refugee.

I lost my parents through the Libya war last time, right now am in
Burkina Faso where my late father deposited fund, please save my life
I am in danger need your help in transferring my inheritance my father
left behind for me in a Bank in Burkina Faso here, all I need is a
foreigner who will help me stand as the foreign partner to my father
and beneficiary of the fund. The money deposited in the Bank was
US10.5 Million united states dollar) with 15 kilo of Gold I have
confirmed from the bank in Burkina Faso where the Gold was deposited.

Please I just need this fund to be transfer to your account as my
foreign partner so that I will come over to your country after the
transfer the fund to your bank account and complete my education
because I cannot go back there again therefore I have nobody again all
of my family was killed in the war.

Please read this proposal as urgently and get back to me on my private
box at (miss.aminaibrahim@gmail.com)

Yours Faithfully,

Miss Amina Ibrahim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
