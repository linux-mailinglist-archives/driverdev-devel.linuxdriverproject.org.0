Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F446B6386
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Mar 2023 07:36:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B84794183D;
	Sun, 12 Mar 2023 06:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B84794183D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvUk06HNcl5K; Sun, 12 Mar 2023 06:36:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43F0F4180F;
	Sun, 12 Mar 2023 06:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43F0F4180F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 410031BF5F6
 for <devel@linuxdriverproject.org>; Sun, 12 Mar 2023 06:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A46B60F45
 for <devel@linuxdriverproject.org>; Sun, 12 Mar 2023 06:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A46B60F45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KEkvo48l1919 for <devel@linuxdriverproject.org>;
 Sun, 12 Mar 2023 06:36:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C667960F47
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C667960F47
 for <devel@driverdev.osuosl.org>; Sun, 12 Mar 2023 06:36:10 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id n16so365146pfu.11
 for <devel@driverdev.osuosl.org>; Sat, 11 Mar 2023 22:36:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678602970;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MrcPAPeipZSnqSDFX0O3p4ruW7zloixaBh400QCukow=;
 b=3lcwLkxVhNf97VczhEeRad44HkZHA2gVMjlMYP6llSnxpsM2OI6fcGE/iWeEyJnlQX
 xMcAEhWFRsEl+yhyX4QYi9Hx5GVnnyZ1T8cUUFjaiNxyTIdNxnYn+hv87qdlkrS7eSgj
 610HUZkaPwGOjul55Y0MtDNStRVbJyMZPm28ueODDZHk5yOVvckVnH7yHmrH6s1zMaPM
 4DTkWPiW+OmeCcpi5wj9yCXkyZ5rEhnIPAG5qMv91k2QxfzWbnYOxHZPRdZhuHKITUYG
 j3S/80Lh8k6W82c02t43x1HwQSHidPrgJ7Ahe0nWm71kSxYiEpI8LZGSRBOMUDnNqpBc
 Cm6A==
X-Gm-Message-State: AO0yUKWaHDkTmBa8l+Mb1haUUlm2ovGV9FnUm39yWXKR4hYqR7Th+HSY
 SRwfz7Pdnx9zlsYhKe9xW7x8aGWd72qPSSnzpE8=
X-Google-Smtp-Source: AK7set9qtGYEluNXT10LhP9KWJS6bJYON4b6Kf3RxqkAerc0sQJ/mkuKw2X3/c/2XprsAAerv1WepwrYanR4cIxonxo=
X-Received: by 2002:aa7:941a:0:b0:623:72d4:3e12 with SMTP id
 x26-20020aa7941a000000b0062372d43e12mr399185pfo.2.1678602969904; Sat, 11 Mar
 2023 22:36:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:95b4:b0:41d:6564:630 with HTTP; Sat, 11 Mar 2023
 22:36:09 -0800 (PST)
From: MARIADEL  PILARREZOLA <mariadelpilarezola00@gmail.com>
Date: Sun, 12 Mar 2023 06:36:09 +0000
Message-ID: <CAChYt8uQvPgt4W+vipTPHM2jsC1_dJwPFArLCv0xDSJy03WHYQ@mail.gmail.com>
Subject: Dear friend
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678602970;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MrcPAPeipZSnqSDFX0O3p4ruW7zloixaBh400QCukow=;
 b=T+vEZdD3bTS8chB3K/Evu6xiBlQdm3e8mnK+IpvtuAJPZ2gQxWr2oN664vOE+S+oa+
 qpTZOZAH0uWrXZsvcHxhRwjuIcyayqqEJTx72XK/Df1Fxq2r/2KYP1DcWs1i/0/o8dtv
 XjLp+I0+X4chOznFjDPXKQULNixbxiPiAdBx+HNV5BVJSsUDkHYQxvu/+/w7aWhL+PdF
 29+18gx5MGqJbMJ3XUAPA1UdFnZ/SxVI93+FsqkaPPeo6s0Z2D2+5Zl+PRNJg0LmPsbQ
 QqXPkjK0PraOY1I/5EwHgHPrK1z3o7rdBrELeMa22cCfSC5QZd3d6FyiEM97B+ke8+uc
 ae6g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=T+vEZdD3
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
Reply-To: aishaelgaddafi@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Engineer Raphael Godwin from Switzerland. I need your
assistant to invest
in your country

Mean while I would like to know your brief and precise details of your
business/investment Plans, and by doing that you should tell me your
ability and experience to handle the investment project in the area
you have better knowledge of how to invest, where to invest and what
to invest.
I need you to provide me the below
answer to guarantee your ability of handling this project:

1) Can you handle this project?
2) Have you been into business before?
3) If, YES, what type of business are you dealing with?
4) I need you to explain briefly to me your business experiences
either in the PAST or PRESENT.
f you do not have business/investment experience I have listed the following
sectors below, you will need to consider the one you know we can
establish in your
country:

a) Investing in Academic Sector;
b) Real Estate management;
c) Hotel Management/Tourism;
d) Stock Management;
e) Hospital Management;
f) Commercial Agriculture;
g) Dealing on Oil and Gas;
i) Purchasing and Supplying of Gold
j) Export and Import of different manufacturing products in your country.
k) Distribution of food supplements and wellness products;
l) Manufacturing of different industrial products;
m) Commerce;
n) Personal, private and business financial/services;
o) Logistics services;
p) Development of e-services and software for third party use

I Need Your Urgent Response To My Private Email Address
( RaphaelGodwin2023@hotmail.com )

Thanks For Your Cooperation
Engineer Raphael Godwin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
