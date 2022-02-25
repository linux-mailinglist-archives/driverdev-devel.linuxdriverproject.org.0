Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1804C44A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 13:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F5DD606ED;
	Fri, 25 Feb 2022 12:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewUp1LuamXFY; Fri, 25 Feb 2022 12:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1F4160640;
	Fri, 25 Feb 2022 12:33:58 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAE621BF31B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 12:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D72C641851
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 12:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9MJXrUg-IaL
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 12:33:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5264C417D0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 12:33:55 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id n5so4127138ilk.12
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 04:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=MZatKRwTlbzfjLMyxYSVIVYOtSXu1vJGn3mGv+IXtUo=;
 b=qt88odofPOZ91GLwDACSduOLKZU39Byt2tWmu7k82Oy3/i4bO0cDrYelpa2A6Atkdh
 7aF0zBugMWLV4OkaslTO2fwpjkJZph/9y7S+xerV81AufJVkB9734giP5LxTi9M3efTK
 AfKIFJOkOScksLSs3SRjFLuyF9BNzhiG80rqjVNKMFR+aft2FlL/1+dvrNa0a5ds/M4q
 ifpI7k60B1J/Aj9vuqgiGecgRCt+izorc28ii8YFwJY45CN2nUna1KNKjDJ5hXDmd/YT
 dlHIE/axGWC4XjvqIFH7NtsouPL11y5dkK57QvXNpdjj3K1wmVqv+j+M3QVYYLZtzr3S
 2hpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:to:content-transfer-encoding;
 bh=MZatKRwTlbzfjLMyxYSVIVYOtSXu1vJGn3mGv+IXtUo=;
 b=uFEdqiYB4V4jnWG465iQm399XaBPmjS78B42c/JUacE5sVZCcbcZGX9Zk0AFk2OR8c
 oVXpSgfZ2j6ybmhjVWVDzzbaYekVi+R1MaVLs1Aq43iGMzHSyUd85SZgQq6xDa1k5raZ
 /8w7rmHntOqyHg404juCXoCjdD34k3EzUaFhf5uD0V0BYqn/sVZ+t6vruNNiSCq+0Hlg
 eJOfPRERscHg9jU6FfdSaRQPLuPzVZlbgDZiL4YG/icaqki8PL9G3UR+wef/JZm1ysrF
 8WbEpJ2QjRmEtgoCjE2yJ3nPwGfD7Jd8kYyOeGbEyTSjtZ4DjZR4pig/uQGekiAZeiIL
 npxQ==
X-Gm-Message-State: AOAM532VdCNISzpO43x+PL40IlPgWle9Ea05sqwQhZy881JE9UOSwhSB
 9yEVecvpyJdv+UDdVcXJYXvTqpTi7BQxo2Fi8rs=
X-Google-Smtp-Source: ABdhPJxRkbMyK2WqohfCFwrnXii5ykrsriSeyM/BYmDgapFTAAbsKRZo55dAjvZ5Nr0qUCDsJbnv2a5CXa+ttnOgRqs=
X-Received: by 2002:a92:4a08:0:b0:2c2:60ca:90a3 with SMTP id
 m8-20020a924a08000000b002c260ca90a3mr6240450ilf.283.1645792434160; Fri, 25
 Feb 2022 04:33:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:d549:0:0:0:0:0 with HTTP; Fri, 25 Feb 2022 04:33:53
 -0800 (PST)
