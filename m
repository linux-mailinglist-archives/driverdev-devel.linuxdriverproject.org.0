Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD4A57D957
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Jul 2022 06:15:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFE4D607FF;
	Fri, 22 Jul 2022 04:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFE4D607FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhs2QDA-AFJh; Fri, 22 Jul 2022 04:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69D8860AFC;
	Fri, 22 Jul 2022 04:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69D8860AFC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD401BF3EB
 for <devel@linuxdriverproject.org>; Fri, 22 Jul 2022 04:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4202460A87
 for <devel@linuxdriverproject.org>; Fri, 22 Jul 2022 04:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4202460A87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cyos7jQandxE for <devel@linuxdriverproject.org>;
 Fri, 22 Jul 2022 04:15:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 634AC607FF
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 634AC607FF
 for <devel@linuxdriverproject.org>; Fri, 22 Jul 2022 04:15:08 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id v5so2105584wmj.0
 for <devel@linuxdriverproject.org>; Thu, 21 Jul 2022 21:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=da7YISwEoIBRfOCzUYpRWAh9P9XR8y0nEeOdmj+UhKM=;
 b=hEpj9oZUUnCMXfqDaYm+bj3lHbBVhEjI7z8jNRHiBQMGn6oxFRi8zHipUdxWZ/SL3V
 Hn9cXSRtgBlRZoNeAAuhed2YivL2xQB4/NrOzPgqFu6UjNQZZeMntepA80228gEwkYV7
 gIHTWdoQgJZFmm+vDYkXaqnE2RmJwVsooFq699dlSZ/5UydCA2QndBLaFm0dTfThRSO6
 qjcM+QQN9a159SDl0wo+w9FC+KfpFJhGXQR6XDdms1xmQEzlGCw6HEEbNy/3/uomWWJ6
 G8IiIUY852qAKHl6LcG+LPV+vkqy1V8+tONpFeab+usSxEKu15FPbY9FvOKJ4W3WpY36
 m6Kg==
X-Gm-Message-State: AJIora/PhrjIFQejv10md61x8doHjUUyUtDIeNyEDSUHqpkWCN2xK68j
 LZGAfvBl+C0GZstoOIf5h4ecmcM/AYt+okNCc/s=
X-Google-Smtp-Source: AGRyM1vTRP6Ubg9UyaOmbAH3Ck7Z8q83HWE3cknNW0+DvOuRFHGVyVv6vlT1Dt1xoPBc94uGOGfBn9KSuJYMnQT95dE=
X-Received: by 2002:a05:600c:4f49:b0:3a3:1d16:18e8 with SMTP id
 m9-20020a05600c4f4900b003a31d1618e8mr864806wmq.109.1658463305597; Thu, 21 Jul
 2022 21:15:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:648a:0:0:0:0:0 with HTTP; Thu, 21 Jul 2022 21:15:04
 -0700 (PDT)
