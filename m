Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91397515C2C
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Apr 2022 12:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDDC760B19;
	Sat, 30 Apr 2022 10:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j7W4LlHw23nK; Sat, 30 Apr 2022 10:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 717BD60A91;
	Sat, 30 Apr 2022 10:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C648D1BF3AA
 for <devel@linuxdriverproject.org>; Sat, 30 Apr 2022 10:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B420C41B6A
 for <devel@linuxdriverproject.org>; Sat, 30 Apr 2022 10:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xgQ7x-z68_AJ for <devel@linuxdriverproject.org>;
 Sat, 30 Apr 2022 10:08:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2C2641B5E
 for <devel@linuxdriverproject.org>; Sat, 30 Apr 2022 10:08:58 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id w1so17903801lfa.4
 for <devel@linuxdriverproject.org>; Sat, 30 Apr 2022 03:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=hlYh8eDgP2fZpVSpJh6RGF+hYuQIi49zTwSkOzWWCUs=;
 b=cgqMBBnb+kDlVjFdxqRErpeGBdxvcFrIwdsCb/p2/TCfOiCww1S6ra6wwZZmA1d7hf
 heS3CDNKBJMATqZUd24fRFD/7DpNDJnu4lyL1QlYNuU4fkqPrIRu33gMNrRKjq3ViuUm
 Pv3y5ab0pRXiOEHeX36CG6Zzv+G0bgFG6Vao3bcDmsJn+2DQ94if7EhnNNSiO1qKZD2w
 7Mps94H+LQ00EZoMCEkfyF1o0PPQoLoorVzRDRIMUXU94AIEBhk6FxuMwm3FwIquGsYv
 tp1NO87v+XdbTIpYte9Fu1eGQhQCE3hG+s5VPfKSAcftFrMptHDn5KLX+I/e6fzgezye
 kmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=hlYh8eDgP2fZpVSpJh6RGF+hYuQIi49zTwSkOzWWCUs=;
 b=cvMpLdkXZD4z3IZ/bZRovsyhU1L7HGm+WggXpdw7GvQMKrJ1p0SYipyD9JVczfLGu7
 areNx8TirFE19PxLrNtfrOT988peqAhuwQOUZOnGvlpk42fZeQpQC4YKJQd5sE9wD+t8
 QUrPT6GzQT26e4o6iHn0aklRxtY82XV9wv2R8Ug06z/hu1c3mbmQFUSWQL+vj2Gyb5td
 SAh4DzLHu7TY4dYrWhhsdtTrSQdyPQrz0wkH0yk/W/q6HPUlIOcqVGQBj92clbv2oFnH
 s/iOUcS7AOoFWZUv1knRg+iuRPn6UsdmVFdI5foisNRgrkowc27sGHcKyuBAMAfeIj9k
 4sDA==
X-Gm-Message-State: AOAM532Y38XUsXcRwEKsC9KdqQi8QK8+RzWsL+YWiIDwmZHQnQjCayGO
 1D0eMCJhL6LaYgaTUfSUbaeHHnCP8P0wyyEwnjg=
X-Google-Smtp-Source: ABdhPJynpgCA2o88UZqbf3uofYqx6kFk4Q3slJ415QexftM//cbYCZJgd70yxMUv4vg67n3psmINt7J9PqQmzb3TkMA=
X-Received: by 2002:a05:6512:128c:b0:472:4b32:289d with SMTP id
 u12-20020a056512128c00b004724b32289dmr2575396lfs.649.1651313336320; Sat, 30
 Apr 2022 03:08:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:2624:b0:1be:7ba5:a110 with HTTP; Sat, 30 Apr 2022
 03:08:55 -0700 (PDT)
From: Francis Mr <francismr4752@gmail.com>
Date: Sat, 30 Apr 2022 03:08:55 -0700
X-Google-Sender-Auth: Gd_XOwKqEJAMFWDeaFK34f4Pc9Y
Message-ID: <CAJaq1wJYPPDLi+rfbUuADWD9H=BH=RjrqqdHt0oudd33YnC3zg@mail.gmail.com>
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
