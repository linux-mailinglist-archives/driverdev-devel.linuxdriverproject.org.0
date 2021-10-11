Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB314294BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 18:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25CB581B26;
	Mon, 11 Oct 2021 16:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgyuMV3hxClo; Mon, 11 Oct 2021 16:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3844380F3B;
	Mon, 11 Oct 2021 16:47:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E69F1BF35B
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 16:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CAB6402DF
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 16:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T19agRTFEeHX for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 16:47:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CE5C402D7
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 16:47:46 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id s4so40448753ybs.8
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 09:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UwkxFdWh9bX4jrpESzbulrxZhFHucHATA5VsZRrgYv4=;
 b=EK7SMSuhCOMSRLSJ+owN+X8QcL3VtVawomGaZgtXm4KwSNL42OfPZM2wDx1dvWItin
 TY+f2mPPTLRYbzRtrkN8lbEYcLA4JRfwWWXBeSggBYS1QphO5K4bj8jPrWPY7oZ1rJCW
 15WKi34eSM5BMEg+VHQe3NkIg2/lfvIEuqnHNEALOr5gJiyhruCuiRwIRPIHjma2mgoL
 eon/Xy2WdjH7NyaWPG/KceIVo7y+4BqVizUeZ57wQs8/Maxl/SrmnSmurulwxSEXQaFz
 aKL4dN0IZxdWLtF8UpdUDPi4v83m7auCRHW2wqxo6XZot52wmJqVdhXBb2ZFjGKgXBl4
 an9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UwkxFdWh9bX4jrpESzbulrxZhFHucHATA5VsZRrgYv4=;
 b=2pwcPCAq8M95+gvuDhGEk6otNydkr3OVnKFih8NfT/S6kEL37OrYYHaLn2M0h5iv7r
 Lm5T84PhmXb6orieNsPBsySR6Xyk0mFE35vXYAUzf9wQ+n1tLEM9m+BnELE01WIEanuw
 HRK6OGbwXMi3hEDpb8Y1Qrz6T5F4k2Sa0ZZNXGwIT5i7F7fy223Gt5iKINeLzWBo065a
 Eh+dcuXd4Va8+EC16efaCSfLf4UB5NAbhcq2Ih2Wk2z4+gGYtuoeLI4g6gDf0+YCUVHC
 9i4GOCvD9nLarfh//w7PCZ1rOWYsiOex8dcdcrWiq2iVxc13XUP+4dxOymQoXyecsxLv
 B/YA==
X-Gm-Message-State: AOAM5304t+8KDkgNkNaU968o9Gt71g3MHglVifI6flVKjxJRSpBc+zkw
 oeD/yQwNxu3cRCvRdT2LUbME65cHwd24G98Rpp8=
X-Google-Smtp-Source: ABdhPJyZM06xK3pAwGeLnGQgtUPTdufnAqStpCL44YUTva+30amy2bmfJs5Rv2meybzfznBec34d05jsXv6TPKrh9PE=
X-Received: by 2002:a25:5402:: with SMTP id i2mr23025712ybb.312.1633970865267; 
 Mon, 11 Oct 2021 09:47:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:4701:b0:fa:49a7:16f7 with HTTP; Mon, 11 Oct 2021
 09:47:45 -0700 (PDT)
From: SPENDE <manuelfranco11986@gmail.com>
Date: Mon, 11 Oct 2021 17:47:45 +0100
Message-ID: <CA+d06AqM-yrTZ4=zQPEdeQNz2JbKiNaqGr+QMqc-ERTBdGyXEg@mail.gmail.com>
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
Reply-To: mf90665407@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCuKCrDIuODAwLjAwMCwwMCBFdXJvIHd1cmRlbiBJaG5lbiB2b24gTWFudWVsIEZyYW5jbyBn
ZXNwZW5kZXQsIGRlciBkZW4KUHJlaXMgZ2V3b25uZW4gaGF0IFBvd2VyYmFsbC1KYWNrcG90IHZv
biA3NjggTWlsbGlvbmVuIERvbGxhci4KS29udGFrdGllcmUgaWhuIMO8YmVyIEUtTWFpbDogbWY5
MDY2NTQwN0BnbWFpbC5jb20gZsO8ciB3ZWl0ZXJlCkluZm9ybWF0aW9uZW4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
