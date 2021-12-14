Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DA84744A5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Dec 2021 15:18:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B04E960BB3;
	Tue, 14 Dec 2021 14:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7mSEzHJJKjGT; Tue, 14 Dec 2021 14:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1121360BAF;
	Tue, 14 Dec 2021 14:18:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B9761BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Dec 2021 14:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AD1360BAF
 for <devel@linuxdriverproject.org>; Tue, 14 Dec 2021 14:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qH0HDvwEmIXt for <devel@linuxdriverproject.org>;
 Tue, 14 Dec 2021 14:18:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC0F160BAD
 for <devel@driverdev.osuosl.org>; Tue, 14 Dec 2021 14:18:11 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id b7so4276260edd.6
 for <devel@driverdev.osuosl.org>; Tue, 14 Dec 2021 06:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=KzLgDz7d2Gll4mrNvllKXj4KFgN8S+Ovisil7/bb6fs=;
 b=KNdeQjCrgndTL0c1dZk/ospbXyl9Nuz0BNovCOe/U2B0WBL8DtunppiqRoOX/na6KP
 Lo/hEyvt8U5EqOSypzZcH3FIhDg1PXSc0UyAJUkKilgDkhZrrYdqLngtaXiK6gfgxis3
 IeDnUtbDBPAUbeCsq4428YhR+lZk8O8q/IBufA8GsCv266Imx0TbeoaG1FarrG+7Avri
 RyIV60xxMmxQPTl6GqkmtrdW8M//sRla/66Z4Kv4zcSUL6BB7D6HxamXynBqnTTPXMy1
 +Oilw3VQSgR63V49JsiJefkwLU+5vlc/EOE++3Q3vWyLxnIAA1+kiahCdnkcimCrjuOS
 NpHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=KzLgDz7d2Gll4mrNvllKXj4KFgN8S+Ovisil7/bb6fs=;
 b=WgnLnlKSqhsFLfpBhgEigg53oamXfYoDpZdAGZa7kGBzv/mJM4aQY4xaQBvkYmGePC
 hqEH/vvYhljzJFDgsMQMpL/TkiJCF73fi2qYbSoJeu3mGcHRAJzf/+Mmd7pFq2B8CrFA
 T4amwjHupI5wxhsiiPq1bKdmQTOMG5crCSTyM6htucUl5N6zYch2rFQHvY+htos6e9LZ
 34xj40SSuET4ueKVMZ2u5IGfymPodfXsqWCUbZtr8lnMm/oSwv5T/VmyoTEnekbIOa5a
 M0RpOt/arDI2oYdR/spMNJnxt39fhQQwTmei6cbsiiX8CqFfn+7hZPzpB2yuopZt7dmY
 Svtg==
X-Gm-Message-State: AOAM532fiWwLGIDceZ/Y7xZvbijfT1CH+XF69oDe015cfMbo7MlQhBJA
 PsqwpdpV38kVzIlHPApxFdMTEQPQNfHUUurorLA=
X-Google-Smtp-Source: ABdhPJwgOwwsQX/ehD9f3V3iRpTpn2L+rjApR0KolBVbIGb8PozFpLBsrotl38Us/FfiFZ3on9MlMVFjddobZf+VFmc=
X-Received: by 2002:a17:906:538d:: with SMTP id
 g13mr6276216ejo.62.1639491487294; 
 Tue, 14 Dec 2021 06:18:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:3842:0:0:0:0:0 with HTTP; Tue, 14 Dec 2021 06:18:06
 -0800 (PST)
From: uchenna <okeyyoyopa@gmail.com>
Date: Tue, 14 Dec 2021 06:18:06 -0800
Message-ID: <CAHTws=LK4rSB2LHiL7P7_fJt5FZzgJmntHr3sQZ=jTuvC1zUrA@mail.gmail.com>
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
Reply-To: uchennailobitenone@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

May the Almighty Lord be with you....
Am A WIDOW TO LATE MR David HOLLAND,  I AM 59 .YEARS OLD. My name is
Josephine HOLLAND.  I am married to Late Mr. David HOLLAND, who worked
in the France Embassy a here in Lome -Togo West Africa for nine years
before he died in the
year 2019.

You are chosen to Receive A Donation Cash Grant of my late husband
that funds $5.7,000,  000,00 (Five Million Seven Hundred Thousand
United States Dollars) to help the poor and orphanages through your
sincere help before my death. I am suffering from long time cancer of
the Breast, from all indication my conditions is really deteriorating
and it is quite obvious that I wouldn't live any more longer according
to my doctor because the cancer has gotten to a very bad stage that no
hope for me to be a living person again, All i need from you is your
sincerity to use this funds to do this project as i desired and I need
your information as where My Bank will be sending the funds,

such as:
Receiver's name:_ Address:_ Phone
number:_ Country:_

Please do not be offended by the way or manner I came to you as a
stranger to do this, it is about the only way I could get to you after
going through your contacts Id. I shall give you the contacts of the
bank. For legitimacy with  a letter of authority that will establish
you as my appointed beneficiary of this money.

I am waiting for your reply.
From Sister Josephine HOLLAND.

You should contact me through my private email address:

mrsjosephineoneholland@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
