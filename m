Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B416C9A7F
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Mar 2023 06:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 733DC4056F;
	Mon, 27 Mar 2023 04:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 733DC4056F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y8FR1lA3Lwzn; Mon, 27 Mar 2023 04:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 564AD401C9;
	Mon, 27 Mar 2023 04:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 564AD401C9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8BF1BF2B9
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 04:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 568E860BF5
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 04:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 568E860BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzdQxhOjAR_0 for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 04:21:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A283760681
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A283760681
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 04:21:23 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id l18so5354134oic.13
 for <devel@driverdev.osuosl.org>; Sun, 26 Mar 2023 21:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679890882;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0VdBDGq2cFrWhgLkaurcS/o3tzc83+qf3J/uRXtEPAA=;
 b=wIhFqibwzQr2F2bat3GknnpV4pV0FSEvyasrtZYXTcfIjXG8tlwWawcVpevRyZXlY9
 IlWOyotiJGlslNWvHullZ/llZAap7sI6o0yr+CETAjQvi6m+Weq5wWno7tkLbgHy7D1J
 507BKWlSIKYjyi6WMFLhmzzPWVJC/V7n1f/29YktMUW8RakEasQHaYGp3jpkEV2ppd/A
 31uG5ii4sC2/AkLm4pStnF0ZPHSAVv6kvAhA1ju6mPCQ0+7pWQ5m1/ECbX4kwivq1SAl
 b8VnoZ1KppgPIREyYSXELnL0CO6+ooZvG7QgqCJrs6EQScbtHGClr3qeif5oiipjj2xU
 E7+g==
X-Gm-Message-State: AO0yUKWB85Jz4mWMaRfo28EzdC4qCpQPpmDnmn4ywnrz85TK3KPX03yS
 8zYIIciuabP4IYnl9XvLsW6MmcRihvYhTAabDQ==
X-Google-Smtp-Source: AK7set/THewbzalDgxKosKfgYJii7cxnR+HEQ1otX1yClvSPiaDqOBnHnTWwD1enkMns0iWjYprcFMWIIELMrARvnXY=
X-Received: by 2002:a54:4685:0:b0:386:cb70:3828 with SMTP id
 k5-20020a544685000000b00386cb703828mr2767059oic.4.1679890882629; Sun, 26 Mar
 2023 21:21:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:5243:b0:104:67b2:1e04 with HTTP; Sun, 26 Mar 2023
 21:21:21 -0700 (PDT)
From: H mimi m <mimih6474@gmail.com>
Date: Mon, 27 Mar 2023 05:21:21 +0100
X-Google-Sender-Auth: yk8kkQ2YNJzHgUiG2jaXIMALzwY
Message-ID: <CAChmkRTngG4+KhHrC1q57dg9RBChTj_QrBoJs0V_=XhH6yHtZg@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679890882;
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0VdBDGq2cFrWhgLkaurcS/o3tzc83+qf3J/uRXtEPAA=;
 b=BeTMD3ElRT9d96N+QgoaYwanUhavxGgSXPioVa6jQ5MP29UgKqqRwW3ys94ZoxSr7T
 HhJeZXrdOR/bXAGYNeptRE7IqWZ8PYeLwHh4BUOz10MPrc/tIKp4VmMZGEDTWsebb0mP
 ZocZY4C9W0eHhtK5M1eyOBnkXXrFBsZ7M3v9pNBoeoay0PZYzGEPdLtjJ2nXYT2M6yA+
 +eB5MYt66wYy/Ol+ODi3t1mvxrkYPswPQUxAFNrp0H8iAZ8jpMsMVOOPmz9XvZ8ldsvx
 mT9rKO6qHPavi5866uuNP1LYX+ZSc7Orh3oGMXfuQSg2o/0WK+puVDe/QWgWlX6vOBJ9
 EBCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=BeTMD3El
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

Hello
I'm "Mrs Mimi Hassan Abdul Muhammad" married to Mr. Abdul Muhammad (
an International Contractor and Oil Merchant/ jointly in Exposition of
Agro  Equipment) who died in  Burkina Faso attack, and i was diagnosed
of cancer, about 2 years ago,and my husband informed me that he
deposited the sum of (17.3Million USD Only) with US BANK) .I want you
to help me to use this money  for a charity project before I pass on,
for the Poor, Less-privileged and  ORPHANAGES in your country.  Please
kindly respond quickly  for more details.
thanks
 Mrs Mimi Hassan Abdul Muhammad
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
