Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 117223B6B6F
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Jun 2021 01:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26C3F81BA9;
	Mon, 28 Jun 2021 23:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3zSIDoUIyhB; Mon, 28 Jun 2021 23:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8281481B72;
	Mon, 28 Jun 2021 23:37:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1EBA1BF40A
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 23:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EA7A400FD
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 23:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y-S7RarKfo90 for <devel@linuxdriverproject.org>;
 Mon, 28 Jun 2021 23:37:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06AEA400C0
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 23:37:45 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id v15so5873055ybs.10
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 16:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WNJQt05I1U8R4iAa5B5NbETPl81Q01YOm6i3cDzjhNs=;
 b=dV+UtfS+NeHC8vac5AoQcy60cvhU+Tla+M9/ZJVwtnAU9Aaz+aORg+q70Ops4i2nJ2
 KjJtPV8oTB+VsCAR8tqLrZnOB7ePODYFVOVEyawNI9HQf7ZYo/919SoDhLaoShkwxcAW
 uY1iHQR0YM9JNxlOtlZPOmz97Nmc1J8YIqABq18E/vnApOO/1R0CslCrx2L+Y6w/mPmo
 JvWi9jS+EgmyV2T2u4blXRWQZkehw1osUcg39dpnp0hUte+WWBWp4RoAY4x7QwBhDWv8
 +o2QfB3Z4nUdhm1HaU5alo+9cnLDsGucIyBhClx6GF4ZqUBYnS/rj4jQ9rzDvq3JYSEK
 tp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=WNJQt05I1U8R4iAa5B5NbETPl81Q01YOm6i3cDzjhNs=;
 b=VyaKoFXieT1/+xZ4xSjpgk3ST8o96LWwOz0JnDiu2yS4ULF7YtuyhL7lZLJPiPSZWI
 DAiCsnZsoQXB5+g2I636aRtQzaiyJ0L8bJff7YCLHd9SCw3zHWIE4PCziuyI4PZ7565Y
 SjIvDENoN6W77T/Bkl0z47EOEoil/5Z/EozUx3NZSnP10mbBunsq9NqwoRVOdvYyFywD
 qArrg0H+leUM+uJxHyHTwTEb6igB+a0ldbUEbaCKxvHwfLcUTxOvH5y0qaSosh96Lg8K
 jeSRUgkAUsMQsm9YuisfRDYMFkGhzR+ziI3XDzeW+tiFuBfiJbIg5iPz5smZCVQ3nu9R
 f4Ng==
X-Gm-Message-State: AOAM530NIitA1wbm7p68v48ekhqvqRfI13OoO2KNqZGA/AU4vme8RYI1
 gw5R6ypOzuWu3Vzq5UzejGcQS2lQGC8YSNDP8OE=
X-Google-Smtp-Source: ABdhPJzFmECnOGHQW/vrJh8LKSOyLCKMAa3kL3Z155peXsI80nc/Im2mrmZXjbcBVqeKubRH6wOzMRjRB9/r5sMG3OY=
X-Received: by 2002:a25:1804:: with SMTP id 4mr35497392yby.157.1624923464872; 
 Mon, 28 Jun 2021 16:37:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6918:38a2:b029:2c:c906:3e87 with HTTP; Mon, 28 Jun 2021
 16:37:43 -0700 (PDT)
