Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACBF468A3E
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Dec 2021 10:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B8BB405BB;
	Sun,  5 Dec 2021 09:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id is1SGQRRpmqR; Sun,  5 Dec 2021 09:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E175A40577;
	Sun,  5 Dec 2021 09:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B45E91BF591
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 09:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF5BE4015E
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 09:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1B3QrWKWYJ_K for <devel@linuxdriverproject.org>;
 Sun,  5 Dec 2021 09:11:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E526B40105
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 09:11:39 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id o4so7227485pfp.13
 for <devel@linuxdriverproject.org>; Sun, 05 Dec 2021 01:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/KhWWRRAoW3dkM2eqyChNKw46QC19qAqY37jEFbhBOI=;
 b=pEvNL6XNrEod1H8kH2aFE0wHHGXHX+qrVo5LFuySGxOaZVoqje0kXgh/5I7IFn/uBr
 /8Se4jEs9+6eAKYcwO1tOz5rJtN6s2F+8sig1jAKeOdgHd7KnXcLFEQi2dtlsAlU13H6
 ay2Nb3NziTdvZvHYcdDj6oR7yNksWgidGrGDFbrGpqoQVzUnIalgusFDCU9x6KVHxo5q
 hlrCBgTTKL9Vyar1ZunlFlJ+mZnBMw8BRKaKQcvclABOfcKujjrXXbhrM10UqysfsXdK
 DLIeuUHvKzy7YSj4kO83dSYYFTXVoScFBemzDxY42NehH1CCWJaiseaneKwNzwcfU6ub
 IAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/KhWWRRAoW3dkM2eqyChNKw46QC19qAqY37jEFbhBOI=;
 b=wePuWLUYoUbgikTW9oRr/j+7FuSIrRa0yVYL0vl+iXmKMIf7eM7QPwlIhXXNxU4+mp
 Gnzm1mluK7UjgXCPZsze0ifLUyU7Q7QEZSBXrbbDAsVhcGqpZn00ztYipYWtX1Dig1cr
 ctv0vbbsB1cFvXQNgHb1Qavy7lkUtFsvFXvo/OtiWeMBBEHyzHAJG7ZLNv0CjiJntkfS
 fJzI6q0C+LfXESpZs4oRVKlMnWe4Et25dSo8XaA4iuHO7DjWMxNjBEDmqccHs9RnVM7i
 YvifiEcO26N+RAitzGxLoTCd4tPoaymvIh02GKdRLFQ3dcuVrdTjFGXcLcI6Hs/bxguA
 TGTw==
X-Gm-Message-State: AOAM5308mXgIZlYWLlGZf8x+YARemUPL3COkuuLBJfK1JC0rqQL/8Vpe
 x8VRw/W/2dwr/O14WFmf0ZpQgj8BMsnGQIH8Oes=
X-Google-Smtp-Source: ABdhPJyveRL4MB+t9z2/RMuCFyom7NowdoRk83006SXV8Dq4lJuxbh517INww1NFnPZE1NnvAbqJf9DWDU72+N0wfFA=
X-Received: by 2002:a63:4664:: with SMTP id v36mr13116650pgk.147.1638695499004; 
 Sun, 05 Dec 2021 01:11:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:10c:0:0:0:0 with HTTP; Sun, 5 Dec 2021 01:11:38
 -0800 (PST)
From: Eric Benie <jhdjfu9@gmail.com>
Date: Sun, 5 Dec 2021 01:11:38 -0800
Message-ID: <CAGe5cHzzRp0dwvpxqeEuEwrrdhai9bK61B8COsXjC=0gwLmHdA@mail.gmail.com>
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
Reply-To: luistimo1921@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have registered the ATM MASTER CARD with DHL COMPANY this morning
as we agreed and the delivery will take off this week based on my
agreement with .Dr Luis Timo  contact phone
+229 99501447. MOST IMPORTANT: reconfirm your DHL delivery address
to him include your phone number then contact Dr Luis Timo via the following
email: luistimo1921@gmail.com  I will not be reached till november 24th,
2022,Note that you will pay for official keeping charges only so
ask them where to send the fee and Your amount in the Card is
US$7.2Million.

Eric A benie
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
