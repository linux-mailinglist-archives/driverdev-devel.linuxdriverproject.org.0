Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5918E44F91E
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 17:42:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE6A840207;
	Sun, 14 Nov 2021 16:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1QEahB6kLiI; Sun, 14 Nov 2021 16:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8E7E40156;
	Sun, 14 Nov 2021 16:42:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE4361BF30F
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 16:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7F774024B
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 16:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxbN1jXLvdF6 for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 16:42:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFF4140248
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 16:42:14 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id t18so41341186edd.8
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 08:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gIWMjSK2tVNSE12LSY+i2eA/yogCogYerdHfhdhoePY=;
 b=EUvf0bmwlkEPPKO+xSwXO4K9i6lFUIovb98FEM0Q3GgTEgyKAqK7/LHr3J2Veur4h5
 4TdfSNdGYy0ejOxDw84rOw3REBVl9oo/vKmLPba9oW4Mg3PizWmMGRv4ZPUrD1BqgdJr
 bnNjYREumy/54hRwo3lfuL4hrfBRvzGgRsJsP/TaO6FHGBnhTb3/vyIjXvVFhjrswqbD
 jE2TrpDrQdEcKu+LmEEbg5Us6Wr+J1sBHDUAz5UHWWMBHoXjF5b7/77Ry8PA9uuBvcF/
 +j0UUDF1L0Z0wnywpLRzpPOkH3Jz+pvlQZyD5tlRa0gBmpHbnQfODy0wFng0UoaGWz5l
 BR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=gIWMjSK2tVNSE12LSY+i2eA/yogCogYerdHfhdhoePY=;
 b=W0c7Q6jIHD4N61y3HdKW+/03nt4NLLuEdUO9s3hTvTEUVmz3IXymwHzVfW61f2+ZhU
 IKJmj7mLQlSlZavOymTFz2SMk8XIKBS5yt+wdrq0FxGqbHLLieD019PuBEioKy7fbSYN
 jMGP4q5myy/qUk79Zq/8ZA+rfN7LtH/FEVHyZIF5VrhJ9yLvr4fzu9tHPEnCiU+TaSr0
 gEUtlkz5zpALg3dZ9MeeCAG4pb+8D8rTJMGQq69yH9Y5dpCYo9jlR3h4qgrbAfMn1m1F
 0hF6EpGWDY+iJAWLLRz7PRic/N9BpIJ6d0cyCF+VI7LGORSpDekNl0iFjHtmnRnPV0B5
 2geQ==
X-Gm-Message-State: AOAM530WV78PNkCbsXsyOxQGbHzjMVPLYPvBRQ1Tpup4ywGhdfEJul8Q
 Jmeea+YdukouV2PWFZRS++nXp82/T/Uw+8aOvYQ=
X-Google-Smtp-Source: ABdhPJzTTJhwSAFzwJHgPSfj4k5QsB9AcoIn5qNBS4l5fLpsxQ3OyqPmcHl1zb7cbOD+GC0ONfZMf5+MvNwBKK/mjjg=
X-Received: by 2002:a50:ff10:: with SMTP id a16mr29117753edu.275.1636908133162; 
 Sun, 14 Nov 2021 08:42:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:830d:0:0:0:0 with HTTP; Sun, 14 Nov 2021 08:42:12
 -0800 (PST)
From: JOHN WILLIAMS <mwaviswanczyk60@gmail.com>
Date: Sun, 14 Nov 2021 08:42:12 -0800
Message-ID: <CAOtfq1Qp2wSY2oLrJZ1EN+E2RS15+s6BG12NSBzD9MG3PXM+CQ@mail.gmail.com>
Subject: Erschwingliche Kreditgesellschaft
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
Reply-To: johnloanfirm2@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBTdWNoZW4gU2llIGZpbmFuemllbGxlIEZyZWloZWl0PyBTaW5kIFNpZSB2ZXJz
Y2h1bGRldCwgYmVuw7Z0aWdlbiBTaWUKZWluZW4gS3JlZGl0LCB1bSBlaW4gbmV1ZXMgVW50ZXJu
ZWhtZW4genUgZ3LDvG5kZW4/IG9kZXIgU2llIGJyZWNoZW4KZmluYW56aWVsbCB6dXNhbW1lbiwg
YnJhdWNoZW4gZWluZW4gS3JlZGl0IGbDvHIgZGVuIEthdWYgZWluZXMgQXV0b3Mgb2RlcgplaW5l
cyBIYXVzZXM/IEhhdCBJaHJlIEJhbmsgamVtYWxzIGFiZ2VsZWhudD8gU2llIG3DtmNodGVuIElo
cmUgRmluYW56ZW4KdmVyYmVzc2Vybj8gU2llIGJyYXVjaGVuIGVpbmVuIEtyZWRpdC4gSWhyZSBS
ZWNobnVuZ2VuIHphaGxlbiBzaWNoIGF1cz8KU3VjaGVuIFNpZSBuaWNodCBtZWhyLCB3aXIgYmVn
csO8w59lbiBTaWUgZsO8ciBlaW5lIEdlbGVnZW5oZWl0IGbDvHIgYWxsZSBBcnRlbgp2b24gRGFy
bGVoZW4genUgZWluZW0gc2VociBnw7xuc3RpZ2VuIFppbnNzYXR6IHZvbiAyJSBmw7xyIGFuZGVy
ZS4gRsO8cgpJbmZvcm1hdGlvbmVuIGtvbnRha3RpZXJlbiBTaWUgdW5zIGpldHp0IHBlciBFLU1h
aWwgYW46ICgKam9obmxvYW5maXJtMkBnbWFpbC5jb20pIERhcmxlaGVuPyBTaWUgYmVuw7Z0aWdl
biBlaW5lbiBQcml2YXRrcmVkaXQ/IFNpZQptw7ZjaHRlbiBlaW4gQXV0byBrYXVmZW4/IFNpZSBt
w7ZjaHRlbiBzaWNoIHJlZmluYW56aWVyZW4/IEJlbsO2dGlnZW4gU2llIGVpbgpIeXBvdGhla2Vu
ZGFybGVoZW4/IEJlbsO2dGlnZW4gU2llIGVpbiByaWVzaWdlcyBLYXBpdGFsLCB1bSBJaHJlbgpH
ZXNjaMOkZnRzdm9yc2NobGFnIG9kZXIgSWhyZSBFeHBhbnNpb24genUgc3RhcnRlbj8gU2llIGhh
YmVuIGRpZSBIb2ZmbnVuZwp2ZXJsb3JlbiB1bmQgZGVua2VuLCBlcyBnaWJ0IGtlaW5lbiBBdXN3
ZWcgdW5kIElocmUgZmluYW56aWVsbGVuCkJlbGFzdHVuZ2VuIGJsZWliZW4gYmVzdGVoZW4/IEJp
dHRlIHrDtmdlcm4gU2llIG5pY2h0LCB1bnMgZsO8ciBlaW5lIG3DtmdsaWNoZQpnZXNjaMOkZnRs
aWNoZSBadXNhbW1lbmFyYmVpdCB6dSBrb250YWt0aWVyZW4uIEtvbnRha3RpZXJlbiBTaWUgdW5z
IHBlcgpFLU1haWw6IGpvaG5sb2FuZmlybTJAZ21haWwuY29tCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
