Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEEA5443B8
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jun 2022 08:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4ECE841BA6;
	Thu,  9 Jun 2022 06:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pehzuDYjIuvw; Thu,  9 Jun 2022 06:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 940E241B8C;
	Thu,  9 Jun 2022 06:20:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DA411BF376
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 06:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5246C610BA
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 06:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXriqjQEfSAx for <devel@linuxdriverproject.org>;
 Thu,  9 Jun 2022 06:20:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EB1760D63
 for <devel@driverdev.osuosl.org>; Thu,  9 Jun 2022 06:20:30 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id me5so44908315ejb.2
 for <devel@driverdev.osuosl.org>; Wed, 08 Jun 2022 23:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WVkjW0aKAhsKcJxT2Q0LAzeYj9dX9Z9lqdqo1a6nCMI=;
 b=LANtP/sEH3weq2PNw2YF44wfBlIb/oGH82do6rY9BV0U282uCsQA4mZ47fArqpPFR4
 2KaySsz8Ya+epv7dTLd3anQtcq3j+S1SxV/T2MRTTVwF1BNSNfWRmp5zitbU69JdOGpU
 AZCznwV/P/+o2fMUQNC9vqhe3iwMblivK7tEgigfynGFGnmMN71kyVYcIlPm/NDxsXj4
 aKktjp9kSjOKcMMti9HuIIPpMu56/uV+gPiWIorPLUTYxt1fNbdAa6PMLdWAd1ttRUQH
 N+CsGHuKqPP/ck9DVy8xxjXm1FJWB28ABGEJ4bBdjKLKKuaB66bJcprvW0oGgyFK5/ka
 wuvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WVkjW0aKAhsKcJxT2Q0LAzeYj9dX9Z9lqdqo1a6nCMI=;
 b=gRAfyBoqFF0e2yAdlVFDwkYBuQsCdr7aUI/14lcloj4Y/9YWI9H5DYKmogIXWgFKx5
 vicJGlzVRLxLuqhqyoVWFQSW0crdXznJ2XFB/OUVqpKhp73suTajynOejhkleJiqyYGw
 FUrUxJw0sqwA+DAf1sW2/sXopy5hevI0krG5RV6z2VrV4EfLzzUe1kIjVRGpyroFZn2j
 PMXNi9+9i/zUZEaQ9ai2eJkkOWYfKeB8omyse2vbxzHy2lGjE1CBgmCCuQk4Cv5kN5dD
 b3y0HZsE50NA9c2FZiHiomJOtIGnjbZkSGsdHIktbdfjUOBkJzPEXlQMXss+ftdHAtaa
 o0TA==
X-Gm-Message-State: AOAM532hkbD0wHfaAihdO/Z91FaPm3ronaKu5ElktWOE2h5sgclJLXVU
 aZ1APFL6b6tbZtgqj6sNoyDF2q3dHjbWZYHHN00=
X-Google-Smtp-Source: ABdhPJzLb9MMGcCWzWk0AV+9BrvXypAsCHhvz2ngmE5tKQu6LkBKp5+4ASBdcsZz4Yvwvwc8q9T9B666hjGyzN4Kxhc=
X-Received: by 2002:a17:907:7da5:b0:711:c9cd:61e0 with SMTP id
 oz37-20020a1709077da500b00711c9cd61e0mr19371165ejc.443.1654755628770; Wed, 08
 Jun 2022 23:20:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a98:b50f:0:b0:151:a8cd:5e17 with HTTP; Wed, 8 Jun 2022
 23:20:28 -0700 (PDT)
From: The Illuminati <fbookwinners@gmail.com>
Date: Thu, 9 Jun 2022 07:20:28 +0100
Message-ID: <CAHq_q0a89B-1=5MXowVv++N670ghOgX6kQ2i3M36R3dt6LrD8g@mail.gmail.com>
Subject: The Illuminati
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
Reply-To: illuminati01@europe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,

Greetings from the Illuminati world elite empire. Bringing the poor,
the needy and the talented to limelight of fame, riches, powers and
security, get recognized in your business, political race, rise to the
top in whatever you do, be protected spiritually and physically! All
these you will achieve in a twinkle of an eye when you get initiated
to the great Illuminati empire. Once you are initiated to the
Illuminati empire you will get numerous benefits, such as knowledge,
connections and also an instant US$1.5, Million USD, Donation cash
benefit as a reward to you for your membership with the Illuminati
brotherhood.

Note: that this email message was created solely for the purpose of
our recruitment scheme which will end next month and this
offer is for unique ones only; if you are not serious in joining the
Illuminati empire, then you are advice not to contact us at all. This
is because disloyalty is highly not tolerated here in our
organization. Do you agree to be a member of the Illuminati new world
order? If YES!. Then kindly reply us back on our direct recruitment
email only at: illuminati01@europe.com

Please note, Kindly make sure all your responses are sent directly to
the email stated above only at: illuminati01@europe.com  For more
instructions on our membership process.

Note: Some email providers incorrectly place official Illuminati
messages in their spam / junk folder or promotion
folder. This can divert and exclude our responses to your emails.

The Illuminati Fraternity.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