From: "Mrs.Esther" <sales.koremplast@gmail.com>
Date: Fri, 22 Jul 2022 05:15:04 +0100
Message-ID: <CANq7y2CAse3hWrTmdh6OGfy05Nm3DphE3Yhi0Lrv_ckH3joHXg@mail.gmail.com>
Subject: Greetings dear friend
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=da7YISwEoIBRfOCzUYpRWAh9P9XR8y0nEeOdmj+UhKM=;
 b=RdJmmGpEH4yrbHF8qAvQ8RGFJ6JcUset9XyHDc6A82Pbw17liPlqvHE6NS14fnKuQq
 3E/brYkennyOkf3qsQowYC3CsUMaiUl5r0qQDXvukYm8iomvFOzgM42aifZIEz9GBn1G
 dJ4nRpWQnyjMzeS+tVdOi9glQvWX2C+6oitwwPV+Q7D/eWD56f6kNOLqj4k1QEEcU2af
 mvmhbrZ3wPW7NDnsjlKr4aRcKlqmhjXsBlSij5tvmm4WaMXWBJfbnVMOfug7ZMeYWfKp
 QK2cbimtMKzwqlQf6a3NUwOdl95DFdpIuTcfieF8wUJpj961nAFyW5dFiOKOlikgkZKu
 vL8A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RdJmmGpE
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
Reply-To: mrsestherh7@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzIGRlYXIgZnJpZW5kCiAgICAgSSBhbSBoYXBweSB0byBrbm93IHlvdSwgYnV0IEdv
ZCBrbm93cyB5b3UgYmV0dGVyIGFuZCBoZSBrbm93cyB3aHkKaGUgaGFzIGRpcmVjdGVkIG1lIHRv
IHlvdSBhdCB0aGlzIHBvaW50LCBzbyBkbyBub3QgYmUgYWZyYWlkLiBJIHByYXllZAphbmQgZ290
IHlvdSBlbWFpbCBpZCBmcm9tIHlvdXIgY291bnRyeSdzIG1pbmlzdHJpZXMgb2YgY29tbWVyY2Ug
YW5kCmZvcmVpZ24gdHJhZGUgZGVwYXJ0bWVudHMuIEkgYW0gd3JpdGluZyB0aGlzIG1haWwgdG8g
eW91IHdpdGggaGVhdnkKc29ycm93IGluIG15IGhlYXJ0LCB0aGlzIG1hc3NhZ2UgbWlnaHR5IGNv
bWUgdG8geW91IGFzIHN1cnByaXNlIGJ1dCBpCmNob3NlIHRvIHJlYWNoIHlvdSB0aHJvdWdoIGlu
dGVybmV0IGJlY2F1c2UgaXQgc3RpbGwgcmVtYWlucyB0aGUKZmFzdGVzdCBtZWRpdW0gb2YgY29t
bXVuaWNhdGlvbiB0aHJvdWdoIHRoaXMgbWVkaXVtIGludGVybmV0IGhhcyBiZWVuCmdyZWF0bHkg
YWJ1c2VkLiBQbGVhc2UgZ2l2ZSBtZSB0aGlzIGxpdHRsZSBjaGFuY2UgdG8gZXhwbGFpbiBteXNl
bGYgdG8KeW91LCBJIHdvdWxkIGhhdmUgbGlrZSB0byBtZWV0IHlvdSBmYWNlIHRvIGZhY2UgYmVm
b3JlIGRlcGFydGluZyBmcm9tCnRoaXMgbW90aGVyIGVhcnRoIGJ1dCBkdWUgdG8gdGhlIGlsbG5l
c3MgY29udGludWUgdG8gZGVwcml2ZSB0aGUKY2hhbmNlIGJ1dCBldmVuIGlmIEkgZGllIG9uIHRo
ZSBwcm9jZXNzIG9mIHRoaXMgb3BlcmF0aW9uIEkgd2lsbCBzdGlsbApwcmFpc2UgbXkgR29kIEFM
TUlHSFRZLgoKICAgICAgICBNeSBuYW1lIGlzIE1ycy5Fc3RoZXIgSGVpZGkgaSBhbSBhIGR5aW5n
IHdvbWFuIGFuZCBpIGRlY2lkZWQKdG8gZG9uYXRlIHdoYXQgSSBoYXZlIHRvIHlvdSBmb3IgY2hh
cml0eSB3b3JrL2Fzc2lzdGFuY2UgdG8gbGVzcwpwcml2aWxlZ2VkIHBlb3BsZSBpbiB0aGUgc29j
aWV0eS4gSSBhbSA1MCB5ZWFycyBvbGQgYW5kIEkgd2FzCmRpYWdub3NlZCBvZiBjYW5jZXIgZm9y
IGFib3V0IDUgeWVhcnMgYWdvLCBpbW1lZGlhdGVseSBhZnRlciB0aGUgZGVhdGgKb2YgbXkgaHVz
YmFuZCwgd2hvIGhhcyBsZWZ0IG1lIGV2ZXJ5dGhpbmcgaGUgd29ya2VkIGZvciBhbmQgYmVjYXVz
ZSBteQpkb2N0b3IgdG9sZCBtZSB0aGF0IGkgd291bGQgbm90IGxhc3QgZm9yIHRoZSBwZXJpb2Qg
b2Ygb25lIHllYXIgZHVlIHRvCmNhbmNlciBwcm9ibGVtLiBCZWNhdXNlIG9mIG15IGhlYWx0aCwg
SSBoYXZlIHNvbWUgZnVuZHMgSSBpbmhlcml0ZWQKZnJvbSBteSBsYXRlIGh1c2JhbmQsIHRoZSBz
dW0gb2YgKCQxNy43TWlsbGlvbiBEb2xsYXJzKSBhbmQgSSBuZWVkZWQgYQp2ZXJ5IGhvbmVzdCBh
bmQgR29kIGZlYXJpbmcgd2hvIGNhbiB3aXRoZHJhdyB0aGlzIG1vbmV5IHRoZW4gdXNlIHRoZQpm
dW5kcyBmb3IgQ2hhcml0eSB3b3Jrcy4gSSBmb3VuZCB5b3VyIGVtYWlsIGFkZHJlc3MgZnJvbSB0
aGUgaW50ZXJuZXQKYWZ0ZXIgaG9uZXN0IHByYXllcnMgdG8gdGhlIExPUkQgdG8gYnJpbmcgbWUg
YSBoZWxwZXIgYW5kIGkgZGVjaWRlZCB0bwpjb250YWN0IHlvdSBpZiB5b3UgbWF5IGJlIHdpbGxp
bmcgYW5kIGludGVyZXN0ZWQgdG8gaGFuZGxlIHRoZXNlIHRydXN0CmZ1bmRzIGluIGdvb2QgZmFp
dGggYmVmb3JlIGFueXRoaW5nIGhhcHBlbnMgdG8gbWUuIEkgd2FudCBhIGdvb2QKcGVyc29uIHdo
byB3aWxsIHVzZSB0aGUgbW9uZXkgdG8gd29yayBmb3IgR29kcyBjaGFyaXR5IGhvbWVzIGFuZCBJ
CmhhdmUgY2hvc2VuIHlvdSBhZnRlciBnb2luZyB0aHJvdWdoIHlvdXIgcHJvZmlsZS4gSSB3YW50
IHRoaXMgbW9uZXkgdG8KYmUgc2hhcmUgdG8gdGhlIG5leHQgcHJpdmlsZWdlZCBzaW5jZSBJIGRv
IG5vdCBoYXZlIGEgY2hpbGQgdG8gaW5oZXJpdAp0aGUgbW9uZXkgYW5kIG15IGxhdGUgaHVzYmFu
ZCByZWxhdGl2ZXMgYWxsIGFyZSBub24gYmVsaWV2ZXJzIGFuZCBJCmRvbid0IHdhbnQgbXkgaHVz
YmFuZOKAmXMgaGFuZCBlYXJuIG1vbmV5IHRvIGJlIHVzZWQgaW4gYW4gdW5nb2RseSB3YXlzLgpI
ZW5jZSB0aGUgcmVhc29uIGZvciB0YWtpbmcgdGhpcyBib2xkIGRlY2lzaW9uIGJlY2F1c2UgSSBk
byBub3QgaGF2ZQphbnkgY2hpbGQgd2hvIHdpbGwgaW5oZXJpdCB0aGlzIG1vbmV5IGFmdGVyIEkg
ZGllLiBJIGFtIGRlc3BlcmF0ZWx5IGluCmtlZW4gbmVlZCBvZiBhc3Npc3RhbmNlIGFuZCBJIGhh
dmUgc3VtbW9uZWQgdXAgY291cmFnZSB0byBjb250YWN0IHlvdQpmb3IgdGhpcyB0YXNrLCB5b3Ug
bXVzdCBub3QgZmFpbCBtZSBhbmQgdGhlIG1pbGxpb25zIG9mIHRoZSBwb29yCnBlb3BsZSBpbiBv
dXIgdG9kYXkgd29ybGQuIFRoaXMgaXMgbm8gc3RvbGVuIG1vbmV5IGFuZCB0aGVyZSBhcmUgbm8K
ZGFuZ2VycyBpbnZvbHZlZCwgaXMgMTAwJSByaXNrIGZyZWUgd2l0aCBmdWxsIGxlZ2FsIHByb29m
LgoKICAgICAgICBUaGlzIG1vbmV5IGlzIHN0aWxsIHdpdGggdGhlbSBhbmQgdGhlIG1hbmFnZW1l
bnQganVzdCB3cm90ZSBtZQphcyB0aGUgdHJ1ZSBvd25lciB0byBjb21lIGZvcndhcmQgdG8gcmVj
ZWl2ZSB0aGUgbW9uZXkgZm9yIGtlZXBpbmcgaXQKc28gbG9uZyBvciByYXRoZXIgaXNzdWUgYSBs
ZXR0ZXIgb2YgYXV0aG9yaXphdGlvbiB0byBzb21lYm9keSB0bwpyZWNlaXZlIGl0IG9uIG15IGJl
aGFsZiBzaW5jZSBJIGNhbm5vdCBjb21lIG92ZXIgYmVjYXVzZSBvZiBteSBpbGxuZXNzCm9yIHRo
ZXkgZ2V0IGl0IGNvbmZpc2NhdGVkLiBQcmVzZW50bHksIEknbSB3aXRoIG15IGxhcHRvcCBpbiBh
Cmhvc3BpdGFsIGhlcmUgaW4gd2hlcmUgSSBoYXZlIGJlZW4gdW5kZXJnb2luZyB0cmVhdG1lbnQg
Zm9yIGNhbmNlciBvZgp0aGUgbHVuZ3MuIEl0IGlzIG15IGxhc3Qgd2lzaCB0byBzZWUgdGhhdCB0
aGlzIG1vbmV5IGlzIGludmVzdGVkIHRvCmFueSBvcmdhbml6YXRpb24gb2YgeW91ciBjaG9pY2Ug
YW5kIGRpc3RyaWJ1dGVkIGVhY2ggeWVhciBhbW9uZyB0aGUKY2hhcml0eSBvcmdhbml6YXRpb24s
IHRoZSBwb29yIGFuZCB0aGUgbW90aGVybGVzcyBiYWJpZXPigJkgaG9tZS4gSSB3YW50CnlvdSBh
cyBHb2QgZmVhcmluZyBwZXJzb24sIHRvIGFsc28gdXNlIHRoaXMgbW9uZXkgdG8gZnVuZCBvcnBo
YW5hZ2VzCmFuZCB3aWRvd3M7IEkgdG9vayB0aGlzIGRlY2lzaW9uLCBiZWZvcmUgSSByZXN0IGlu
IHBlYWNlIGJlY2F1c2UgbXkKdGltZSB3aWxsIHNvb24gYmUgdXAuIEFzIHNvb24gYXMgSSByZWNl
aXZlIHlvdXIgcmVwbHkgSSBzaGFsbCBnaXZlIHlvdQp0aGUgY29udGFjdCBvZiB0aGVtLiBJIGFt
IGFic29sdXRlbHkgYXNzdXJpbmcgeW91IHRoYXQgbm8gdHJvdWJsZSBpcwppbnZvbHZlZCBpbiB0
aGlzIG1vbmV5IGJlY2F1c2UgdGhpcyBpcyBteSBsYXRlIGh1c2JhbmQgbW9uZXkuIEkgd2FudAp5
b3UgdG8gdGFrZSAyMCBwZXJjZW50IG9mIHRoZSB0b3RhbCBtb25leSBmb3IgeW91ciBwZXJzb25h
bCB1c2Ugd2hpbGUKODAlIG9mIHRoZSBtb25leSB3aWxsIGdvIHRvIGNoYXJpdHkuIEkgd2lsbCBh
cHByZWNpYXRlIHlvdXIgdXRtb3N0CmNvbmZpZGVudGlhbGl0eSBhbmQgdHJ1c3QgaW4gdGhpcyBt
YXR0ZXIgdG8gYWNjb21wbGlzaCBteSBoZWFydApkZXNpcmUsIGFzIEkgZG9uJ3Qgd2FudCBhbnl0
aGluZyB0aGF0IHdpbGwgamVvcGFyZGl6ZSBteSBsYXN0IHdpc2guCkkgYW0gd2FpdGluZyBmb3Ig
eW91ciBraW5kIGFuZCB1cmdlbnQgcmVwbHkgdG8gbWUKICAgIFJlZ2FyZHMKTXJzLkVzdGhlciBI
ZWlkaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