In-Reply-To: <CABSz7Na7daRxR_vAegfK0hpNUw=4B-vfLOzzGwm0HwNaS3cuMw@mail.gmail.com>
References: <CABSz7NZoh46KQYkU1BTbKKmrFXqbWVPozLvPi0c_XgNeSc7XnQ@mail.gmail.com>
 <CABSz7Nah260U2=1F59zyhC8bmKcZe80T+aEN3CoW8UPUK4nmCg@mail.gmail.com>
 <CABSz7NbEVE2H+Ni-uACfY=7XddCtvTzposPYa1xhhKyQuguS4A@mail.gmail.com>
 <CABSz7NZ=65d7tEopKJu05W3_-UUbBeBa0=6duH-9kuaZ3FdcfA@mail.gmail.com>
 <CABSz7NavkW79vJKvJjJ5O3VNmV49DhMVPdiCxKAWEr8GN_XLyg@mail.gmail.com>
 <CABSz7NZoEXpJ7hNpVuDODCzGHEWhWrPtaLODCxeKiKBNdRmOvA@mail.gmail.com>
 <CABSz7Na7daRxR_vAegfK0hpNUw=4B-vfLOzzGwm0HwNaS3cuMw@mail.gmail.com>
From: "Mr. Ewen Stevenson" <servicecustomsa@gmail.com>
Date: Fri, 25 Feb 2022 14:33:53 +0200
Message-ID: <CABSz7NbamQa0Q18T+8S39d0OH2KsW06_DBh+USyYJLY12Er3Ew@mail.gmail.com>
Subject: Compensation Relief Fund.
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
Reply-To: redcrosssociety@hellokitty.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q29udGFjdCBNZS4uCgpNeSBuYW1lIGlzIE1yLiBFd2VuIFN0ZXZlbnNvbiwgR3JvdXAgQ2hpZWYg
RmluYW5jaWFsIE9mZmljZXIgZnJvbSBIU0JDCkJhbmsgb2YgVW5pdGVkIEtpbmdkb20gaW4gTWFu
Y2hlc3Rlci4gSSB3YXMgZGlyZWN0ZWQgYnkgSFNCQyBCYW5rIG9mClVuaXRlZCBLaW5nZG9tIHRv
IHBheSB0aGUgc3VtIG9mIMKjMSw1MDAsMDAwLjAwIChPbmUgTWlsbGlvbiBGaXZlCkh1bmRyZWQg
VGhvdXNhbmQgUG91bmRzKSB0byB5b3UgYXMgeW91ciBDb21wZW5zYXRpb24gRnVuZCBkdWUgdG8K
Q292aWQtMTkgcGFuZGVtaWMgYW5kIG90aGVyIHRyYW5zYWN0aW9uIHlvdSB3ZXJlIGVuZ2FnZWQg
aW4gdGhlIHBhc3QKYW5kIHNwZW50IHlvdXIgaGFyZCBlYXJuIG1vbmV5LCBlZmZvcnRzIGFuZCBm
aW5hbGx5IGRpZCBub3QgcmVjZWl2ZQp0aGUgZnVuZC4KCktpbmRseSByZXNwb25kIHRvIHRoaXMg
bWVzc2FnZSBpbiBvcmRlciB0byBkaXJlY3QgeW91IG9uIGhvdyB5b3Ugd2lsbApyZWNlaXZlIHRo
ZSBmdW5kIGJ5IEJhbmsgV2lyZSBUcmFuc2ZlciB0byBhbnkgb2YgeW91ciBub21pbmF0ZWQgYmFu
awphY2NvdW50IHdpdGhpbiA1IHdvcmtpbmcgZGF5cyB3aXRob3V0IGFueSBmdXJ0aGVyIGRlbGF5
LgoKSSBsb29rIGZvcndhcmQgdG8gcmVjZWl2ZSB5b3VyIHJlcGx5IHRoYW5rcy4KCkVtYWlsOiBy
ZWRjcm9zc3NvY2lldHlAaGVsbG9raXR0eS5jb20KVGVsOiArNDQtNzQ1LTEyNy00Nzc1KFdoYXRz
QXBwIG1lKQpSZWdhcmRzCk1yLiBFd2VuIFN0ZXZlbnNvbgooR3JvdXAgQ2hpZWYgRmluYW5jaWFs
IE9mZmljZXIpCkVuZ2xhbmQgVW5pdGVkIEtpbmdkb20KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
