Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB4C46A891
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Dec 2021 21:38:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8863984BBC;
	Mon,  6 Dec 2021 20:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_ybAsedd2yq; Mon,  6 Dec 2021 20:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1502C84BC2;
	Mon,  6 Dec 2021 20:38:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9CCB1BF37C
 for <devel@linuxdriverproject.org>; Mon,  6 Dec 2021 20:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A05C60D9C
 for <devel@linuxdriverproject.org>; Mon,  6 Dec 2021 20:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JuZ-n6Wzr55s for <devel@linuxdriverproject.org>;
 Mon,  6 Dec 2021 20:38:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F67160D96
 for <devel@driverdev.osuosl.org>; Mon,  6 Dec 2021 20:38:14 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id j2so34676684ybg.9
 for <devel@driverdev.osuosl.org>; Mon, 06 Dec 2021 12:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=U+wvXPwvhucTVlxnfZp7fdTxV1dqI6RrlYLlpej7n+A=;
 b=f8VtgHeCrISyX/RsYSy68ah6J4orVI/XeIh8LzpoBSiHZbQiKAKd7YMM4Era/MyrMq
 nqDQpUc0VRxFCrsxPVLkGgG4SbnjjClxvVnygmfISEI7PwiXacO6RXwfXDFufqbAIkc4
 OPU9mqedmqMFlwvvjMUK8beP0woc71uNaFsmp4enXHSPy6k0NB1uH1fb8yiaDA4Wa1z+
 Cj+OowlM4szthO1NL7f2/lgPOYlC4r1bHxYzHYr95EP9xRbS+WzoK8qvrviay1XkJ8ck
 fL8k7VZntPRlNyYcBXd0diimQJ40QNZipeRVzbT8we6h/58hAn/3bQ73hdM1YKIZTCKh
 +pGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=U+wvXPwvhucTVlxnfZp7fdTxV1dqI6RrlYLlpej7n+A=;
 b=CUYL3JLOadqE8jn1TK03uZYFTLjU8AVPAdR+cVXmzQMXh1sjcn68l+/HBcFPk39T7b
 wYYHVmwnqXLip+9dKdONO5Di9gHLEsMHkRbTOLwytUvywnNAIJejD8TvtVkl9ky+xK45
 fM7FY3biE9twXg1wIC9+LoA8n85JDWLo911TyqPau6n9xs2SvuAU6us11nKXGFsoWzNO
 cZk8/K5d8e7o1CjLeBUtthne9ltsmRz1K7fc3BetrkSHH3qE+pLSxNdbhEH6GjvHX+WX
 I27SETWZwDk7eKEzcelnn5oxWhPYY8FZ+3qYzf6rmC9aGFaOtDfFKQQVfz6HVnYGg7dm
 +a3g==
X-Gm-Message-State: AOAM533fdYQPf6gZT8LDk8mBPi4xWQE6ILkGrnKd8do/a751LVQkGuiz
 NICo6ZkcqEP/Ue8rla+kfyA2oNBWEqRCEgvZQKc=
X-Google-Smtp-Source: ABdhPJypky2Jp+1vMzonNcNbWyZUNKeXE/DTkx17xyBHhSfxbCnulOghg3z5A+s8XcWJOsAbLVe6P8zrZlg1aHRhA4k=
X-Received: by 2002:a25:ad06:: with SMTP id y6mr43418413ybi.278.1638823093911; 
 Mon, 06 Dec 2021 12:38:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:91a4:b0:fe:6c12:9189 with HTTP; Mon, 6 Dec 2021
 12:38:13 -0800 (PST)
From: Maureen Hinckley <bonfacemuchoki111@gmail.com>
Date: Mon, 6 Dec 2021 23:38:13 +0300
Message-ID: <CAGdddHJdsZYOuFrHwOdxNaNfCqfDwUk0FsH6eDmN3qEit6Oq3Q@mail.gmail.com>
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
Reply-To: mauhin13@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhlbGxvLAoKSSBhbSBNYXVyZWVuIEhpbmNrbGV5IGFuZCBteSBmb3VuZGF0aW9uIGlzIGRv
bmF0aW5nICgkMi4yIE1pbGxpb24uCkRvbGxhcnMpIHRvIHlvdS4gQ29udGFjdCB1cyB2aWEgbXkg
ZW1haWwgYXQgKG1hdWhpbjEzQGdtYWlsLmNvbSkgZm9yCmZ1cnRoZXIgZGV0YWlscy4KCkJlc3Qg
UmVnYXJkcywKTXJzLiBNYXVyZWVuIEhpbmNrbGV5LApDb3B5cmlnaHQgwqkyMDIxIFRoZSBNYXVy
ZWVuIEhpbmNrbGV5IEZvdW5kYXRpb24gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
