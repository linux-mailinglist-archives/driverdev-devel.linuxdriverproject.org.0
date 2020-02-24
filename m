Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A7E16AFFB
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 20:11:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2AF1856B8;
	Mon, 24 Feb 2020 19:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfTtaPbY3KoX; Mon, 24 Feb 2020 19:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1121481F0A;
	Mon, 24 Feb 2020 19:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A72E1BF364
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 19:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8717A85D26
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 19:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlTY5tlBe6u2 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 19:11:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD20B85C9A
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 19:11:31 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id z5so7574849lfd.12
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gl8m333ia74OFZpNmB4o7kIcYlvQPFpoCsxlN0OXKb0=;
 b=J1J727OFhosIw6e8A6lPoXT+s6YGq53ULwc8J67qoONSi16E9af3kve5U0tjV8o1+Y
 /SG8pD8Vhqf91RIvYUr624MqjKEoR0Tsak2+/oq7j5TCvEyrntGCAOk7Wr57X94/qzqA
 weOgPvcU2DTXfG+erQVSU5fxA9UbEiQaNPN7ApFEhoBZiW4VRsylA8bBEINsmjGOL+4y
 HhsNrGnvW2ALH5Ciq0PymxGzgpsOoTfWg/KU+uKryi0Fh4OIVk+iU2a0XtEMvXys1jxM
 s4enJFhTtyazC1Q6BAj63XKYKe7njZGAhuOLwgLBUEDl+SLcSiF6/a2ToKkm8YhGyZa+
 wnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gl8m333ia74OFZpNmB4o7kIcYlvQPFpoCsxlN0OXKb0=;
 b=R4S7IHXOAICHn3eTsgeNfExcNsMfPrnifbkFkjEI67A10hR1L+qEUaRKUH9iqFAOGx
 YeUE9Z1EDiivTvntwDK9fXTs7TleGeO8ifNfHYVQPgjGq9Ia25wpiF0ZSc2WM4zMdLyf
 6gBWBiuJAFmDCVIsK731pRbiH9qtOp6Jwo7jqwvRCQsap8y+B3WMuOFICDg8XmoinlVF
 f23yIJdBSgujUDaExMnRMpCeSCDZcuoBhxpIRiKNnySjo8R7Dz0/6FYoTrFc2HSeNbg2
 NhAz3Jd4VEut50svjEAcou2YtGgR9aWfBGwiQaBbxogtH7qpQSxjatbmxcPFnbIA/JwD
 fltQ==
X-Gm-Message-State: APjAAAUCaKYMl9vh72uKh0V1tM4wxXEk6tVrJck/tluo/CFVzm5V+3qJ
 inbxAt4Ws7I//xkMFc+zvovc0Ep6VHPaEeAs2Jw=
X-Google-Smtp-Source: APXvYqwTjpEDReX8Qg3M+kF2DZnrUdVgGCxT/rgFJKWfpj1Igj+oVBxWGD1gK5a8c5qCp+5kfnWRXJviPCaxqNbHPSY=
X-Received: by 2002:a19:4a:: with SMTP id 71mr28267717lfa.50.1582571488618;
 Mon, 24 Feb 2020 11:11:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:7a:0:0:0:0 with HTTP; Mon, 24 Feb 2020 11:11:28
 -0800 (PST)
From: "Rev.Wright Watson" <mrzamundagarmumm79@gmail.com>
Date: Mon, 24 Feb 2020 20:11:28 +0100
Message-ID: <CADJL91+96VE5U=TB2cD9qNmkeeAxyS005mqNRL5Y6ZJkteQONg@mail.gmail.com>
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
Reply-To: RevWrightWatson@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beloved,

I'm Reverend Wright Watson, I was born in USA, 1945, I was ordained
into the Catholic Priesthood.

Please take your time to read this message, although we have never met
before, this is no spam, It's a real message sent to you. I know also
that you will be amazed at the level of trust that I am willing to
place in a person that I have never seen nor spoken with. If I can
receive favor from someone I barely know, its not bad entrusting this
project to unknown person as long as my spirit directed me to you.

I have been a catholic priest for over 22 years. I spent about 10
years serving at Africa, Burkina Faso to be precise, I spend most time
in Ouagadougou Cathedral.
Presently, I had a heart surgery on the 23-11-2018 and the Doctors
have informed me that I cannot live longer; I had a serious bleeding
after the operation.
Before I left Ouagadougou to my country for the surgery, a priest
friend of mine visited me from Netherlands with three companion, when
they went back, one among his companion Transferred 10M$ in my
personal account with Bank of Africa and advised that I use the money
to help the poor, handicaps and less privileges because he saw the
level hardship then.

Because of my present health condition, I cannot live to proceed with
the projects, therefore, I have decided to appoint you to reclaim the
money which total sum of $10,970,000.00 (Ten million Nine Hundred and
seventy Thousand US DOLLARS).

I want you to use this sum to make the world a better place for the
poor and less privileged, help the needy and also help your family
members.

I took this decision because I was raised in an Orphanage so I don't
have relatives and presently, I'm still in the hospital, where I am
undergoing treatment. That's why I have decided to contact you so that
you can contact my account manager in Bank of Africa, reclaim the
money and make good use of it.

then you can contact me through private email
addres(RevWrightWatson@yandex.com)

Regards,
Rev.Wright Watson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
