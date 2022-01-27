Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C0A49E4A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jan 2022 15:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EED984F7B;
	Thu, 27 Jan 2022 14:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id baH8CEbYHb4i; Thu, 27 Jan 2022 14:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B33E184F7A;
	Thu, 27 Jan 2022 14:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8D11BF3D0
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 14:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED3D041C63
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 14:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zpw0X4caNCw for <devel@linuxdriverproject.org>;
 Thu, 27 Jan 2022 14:31:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76D2C41C5D
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 14:31:54 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id 192so2794817pfz.3
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 06:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=IEMma1eGW5sQblzU1//BqOEn5E488+F+nzzq2q8j3TU=;
 b=cDgILOEuSguqG7ZoyzoLCWMX4/Z+mrsIRUg46q4wlZ9MB015dvawWwTzaREgsXYs2F
 FvJVZc+AOwm+0Arq7AcJ6jk0nTGkqmY7Qzm/fzzJDQ6YzcbDBsznXzUG4meWLwzuh1yk
 EhEdmNsO66CzskN4Q+RyS6AJtfzKoHdh5KphevnHs4JKXbiUV/Wzhy1FW3XIpg1ihqJ1
 9hVZaR8vlwlazvZOs/gZsZwsmpzaRR91eg4Kgaolo/jC0t3lILOoyC2mcgsfvitepIrF
 Uj7wZFZLOWNc3QGiYcjwv0R8yVrOeNTPg9jaZBQwowYXydoEVqT2zhQyhT3cKOLachLu
 Py7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=IEMma1eGW5sQblzU1//BqOEn5E488+F+nzzq2q8j3TU=;
 b=q6tNWpMx2bCxBLK5F8WTSpg5OLBBCz96o+IOidVHx1xgTdr4ICnSerwVn8TncLCpgG
 UTRjfAF+xmEGXWuE0tpDzStzFO91tz8bpIErYyw2XBsiXD4O40VdaImCQ5Q3aEZsYihX
 dkJNwdlyDURo84jBEVeCiOFyodFG6u/C9m8Aqx7RWZnaJtWfeucx6tcMn9Hjr2whXk9d
 yAixoxsYLb/NpZ7PvkASc/YCQKjHD+Gw39GlFM10M0LhTCN2D/xK/AP/Y7lJhHPpMk++
 SXX+gii9ZrjqbpOE5WQfvTnW6zDeBwjCy6UNVjdF/VDs4gv7QhsaMQwmsNkxAUinVyzT
 mpWg==
X-Gm-Message-State: AOAM532x+XjDARwPlt4kEN3tJ4VLyRE87Kg/k972N3JS4VE1Fqt/Oapj
 VgTBSy0C3niMXCI+I6kXaQT/TdjLfQQ/eYYL4k4=
X-Google-Smtp-Source: ABdhPJyvdEJn0sRV0ZfvNw8Qcecy7ROZzY/53yNejOVdpvvQruTmHJgGKhZ6khDD6YCr9dFb6wa1fx6IWDZtr+zs+R4=
X-Received: by 2002:a63:91c3:: with SMTP id l186mr3030441pge.558.1643293913854; 
 Thu, 27 Jan 2022 06:31:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:280f:0:0:0:0 with HTTP; Thu, 27 Jan 2022 06:31:53
 -0800 (PST)
