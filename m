Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42842969F
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 20:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF7BB403F9;
	Mon, 11 Oct 2021 18:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YIdEBAjFs37P; Mon, 11 Oct 2021 18:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 689604038D;
	Mon, 11 Oct 2021 18:14:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1D3E1BF2C1
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 18:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2357605D9
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 18:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIDyT8O3h3XA for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 18:14:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34CC46059B
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 18:14:16 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id w2so8965633qtn.0
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 11:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UwkxFdWh9bX4jrpESzbulrxZhFHucHATA5VsZRrgYv4=;
 b=Og34ztIVD4/HH3jQFMg5+EzxoWYvA8uoZJRm0F34KMCfjF88qurVOr/lCPcf1bR6fc
 94DKZ3AwtgRmDy4cWz9fagbKWcbL6fCCqwfeieLUyMCqnh/lUJ/xw0ihWjhqJ2pRz4r2
 tXepbgUDzqLky2e7KPnQBUebuqmpjqALI80WrRUtoBKS5F+g3RocdzOyjQNCLMLhaVNz
 1bbpmZ0fOhP9NDPkIrTeuzDYghFUgRSktX/SJhG7Oyu9FgnatmjNTzfYcjYoy38iIl9r
 lLDgwLMAbnt4F2loUZV5/FSsEPfaI7wghi2eC4WbsiJUAW6uyBAOsYhLiPZMFDgINO0W
 lCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UwkxFdWh9bX4jrpESzbulrxZhFHucHATA5VsZRrgYv4=;
 b=bs9P70M/C7XHchYOZQfqpnpwL3lbAb/isFpf0Mjneg7Uk30l50wPjez/SUePTyPUfF
 OM5yvOiNIEyvIYxuIJyrr4/ugSOHX9NdhC86MRFRr3ZCEI+v7fpQ5PTO+FTECRVmTR2m
 2qTlSSpK/y0Z0NZBWHXVQPIzUVaM6Yu6o8XAglcaPJbmdXYRccGmWdjoqkLXxUOtIUGk
 3+GSOaXW2RVTmomtM60Z3yalHazWZR0/ZIBwCb7TNeT0dOrSwq+57GwVVPwy8G9VFyv/
 Xoc5O9tYGPd13SUEBKjmHf+mpOoSu1UJuM4skywKU5wV4I/iM7A6yGWgtfnwGVGoYAFe
 ek/Q==
X-Gm-Message-State: AOAM533VgIw219kG+pSDI2ER1v6mRSPB0va9+UB1tVny9Om5G7LtwsBD
 5Gk0hOW3Zf7T/SaDqixHNjfewLOWvVr3WFrzDkg=
X-Google-Smtp-Source: ABdhPJzkMctJ5CWM1w0/puzruOJkm2f8fYGsw80CVN+6nWhPd4MCgMIzu7fIDnSx3uMhEuYb1joU/ro21P7MSMvBLqo=
X-Received: by 2002:a05:622a:448:: with SMTP id
 o8mr8131217qtx.63.1633976055004; 
 Mon, 11 Oct 2021 11:14:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5e11:0:0:0:0:0 with HTTP; Mon, 11 Oct 2021 11:14:14
 -0700 (PDT)
From: SPENDE <manuelfranco11987@gmail.com>
Date: Mon, 11 Oct 2021 19:14:14 +0100
Message-ID: <CAFhoY6cEJYDAybKJcRdBBnGAXgO=uNguesxUU+tC1sOCe7b-jQ@mail.gmail.com>
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
