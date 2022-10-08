Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347BB5F8876
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Oct 2022 01:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E73F6405CF;
	Sat,  8 Oct 2022 23:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E73F6405CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fg3tn8GWxpii; Sat,  8 Oct 2022 23:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4340405D8;
	Sat,  8 Oct 2022 23:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4340405D8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3206D1BF35B
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 23:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A7B8405CF
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 23:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A7B8405CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3l3a2rzYm40N for <devel@linuxdriverproject.org>;
 Sat,  8 Oct 2022 23:19:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7B68401D2
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7B68401D2
 for <devel@driverdev.osuosl.org>; Sat,  8 Oct 2022 23:19:43 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id 63so9471366ybq.4
 for <devel@driverdev.osuosl.org>; Sat, 08 Oct 2022 16:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/nA7wQOXHKT4fxvE16DQkW+wBXwOdSWpnmIBurdAy6o=;
 b=fzGpvOPEpJZmBxjEgFnus+rQBRib0vwm4t+Gvp1tR2Pi/tmQoQkiASYu73UnDK2Xaq
 E8L8slXoIMc80zUhKiKfRXLSBKSOgP78hcCbpFntXQWt9zkX6FPqdRj7rb12LYRwj6Pd
 Lx+u3+IAJE9QLEnNknzBGYgVQKh5t18jGBwtZoG+dpaDec7g/mHqRjGYaPyqkiE8Xc+T
 tbtESBAsuTbta7XemRkKhP+TN1GHTp0ua6ZrlAF9GKwj7w6b7xfJR2hdb1H/UJt7JgI2
 18WMNeU1A2M8PiNHho+EekAy0R5oWHAXJqMM4ih+26V8TNHzXKVk/ww8GYqH1AelhZsR
 xQjg==
X-Gm-Message-State: ACrzQf1AyB2+g12+hU0FPjxU89b/Mdos7+bI9kp54XyxPL7FAEB17l9+
 4r0RQgO4QxHigd+pzNQnOK2B5MixhcGX3lbdux8=
X-Google-Smtp-Source: AMsMyM5Is02cZ4d77cb/vj7DAhdPDmaqW/ttn9osfQG6N1FpPx26s7eXCmCN1Egms5meMaGF/0A5cHDYHlfDCXBdZU0=
X-Received: by 2002:a05:6902:202:b0:6b5:2297:58f2 with SMTP id
 j2-20020a056902020200b006b5229758f2mr11313489ybs.205.1665271182738; Sat, 08
 Oct 2022 16:19:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:5941:b0:3c5:d2a3:c1ee with HTTP; Sat, 8 Oct 2022
 16:19:42 -0700 (PDT)
From: Frau Maria Elisabeth Schaeffler <sanususalisuimam@gmail.com>
Date: Sat, 8 Oct 2022 16:19:42 -0700
Message-ID: <CAGX7_e05JgjNvfQHWuwrx2gTQSEJhQQu765DMCcWD=PZUY4YRg@mail.gmail.com>
Subject: Re: Spende
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/nA7wQOXHKT4fxvE16DQkW+wBXwOdSWpnmIBurdAy6o=;
 b=izZspHb8JTdRH8y8mlCSlqOlm6XRVnL146+nPq6OwXpAaIO5fR51kRN4Uv7t2A54Qc
 N0NjZucPR8+acfnTryIaXaugXczF9Io2gK8tQaBqmNi7hsCF59bY8wgrV65xXydBgkNF
 DhFHlF4umsAZKx3VLDxJW0V4k40ZCyhVaElqKghOEy0Xh2DxfdWrrkj5JR+f6Yt9CbR0
 mJwVtGRDjq4dZhqqee88Fpq5z+R5kYncfRILvO6ceEYemQSOErIvnZdz9Mom3Rk4yOU3
 W7PhPaKkT464q9X/cd8LKQGZQAtcJ0NG61e4SH9XI1VaNf/8B6q2uuCnkBNMh9Cr/dAt
 LyWQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=izZspHb8
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
Reply-To: mariaelisabethschaeffler47@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLAoKSWNoIGJpbiBNYXJpYSBFbGlzYWJldGgsIGVpbmUgZGV1dHNjaGUgR2VzY2jD
pGZ0c2ZyYXUsIEludmVzdG9yaW4sIHVuZApuYWNoZGVtIGljaCBtZWluZW4gTWFubiBpbSBLcmFu
a2VuaGF1c2JldHQgdmVybG9yZW4gaGF0dGUsIHNhZ3RlIGVyCm1pciwgaWNoIHNvbGxlIGVpbmVy
IGd1dGVuIFBlcnNvbiB3aWUgSWhuZW4gMS4wMDAuMDAwIEV1cm8gc3BlbmRlbi4KSWNoIGhhYmUg
MzUgUHJvemVudCBtZWluZXMgcGVyc8O2bmxpY2hlbiBWZXJtw7ZnZW5zIGbDvHIgd29obHTDpHRp
Z2UKWndlY2tlIGdlc3BlbmRldC4gVW5kIGljaCBoYWJlIGF1Y2ggenVnZXNhZ3QsIGRpZSByZXN0
bGljaGVuIDM1JSBpbgpkaWVzZW0gSmFociAyMDIyIGFuIEVpbnplbHBlcnNvbmVuIHp1IHZlcnNj
aGVua2VuLiBJY2ggaGFiZSBtaWNoCmVudHNjaGllZGVuLCAxLjAwMC4wMDAsMDAgRXVybyBhbiBT
aWUgenUgc3BlbmRlbi4gV2VubiBTaWUgYW4gbWVpbmVyClNwZW5kZSBpbnRlcmVzc2llcnQgc2lu
ZCwga29udGFrdGllcmVuIFNpZSBtaWNoIGJpdHRlIGbDvHIgd2VpdGVyZQpJbmZvcm1hdGlvbmVu
LgoKTGVzZW4gU2llIGRlbiBMaW5rLCBkZW4gU2llIGhpZXIgc2VoZW4ga8O2bm5lbjoKaHR0cHM6
Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTWFyaWEtRWxpc2FiZXRoX1NjaGFlZmZsZXIKCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpNaXQgZnJldW5kbGljaGVuIEdy
w7zDn2VuLApGcmF1IE1hcmlhIEVsaXNhYmV0aCBTY2hhZWZmbGVyLApWb3JzaXR6ZW5kZQpTdXBl
cm1hcmt0a2V0dGUuCkUtTWFpbDogbWFyaWFlbGlzYWJldGhzY2hhZWZmbGVyNDdAZ21haWwuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
