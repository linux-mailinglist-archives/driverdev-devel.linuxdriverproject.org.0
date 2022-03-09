Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C524D2938
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Mar 2022 07:59:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F99E60C22;
	Wed,  9 Mar 2022 06:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyARutg8CHhN; Wed,  9 Mar 2022 06:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBA05605B7;
	Wed,  9 Mar 2022 06:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D84D11BF94D
 for <devel@linuxdriverproject.org>; Wed,  9 Mar 2022 06:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6E4160C22
 for <devel@linuxdriverproject.org>; Wed,  9 Mar 2022 06:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pofkr7oUQ4eq for <devel@linuxdriverproject.org>;
 Wed,  9 Mar 2022 06:59:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CFEE605B7
 for <devel@linuxdriverproject.org>; Wed,  9 Mar 2022 06:59:19 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id g1so2433353ybe.4
 for <devel@linuxdriverproject.org>; Tue, 08 Mar 2022 22:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Obo4JZFqXedixMJKIBfB11k+r6FmJKPKLx4oqDnEpGY=;
 b=BHm9af3goltBAqskHffqorMLrNSICnuuIpLT0vAoFyHNxtNyv5PkcZ/kkSGLRasijK
 i8da19CY0UGprPy79XZZPzhpUJcnyjkeUOVnkwBB93zl7R0Nzvkr77p7Q7BDUQtXM38S
 nYn4o0cySK6mbSwDshvK81IxPkUwWqO9WJSeFvvjIOHgM/YSJbveSxU3VVOXCVK07eJC
 8k+VlReD3JdWzFpsCsc5EWdBKSH73i3a4U8QF6ZJm6AGDKAtY8btwFYGV2lcbP3WA1Ld
 jAFRMNz4CByJaeNRJvtyxn+iTWHJnbTWZB9XzTAPYhNUAGB9pqjMmSodLQ4Iksb/m4th
 MYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Obo4JZFqXedixMJKIBfB11k+r6FmJKPKLx4oqDnEpGY=;
 b=e+gc5U/B2kHtRTiBqUwpYyklRVtqWKvP71ayYxwhwmwsywTCAZnsc/djLw6bAWqU0x
 zSVLkSp38ap4uTeXPlX+RPToDBFM7JQIjZiLZYyAAms8jW8DvUIWgSc/nztOpdDIP604
 RzzZzrH9NSwp57Z9sP6sffBqTkmU8qvQoRd6hXHfsFSytuqEGbwhJfTR5g6rmeRBsTbC
 p28o+XkGzKj6TwcByERFUE9mlFMybKMFzCZdkw/20X/IkqSvubqbgZfeRLrwqD1vcaym
 W1312TuwsGralOsHKYPWGbL0E3id9tCyNxPAfZusuHoSb+WdVL9IezNpbGK+t48KDzAK
 Qz6Q==
X-Gm-Message-State: AOAM531kxX44Px9ru5inXH7/SNdQrMNnF1MyfBuUvZX1+OlSJU9PbI8g
 8O2maTjEBN5ymESBhbJOdw06CLSB6+J83RCgbHY=
X-Google-Smtp-Source: ABdhPJxKyFRW25iQi0147EwTc893Q5aLWBAruL/irIkcbBGDeENy0MH9jQCGCqSVjUOfy0VlMS/6mSGw2DrGdTadYDg=
X-Received: by 2002:a25:d2d0:0:b0:628:7d69:b598 with SMTP id
 j199-20020a25d2d0000000b006287d69b598mr15717566ybg.381.1646809158082; Tue, 08
 Mar 2022 22:59:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a81:a389:0:0:0:0:0 with HTTP;
 Tue, 8 Mar 2022 22:59:17 -0800 (PST)
From: Mark <nnannacolins@gmail.com>
Date: Tue, 8 Mar 2022 22:59:17 -0800
Message-ID: <CAJAQTirEGn_vL_OUfwUo3MCs2RrkZ8ej4nfArrNSNKQkyaiT_Q@mail.gmail.com>
Subject: Re: Greetings!
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
Reply-To: markwillima00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,
Good day,

The HSBC Bank is a financial institution in United Kingdom. We
promotes long-term,sustainable and broad-based economic growth in
developing and emerging countries by providing financial support like
loans and investment to large, small and
medium-sized companies (SMEs) as well as fast-growing enterprises
which in turn helps to create secure and permanent jobs and reduce
poverty.

If you need fund to promotes your business, project(Project Funding),
Loan, planning, budgeting and expansion of your business(s) , do not
hesitate to indicate your interest as we are here to serve you better
by granting your request.

Thank you
Mr:Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