From: Abraham Morrison <brose2831@gmail.com>
Date: Thu, 27 Jan 2022 06:31:53 -0800
Message-ID: <CAP0Q2SjkJ4XTWSkm1a5hVgMoTe6AgmJof_PpDUi=rrE7-p1TQA@mail.gmail.com>
Subject: Good day!
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
Reply-To: abrahammorrison443@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UHJvc3rEmSBvIHV3YWfEmSwKCkphayBzacSZIG1hc3o/IE1hbSBuYWR6aWVqxJksIMW8ZSBqZXN0
ZcWbIHpkcm93eSBpIHpkcm93eT8gSW5mb3JtdWrEmSwgxbxlCnVkYcWCbyBtaSBzacSZIHpha2/F
hGN6ecSHIHRyYW5zYWtjasSZIHogcG9tb2PEhSBub3dlZ28gcGFydG5lcmEgeiBJbmRpaSBpCnRl
cmF6IMWbcm9ka2kgem9zdGHFgnkgcHJ6ZWxhbmUgZG8gSW5kaWkgbmEga29udG8gYmFua293ZSBu
b3dlZ28KcGFydG5lcmEuCgpXIG1pxJlkenljemFzaWUgemRlY3lkb3dhxYJlbSBzacSZIHpyZWtv
bXBlbnNvd2HEhyBjaSBzdW3EmSA1MDAgMDAwICQKKHR5bGtvIHBpxJnEh3NldCB0eXNpxJljeSBk
b2xhcsOzdyBhbWVyeWthxYRza2ljaCkgeiBwb3dvZHUgdHdvaWNoCndjemXFm25pZWpzenljaCB3
eXNpxYJrw7N3LCBjaG9jaWHFvCBtbmllIHJvemN6YXJvd2HFgmXFmy4gTmllbW5pZWogamVkbmFr
CmJhcmR6byBzacSZIGNpZXN6xJkgeiBwb215xZtsbmVnbyB6YWtvxYRjemVuaWEgdHJhbnNha2Nq
aSBiZXogxbxhZG5lZ28KcHJvYmxlbXUgaSBkbGF0ZWdvIHBvc3Rhbm93acWCZW0genJla29tcGVu
c293YcSHIENpIGt3b3TEmSA1MDAgMDAwICQsCmFiecWbIHBvZHppZWxpxYIgc2nEmSB6ZSBtbsSF
IHJhZG/Fm2NpxIUuCgpSYWR6xJkgc2tvbnRha3Rvd2HEhyBzacSZIHogbW9qxIUgc2VrcmV0YXJr
xIUgdyBzcHJhd2llIGthcnR5IGJhbmtvbWF0b3dlagpvIHdhcnRvxZtjaSA1MDAgMDAwICQsIGt0
w7NyxIUgemFjaG93YcWCZW0gZGxhIENpZWJpZS4gU2tvbnRha3R1aiBzacSZIHoKbmnEhSB0ZXJh
eiBiZXogenfFgm9raS4KCkltacSZOiBMaW5kYSBLb2ZmaQpFLW1haWw6IGtvZmZpbGluZGE3ODVA
Z21haWwuY29tCgoKVXByemVqbWllIHBvdHdpZXJkxbogamVqIG5hc3TEmXB1asSFY2UgaW5mb3Jt
YWNqZToKClR3b2plIHBlxYJuZSBpbWnEmTouLi4uLi4uLgpUd8OzaiBhZHJlczouLi4uLi4uLi4u
ClR3w7NqIGtyYWo6Li4uLi4uLi4uLgpUd8OzaiB3aWVrOi4uLi4uLi4uLgpUd8OzaiB6YXfDs2Q6
Li4uLi4uLi4uLgpUd8OzaiBudW1lciB0ZWxlZm9udSBrb23Ds3Jrb3dlZ286Li4uLi4uLi4uLgpU
d8OzaiBwYXN6cG9ydCBsdWIgcHJhd28gamF6ZHk6Li4uLi4uLi4KClBhbWnEmXRhaiwgxbxlIGpl
xZtsaSBuaWUgcHJ6ZcWbbGVzeiBqZWogcG93ecW8c3p5Y2ggaW5mb3JtYWNqaQprb21wbGV0bnlj
aCwgbmllIHd5ZGEgY2kga2FydHkgYmFua29tYXRvd2VqLCBwb25pZXdhxbwgbXVzaSBzacSZCnVw
ZXduacSHLCDFvGUgdG8gdHkuIFBvcHJvxZsgasSFLCBhYnkgcHJ6ZXPFgmHFgmEgQ2kgY2HFgmtv
d2l0xIUgc3VtxJkgKDUwMCAwMDAKVVNEKSBrYXJ0eSBiYW5rb21hdG93ZWosIGt0w7NyxIUgZGxh
IENpZWJpZSB6YWNob3dhxYJlbS4KClogd3lyYXphbWkgc3phY3Vua3UsCgpQYW4gQWJyYWhhbSBN
b3JyaXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