From: Mr James Larry <mrjameslarry42@gmail.com>
Date: Mon, 28 Jun 2021 16:37:43 -0700
X-Google-Sender-Auth: 0-my9d5B56F7J8rWbzIsXLQt0j8
Message-ID: <CAF8XE42iV4_Cy2VtAUjZ9q2VHxmwV1koWgC_oOPLnW6PKQzb6g@mail.gmail.com>
Subject: I await your urgent response. My present internet connection is very
 slow in case you received this mail in your spam.
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
Reply-To: mrjameslarry406@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXR0ZW50aW9uLCBCZW5lZmljaWFyeToKCgpUaGlzIExldHRlciBJcyBmcm9tIHRoZSBGZWRlcmFs
IE1pbmlzdHJ5IG9mIEZpbmFuY2UuIER1cmluZyBPdXIKQ29tcHJlaGVuc2l2ZSBJbnZlc3RpZ2F0
aW9ucyBSZWdhcmRpbmcgWW91ciBJbmFiaWxpdHkgVG8gUmVjZWl2ZSBZb3VyCk92ZXIgRHVlIFBh
eW1lbnQgV2UgRGlzY292ZXJlZCBUaGF0IFlvdSBIYXZlIEJlZW4gRGVhbGluZyBXaXRoIEEgU2V0
Ck9mIENvcnJ1cHQgR292ZXJubWVudCBPZmZpY2lhbHMgV2hvIEhhdmUgQmVlbiBNYWtpbmcgRnJh
bnRpYyBFZmZvcnRzClRvIERpdmVydCBZb3VyIEZ1bmRzIEludG8gVGhlaXIgUGVyc29uYWwgQWNj
b3VudHMgVG8gRW5yaWNoClRoZW1zZWx2ZXMsIE5vdyBJdCBNYXkgSW50ZXJlc3QgWW91IFRvIEtu
b3cgVGhhdCBEdXJpbmcgT3VyIE1lZXRpbmcKV2l0aCBPZmZpY2lhbHMgT2YgWW91ciBDb3VudHJ5
4oCZcyBFbWJhc3N5IEhlcmUgSW4gQkVOSU4gUkVQVUJMSUMgVGhlCklzc3VlIFdhcyBFeHRlbnNp
dmVseSBEaXNjdXNzZWQgQW5kIEFuIElycmV2b2NhYmx5IFJlc29sdXRpb24gV2FzClJlYWNoZWQg
V2hlcmVieSBXZSBIYXZlIEJlZW4gTWFuZGF0ZWQgVG8gUGF5IFlvdSBUaGUgU3VtIE9mICQzLjVt
CihUaHJlZSBNaWxsaW9uIEZpdmUgSHVuZHJlZCBUaG91c2FuZCBVbml0ZWQgU3RhdGVzIERvbGxh
cnMgQXMgUGFydCBPZgpZb3VyIE91dHN0YW5kaW5nIENvbnRyYWN0L0luaGVyaXRhbmNlIFBheW1l
bnQsIEluIEZ1cnRoZXJhbmNlIFRvIFRoYXQKWW91IEFyZSBXYXJuZWQgVG8gU3RvcCBGdXJ0aGVy
IERlYWxpbmdzIFdpdGggQW55IE90aGVyIFBlcnNvbihzKSBPcgpPZmZpY2UocykgQmVjYXVzZSBT
dWNoIElsbGVnYWwgRGVhbGluZ3MvIEFjdGl2aXRpZXMgTWF5IFNhYm90YWdlIFRoaXMKTGF0ZXN0
IEVmZm9ydHMgSW4gRW5zdXJpbmcgQSBIaXRjaCBGcmVlIFJlbGVhc2UgT2YgWW91ciBQYXltZW50
LgoKSW4gTGlldSBPZiBUaGUgQWJvdmUsIEFuIEFUTSBDYXJkIFZhbHVlZCB0aGUgU3VtIE9mICQz
LDUwMCwwMDAuMDAgV2lsbApCZSBJc3N1ZWQgdG8gWW91IGJ5IHRoZSBBVE0gRGVwYXJ0bWVudCBv
ZiBQYXltZW50IFJlbGVhc2UgQ2VudGVyIFdoaWNoCllvdSBXaWxsIFVzZSB0byBXaXRoZHJhdyBZ
b3VyIE1vbmV5IGZyb20gQW55IENhc2ggUG9pbnQgb3IgQVRNIE1hY2hpbmUKQW55d2hlcmUgaW4g
dGhlIFdvcmxkIGFuZCB0aGUgTWF4aW11bSBXaXRoZHJhd2FsIFBlciBEYXkgSXMgJDEwLDAwMC4w
MApVU0QgcGF5IGRheSB1bnRpbCB5b3VyIHRvdGFsIGFtb3VudCAkMyw1MDAsMDAwLjAwIHdpdGhk
cmF3IGNvbXBsZXRlbHkuCgpGb3IgRnVydGhlciBEaXJlY3RpdmVzIFJlZ2FyZGluZyB0aGUgUmVs
ZWFzZSBvZiBZb3VyIEFUTSBDYXJkLCBDb250YWN0CkRpcmVjdG9yIEFUTSBEZXBhcnRtZW50LAoK
U2VjdXJpdHkgTXIgSmFtZXMgTGFycnksCkVtYWlsOiAobXJqYW1lc2xhcnJ5NDA2QHlhaG9vLmNv
bSkKVGVsZXBob25lOiArMjI5IDY3NDAzMjIxLAoKWW91IEFyZSBBZHZpc2VkIHRvIEZ1cm5pc2gg
VGhlbSB3aXRoIHRoZSBGb2xsb3dpbmcgSW5mb3JtYXRpb246CgpZb3VyIE5hbWU6CkFkZHJlc3M6
ClBob25lIE51bWJlcjoKQWdlOgpPY2N1cGF0aW9uOgoKTm90ZSBUaGF0IEJlY2F1c2UgT2YgSW1w
b3N0b3JzIFdlIEhlcmVieSBJc3N1ZSBZb3UgQSBDb21tdW5pY2F0aW9uCkNvZGUgKDAwMTEpLCBZ
b3UgQXJlIHRvIFVzZSBUaGlzIENvZGUgYXMgWW91ciBTdWJqZWN0IFdoZW4gQ29udGFjdGluZwp0
aGUgQVRNIERlcGFydG1lbnQgU28gYXMgdG8gRW5hYmxlIFRoZW0gR2l2ZSBZb3VyIEZpbGUgdGhl
IFVyZ2VudApBdHRlbnRpb24gSXQgUmVxdWlyZXMuCgpCZXN0IHJlZ2FyZHMKQmFyci4gUGF1bCBG
aXNoZXIKKFBlcm1hbmVudCBTZWNyZXRhcnkpCkZFREVSQUwgTUlOSVNUUlkgT0YgRklOQU5DRQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
