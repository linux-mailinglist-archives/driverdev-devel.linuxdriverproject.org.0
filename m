Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41264410863
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Sep 2021 21:32:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CD2660673;
	Sat, 18 Sep 2021 19:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c20y_f6TE_DD; Sat, 18 Sep 2021 19:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2856C6063F;
	Sat, 18 Sep 2021 19:32:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F60F1BF40A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 19:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B8B38378A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 19:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCcbyjlDbTOB
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 19:31:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F59B8374F
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 19:31:59 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id b6so14107799ilv.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 12:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LYDiYsT1DHNyGpLF689wghOSbRpojefBZI0dVhqbv60=;
 b=OGGqVP01FdW2SdpwSxkwQURpd6l6VhY/2HVKhKxLIkD12vV84ZFR1GOo656AyodeBA
 sHLNenVOjBm1yupPRS09N5basgHjXCpnt6mDOvwTEqaHhF4oVrR61vg+2oOig5ie2MpJ
 tsfjjqGwYKNtsOBHR3EpUx2iZ5nzUQWVScVWxyKpElvb2Ltgq6778/cMJnShUI92LHWp
 RAJhbrr0eqrybYEFJE7jhwNQFXIWWasg4c4iKxfS+rNHMySTsmwj4qaIVTapbIDniHem
 WofQO1sfvWHqabIo5xbeg675daPvx481te1ExQy9b4VcjluZCZ1yobCEptJTnxIvXtqm
 kXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LYDiYsT1DHNyGpLF689wghOSbRpojefBZI0dVhqbv60=;
 b=fae9rwVe6ZGJ0TTjjYvs5UgtTI8Iym01UW2sGQykM+6g4jaLcBRbujTzj9y3x6ISP+
 sjMP8BJiBzWsmJkr0ejKBaWJdZnxFMMu8mnpHJXxFWcdIjE+VxTsqLXM0bK2vr8Eos1Y
 0qeZhmZ7CXtNnC2byEippEHkUBd7K5282JSo2SpPXoT/Ya6O35Sp78tlrn4tU6gApFoC
 qX1QriubnyYk/Tb/pJyWaiHmai9oplfcnYtDqsT76BykUWQrh6ICBXAxGO/OqrOzos+U
 b6xlWBJZAwja4xfqq5eHqQsDR9al/q/K1kw8b4dSQ2YSsM/HP68T7scZ3QvSjHszZ+cH
 e77A==
X-Gm-Message-State: AOAM5313cxWj23cpq8Ds9N/R12DruB1DFgyA1gAY4T2EpYhnO/hyvu7y
 UvMDJ65wL9iXUuaLkQSD9gxdYah2JLH3tpNHFhc=
X-Google-Smtp-Source: ABdhPJwDcG8f/3r/kGjPz8buE3cjrc5bIBXWZVyhf5ernEfQ1koCPvYXmxBBdG57L+fdgJnPZIS+L6KePs+DQK5Izow=
X-Received: by 2002:a05:6e02:dd4:: with SMTP id
 l20mr12340147ilj.256.1631993518690; 
 Sat, 18 Sep 2021 12:31:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:2e95:0:0:0:0 with HTTP; Sat, 18 Sep 2021 12:31:58
 -0700 (PDT)
From: Mohammed Hossain <rw2305041@gmail.com>
Date: Sat, 18 Sep 2021 12:31:58 -0700
Message-ID: <CAF9C=j0H2788gzCZ0U0QjNC_MRYZ8zueuJ4f_P-TYTGvKbuCUg@mail.gmail.com>
Subject: 
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
Reply-To: hkmohammedh@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I have an important message for you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
