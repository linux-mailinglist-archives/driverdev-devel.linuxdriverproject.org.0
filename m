Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88520515C2F
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Apr 2022 12:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6703540390;
	Sat, 30 Apr 2022 10:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_bbPHJX9qYa; Sat, 30 Apr 2022 10:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6EC840022;
	Sat, 30 Apr 2022 10:10:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2FC1BF3AA
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 10:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AF0760B19
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 10:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 60fH_Pp8tQtk
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 10:10:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 540AA60A91
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 10:10:07 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id p12so17919539lfs.5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 03:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=hlYh8eDgP2fZpVSpJh6RGF+hYuQIi49zTwSkOzWWCUs=;
 b=fl3J/xYCixQbRtLfHLx9oGZjV409TBRfz3rjmCRGCqMEcbR3z0ihv1jrrfdU9KQN/j
 LRtzDNVQ0apYReY2+5qU2ehY/E71iJDjnG+GpRKFAiCzjT/Jz14VkMo/JwwY/JaOUSow
 wzTkyzzR1cIItmIG3PY37EW9lyIPctIcnyntotdjY7w5RpkQjo3hdEXwrEUT3bu/TtFW
 1HEz1HdKQzd/vQdPwa7iNfYmCL7TbJwV15veaf2JpBPEi83VmfX38Xd+Moq4rV6lcGAc
 vMfYpcLhNxbmEBz+8+pNgqgh6l+vsYOYyiyFI/zOdYm0S767T6bMzfRqgEFAcRiMQglm
 1/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=hlYh8eDgP2fZpVSpJh6RGF+hYuQIi49zTwSkOzWWCUs=;
 b=IiIEhladk95c56NzgUfGIT+MQv0QmKG7LlYJ6Wb15G9Ii4SHLVgCznovKJ9KYTuh31
 2AfRWIHaOpnTq6w2iAOrHOeG1MelsB/r1/E54/IO6VrebbOPRvvuEb0Yj5PQBctahxb0
 DlHkoG+FCA+w2NkTSl7L5HdeGndGoJ6kI1pxuMe2HOjSOfROfEalP5iBUthCHdYR/Bsi
 fhKV32phcrrOJz1xF66LzGD9cFL6laF3iVfHvF5t/l9WRo60xuAWA4QpLSPIp8lixV07
 wWJTlz0uHEo3OyLt5EYSMicXeLV5BMZKiQKG+pxmFO76IIMa9ZRN3+iSUoc2ljw2s4D1
 dZkw==
X-Gm-Message-State: AOAM533JSQMLm1tTZT1NrQm15G5nSFKAmMP9TBDdCaA2K1+EsPvctMC5
 miVuP/TthsMc/rMEinXbHKeiamP8eDnwizbQJCY=
X-Google-Smtp-Source: ABdhPJzQTs00rmpuwwvPG0JDwot3FBK796ImM9mxpFXNaMiqpKjjzJye1BBnrzGAlnHTqaRmYxV/l5hX3GvvndhTQ8g=
X-Received: by 2002:a05:6512:1095:b0:472:5b73:a312 with SMTP id
 j21-20020a056512109500b004725b73a312mr782694lfg.21.1651313405106; Sat, 30 Apr
 2022 03:10:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:2624:b0:1be:7ba5:a110 with HTTP; Sat, 30 Apr 2022
 03:10:04 -0700 (PDT)
From: Francis Mr <francismr4752@gmail.com>
Date: Sat, 30 Apr 2022 03:10:04 -0700
X-Google-Sender-Auth: EPRNw6KjP3KxJ16hAJpkk2f8nno
Message-ID: <CAJaq1w+=V7DJCGBNT0Qj+d5YEd2R=G_=Khq5ptfOzZquWSdWwA@mail.gmail.com>
Subject: Dear Sir or Madam,
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

Dear Sir/Madam,

Please forgive me if my request is not acceptable by your kind person.

I am Mr. Francis Hashim, who works in CORIS BANK Int'l (BURKINA FASO)
as a non-independent non- executive Director and President of CORIS
BANK  Int'l (BURKINA FASO). During our last banking audits, we
discovered that an account abandoned belongs to one of our deceased
foreign clients, Mr. Wang Jian, co- founder and co-chair of the HNA
Group, a Chinese conglomerate with important real estate properties
throughout the US. in an accident during a business trip in France on
Tuesday.

Go to this link:
ttps://observer.com/2018/07/wang-jian-hna-founder-dies-tragic-fall/

I got your contact from a yahoo tourist search while I was searching
for a foreign partner. I am assured of your capability and reliability
to champion this business opportunity when I prayed about you.

I am writing to request your assistance to transfer the sum of
$15,000,000.00 (Fifteen Million United States Dollars) at its counts
as Wang Jian's last foreign business partner, which I plan use the
fund to invest in public benefit as follows

1. Establish an orphanage home to help orphaned children.
2. Build a hospital to help the poor.
3. Build an asylum for the elderly and homeless.

Meanwhile, before contacting you, I did an investigation to locate one
of the relatives of the late Mr. Wang Jian who knows the account, but
I didn't succeed. However, I took this decision to support orphans and
less privileged children with this fund, because I don't want this
fund transferred to our Account of Government treasury as an unclaimed
fund. I am willing to offer you the 50% of the fund for your support
and assistance to transfer the fund to your account.

More detailed information will be sent to the desegregation explaining
how the fund will be transferred to you. Please continue to achieve
the purpose, Reply me on my private E-Mail Address:
francismr4752@gmail.com

Waiting for your urgent response.
Attentively, Mr. Francis Hashim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
