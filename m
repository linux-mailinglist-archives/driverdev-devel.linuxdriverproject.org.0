Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DDE7072C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 May 2023 22:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C285883B88;
	Wed, 17 May 2023 20:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C285883B88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mkKO244jjuV; Wed, 17 May 2023 20:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A23AF83B82;
	Wed, 17 May 2023 20:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A23AF83B82
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6899E1BF47D
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 20:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F75441F98
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 20:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F75441F98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4N6fJJKNV0C for <devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:09:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47F8241F2A
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47F8241F2A
 for <devel@driverdev.osuosl.org>; Wed, 17 May 2023 20:09:48 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id
 2adb3069b0e04-4f24cfb8539so1457608e87.3
 for <devel@driverdev.osuosl.org>; Wed, 17 May 2023 13:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684354186; x=1686946186;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=CtDhTMyzqZrBwuWjcPRH78pvMG7RhHaig5s9A2wrPJhP+HTNXNTIoXgaF05tqFDvkf
 f7UDxxHPhZfLHtIdQ5wtRZBl1O7tKaC1SJ6blixgv9DKwg7n97te2VQMUQmbz663ISPS
 q1Z2N/umFIHxZMdlF2qpoyVv0hq/kwGn8NZCB1LBrTOWRbatqfm8/BD5f60Cc4nxSkf1
 tButkT4HVVxoqQWYEP3PTgy7dKsqqYYkJ1pnXAw20pgUgLGwRir2LmCNetTJG5elb68u
 CivgRYQthO/i+abGn/wg2a8nLPJvCVYjPw2V4jVlc5AT20jGmQNYn0eo3aPoZQZALWIa
 PiIw==
X-Gm-Message-State: AC+VfDyMDPg4nnBO3Bzt4kxwnnX2jve2FMVssgWLawY87vStUsaWIuKb
 3OXPNs/eHKwR4c8H9qjNgfQi8Nw59ZJ3Rx58gS4=
X-Google-Smtp-Source: ACHHUZ4ZQsVvBb1A/ZElGZ0M7G3KX17QEmnGBUH883o4aM4xo4ek6E1mis8QAX/ujyspjulVM/NlbV+RCxtzpzq2Og0=
X-Received: by 2002:ac2:5dc4:0:b0:4f1:34ac:531a with SMTP id
 x4-20020ac25dc4000000b004f134ac531amr515569lfq.18.1684354185451; Wed, 17 May
 2023 13:09:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:3857:b0:262:57e2:3c9a with HTTP; Wed, 17 May 2023
 13:09:44 -0700 (PDT)
From: Mrs Mary <maryjosen06@gmail.com>
Date: Wed, 17 May 2023 20:09:44 +0000
Message-ID: <CAEc3Ckp1nvSuxR5b_9_Og5o-N9bJCdgWW4pNx4k5VzVBXM3Q+Q@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684354186; x=1686946186;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=Sc/mEkaGnUB8eOKndykZwZK63kkXtbHPaWl/dAMxzNnLPa50U0EdExNCQjNowze6Py
 yj3rS64DNpODv9dfz5PdkJPaYt1pcoPI3oaEYUFnPzcQdKLuVEdjUfr+CM1iQmORQzHp
 Bx1F3kN+jWyemV/pieSgQ3zh5NlLo8CN4FZmgFefYJkVuRyPdx2Ye/BvPLkAGdvMTKHm
 c4R177Nq/LklN3UlhQjFRvszOTusK/DEckTk5on8rkCbmVyrob+VqyN8pk/H7PizCa3y
 dDXyGd6gDRh93dH3J129iJH5EfZ5GO4KONe8gQZ4ZlqfatXrOSjTIHteruVh+izaDDc+
 5Anw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Sc/mEkaG
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
Reply-To: maryjosen62@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 How are you doing and your family.

I'm Mrs., Mary josen. I have a fund of 4,500,000.00 EURO that I
inherited from my late husband that I want to donate through you for
orphanage and charity project, but I have been suffering from cancer
illness for so long now which I have been admitted in a hospital for
treatment. My fear now is what the doctor informed me, after series of
tests on me that I may not live long because of the sickness and I'm
afraid of losing this fund to the wicked government because they don't
care about the poor ones in the society.

I will appreciate your honesty and courage to handle this fund to help
the orphans, widows and the charity home.
As soon as I receive your message regarding your interest in this fund
to help the charity home and the less privileges, I will give you more
details
about this fund.

May Almighty God bless you while I'm waiting for your answer.
Your sister.

Mrs, Mary josen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
