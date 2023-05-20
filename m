Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC9970A4C8
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 May 2023 05:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A61E8397A;
	Sat, 20 May 2023 03:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A61E8397A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4G_dCozlZVQ; Sat, 20 May 2023 03:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F8D681FA3;
	Sat, 20 May 2023 03:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F8D681FA3
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 390F61BF35D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10707424BD
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10707424BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bFPU3fCtgjqZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 599D3424A5
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 599D3424A5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:50 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id
 d9443c01a7336-1a516fb6523so37170355ad.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 May 2023 20:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684551890; x=1687143890;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9nI98n7hQHfgZ0b03oeYOgjjGhyapNQ2IwWuc24Y3aA=;
 b=czLJMeyJ9j6duwyAKlXdWTwFDBVnqQsCJ5sO8/icKEecpKtWnNy4u+IO+lh6HCNvl1
 o0kLAyfc7fbar3rT/PP3XNYD1Nl734xQc59JU7NNZ+S7t09KEZLlz9MURAT8ojc0+TVa
 B8x6UQ1tmmhxabZ3lFuf2ZyNNM+9QMtpc1uJdwuVoWAqple36EmunVrpbK4Yme3EKJze
 thf/8e6Oo9ddBIczgidN6G9GN2aUwkCU4NKBvSFMPZ43qrwHA3aex+MsiVK+Li0RzRBq
 OjUUdfMiRFn7lhrDFBH5F/Ud1N7X8StDGutY3LyHhOIHXNSP4Irc1uyH4Cs7uzV/FJKd
 cSTw==
X-Gm-Message-State: AC+VfDzLN4O3wWzKmvkR7NSyoH05xJwJPJvVOmPfshotrHXgRLq50wm1
 CIf3f/4tghKCcpg7M7Gmoopidxj+9+FTE1UJ70w=
X-Google-Smtp-Source: ACHHUZ7ipdmVRzfTPTt0KhhpULFhgG5dOc13BrNbJAF1HpRChyZ2zz9+/2csYA6Z0mMgQTcbE9BGGCC5/x5Ks8q0TzA=
X-Received: by 2002:a17:902:6505:b0:1ac:d03a:9702 with SMTP id
 b5-20020a170902650500b001acd03a9702mr3992883plk.67.1684551889497; Fri, 19 May
 2023 20:04:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a06:2913:b0:604:2723:46ae with HTTP; Fri, 19 May 2023
 20:04:49 -0700 (PDT)
From: Fatima Muhammad <bca.learningservice@gmail.com>
Date: Sat, 20 May 2023 03:04:49 +0000
Message-ID: <CAKpkN4ZMAjwnxn6dfYn75RHjizPvU3eXZSK44iBQXbpL6p=D8w@mail.gmail.com>
Subject: CHARITY
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684551889; x=1687143889;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9nI98n7hQHfgZ0b03oeYOgjjGhyapNQ2IwWuc24Y3aA=;
 b=rfylLW6BPlHZI7k4nDu6XfjvS+G9TGvde9u4O3f2qN/RzIP7Yk3RPXaJMUX8xdBtdu
 U1SYP/GEW+bADEqyygt0nRwpBfgpgyV0wZ6EYf9O2k/FYQ6JhMj86v5yawOTmQNSC4xJ
 00KzZojXKFboj2m3HBmzWXO1MAO8PkAMrk41r5PfSQc7yL/Y7TWrUVxZxy7QuldMIDLW
 N4R1qf9DbaQ9r3XxwTAiUF7OXg3XbfcTYxDRAoWL0fA+YMLC70B54zXJMWxbCxG4j5GB
 JimQQlCk06kaL+ZNi6i2C6nOl6lxoyyotHmkS2pJ7R6WxzrEXubkG6eV34gUcr5vIYRF
 PpSg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=rfylLW6B
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
Reply-To: fatimatmuham24@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Greetings

My name is Mrs. Fatima Muhammad. I am 56 years old woman and I am
legally married to late Mr. Malik Muhammad. who worked with an oil
drilling company as an expatriate for many years before he died I and
my late husband did not have a single biological child of our own.
Presently I have a serious breast cancer sickness and my private
doctor just informed me that my breast cancer sickness has gotten
worst and they are going to carry out a serious cancer surgery on my
heart by next weekend which I might not survive.

When my late husband was alive, he deposited the sum of Three million
five hundred thousand dollars  in a bank and he signed an agreement
with the bank that the funds will be used for charity and humanitarian
purposes, My Dear I contacted you today for this charity and humanity
work  If I die during my surgery, the bank will embezzle the money
because I have no child to claim the money  I want you to take  forty
percent of the total amount for your compensation and use the
remaining sixty percent  to do the charity work in your country.
please kindly reply back to me for more details  if you are interested

Best Regards
Mrs. Fatima Muhammad
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
