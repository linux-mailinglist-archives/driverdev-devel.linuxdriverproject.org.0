Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C50BE48AC4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 12:22:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A303410E6;
	Tue, 11 Jan 2022 11:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5p2u9bOS7T3D; Tue, 11 Jan 2022 11:22:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ED5D401EB;
	Tue, 11 Jan 2022 11:22:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09FCF1BF345
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 11:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E999660ACE
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 11:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCGAVf0zPitg for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 11:22:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2536F60776
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 11:22:43 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id g11so55120981lfu.2
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 03:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/MpiwXY2Cxnetxkl+aSrR8Le+DvGL8ONNklKXSrObRA=;
 b=DXHWapIVUwYl3wzK0MHapPqS4cmUKIwM5DatNtFw886Qa42XJW5L/7j2OECbK7ettT
 jvjdkIp2ePWNGW5EN9cirxYyR1Tk/RxpSajgVvEa6u2/LpwZeVF7gVUDrNQoIB52mXQ2
 prhW/RrLTy3hAVxQ+9vRZqkCooEo3fzxpcrvG4saoUIxErSc5jsRwyvgnT6T+Vj0dCJ8
 mfwXFhsdNnjA97X9qouw2l6YSjDBkOW7c+RGCs7C3ee0AsnRv4l2dQXOX5OBZQbfUF/G
 Gzw3el3VDNUYyMHLSTh3PYk2OiXXruXYpPmW76v7ZP7qK6PqmhF+VbwE8h5C341bRV/s
 NsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=/MpiwXY2Cxnetxkl+aSrR8Le+DvGL8ONNklKXSrObRA=;
 b=alnxdVqp3Sw11q1b5S6CAG7aTz8NnO1R7cIE7r+WC5KHctneLgZ5j1k52CX8D4SsMo
 xo1dmYUhufOZCA1FsGZV/vISA0dASR9PujB47f0HAVVUB20OA1/amDmhHU4SccKm+uz0
 YpCe2MfpT6PPBZThrLphfiq6CFHRBYLhPEeNltaNzugsPZBkHdFlX4KuCaG6feZOmhnm
 tdAj4ZdYM0dXAaNOu4YRWM3VLx6EThSC78ST+PwPbqaP6P/UnVOPJbgBRTm5iXz5WU1i
 NkTndcdLfuRNDu6N82hUPihvyvVIo2TyiTjeiDQUenJgH1ZF/S2SrhTZerfP4eERoLR7
 AF5Q==
X-Gm-Message-State: AOAM532jYLk1KTn0ri43b8JnAuKDGAHEmtiA7iHEmTk8ztr56bnEyb0Q
 cMfuI2AV1uXtf9zLjFhVRRf3GNBJimShULObBsU=
X-Google-Smtp-Source: ABdhPJzvkNEwfOve6RRHx+7e3hQgcCdgEpQi59WtxtJ9CFKfynXJkwVFeNzjiDj977AzRnUssKg190kzaf0NglEe7ic=
X-Received: by 2002:a2e:2e0d:: with SMTP id u13mr2658389lju.235.1641900160625; 
 Tue, 11 Jan 2022 03:22:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:895:0:0:0:0 with HTTP; Tue, 11 Jan 2022 03:22:40
 -0800 (PST)
From: Nataicha Latifa Inossa <floranceyaogo@gmail.com>
Date: Tue, 11 Jan 2022 11:22:40 +0000
Message-ID: <CAH4ksUsfD1YFjJfwQAg47YYd_yvC0hPd3kJDvFXqNdwD8WKn3g@mail.gmail.com>
Subject: Happy new year beloved.
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
Reply-To: nataichalatifainossa@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLApIb3cgYXJlIHlvdSBhbmQgeW91ciBsb3ZlbHkgZmFtaWx5IGRvaW5nIGkgaG9w
ZSB5b3UgYXJlIGFsbCBpbiBnb29kIGhlYWx0aD8KaSBoYXZlIGEgYnVzaW5lc3MgcHJvcG9zYWwg
aW4gZ29vZCBmYWl0aCBob3BpbmcgdGhhdCBpIHdpbGwgcmVseSBvbiB5b3UgaW4KdGhpcyB0cmFu
c2FjdGlvbiB0aGF0IHJlcXVpcmVzIGFic29sdXRlIGNvbmZpZGVudGlhbGl0eSBhbmQgb2YgZ3Jl
YXQKaW50ZXJlc3QgYW5kIGJlbmVmaXQgdG8gb3VyIGJvdGggZmFtaWxpZXMgd2hpY2ggaSByZXF1
ZXN0IHlvdXIgY29vcGVyYXRpb24KaW4gbXkgZGVzaXJlIHRvIGZpbmQgYSBmb3JlaWduIHBhcnRu
ZXIgd2hvIHdpbGwgYXNzaXN0IG1lIGluIHJlbG9jYXRpb24gYW5kCmludmVzdG1lbnQgb2YgYSBm
aXhlZCBkZXBvc2l0IGZvciAzNiBtb250aHMsIHZhbHVlZCBvZiAoJDE5LjMgTWlsbGlvbikKTmlu
ZXRlZW4gTWlsbGlvbiBUaHJlZSBIdW5kcmVkIFRob3VzYW5kIFVTIERvbGxhcnMgYXQgdGhlIGJh
bmsgd2hlcmUgaSB3b3JrCmFuZCBpIHdhcyBoaXMgYWNjb3VudCBvZmZpY2VyLCBpbi13aGljaCB0
aGUgbWF0dXJpdHkgZGF0ZSBmb3IgdGhpcyBkZXBvc2l0CmNvbnRyYWN0IHdhcyAyN3RoIG9mIFNl
cHRlbWJlciAyMDEwLiBTYWRseSBNUi4gQUxJIE1PSVNJIEVMLVNBQUQgd2FzIGFtb25nCnRoZSBk
ZWF0aCB2aWN0aW1zIGluIHRoZSBTZXB0ZW1iZXIgMjAwOSBlYXJ0aHF1YWtlIGluIEluZG9uZXNp
YSB0aGF0IGxlZnQKb3ZlciAxLDIwMCBwZW9wbGUgZGVhZCB3aGlsZSBoZSB3YXMgdGhlcmUgb24g
YSBidXNpbmVzcyB0cmlwLgoKTWVhbndoaWxlLCBpIGRvbuKAmXQga25vdyB5b3UgaW4gcGVyc29u
IGJ1dCBpIGFtIDEwMCUgc3VyZSB0aGF0IHdlIGNhbiBqb2luCm91ciBoZWFkIHRvZ2V0aGVyIGFu
ZCBhY2hpZXZlIHRoaXMgZ3JlYXQgb3Bwb3J0dW5pdHkgYmVjYXVzZSBpIGdvdCB5b3VyCmNvbnRh
Y3QgYWRkcmVzcyB0aHJvdWdoIG15IENvdW50cnkgRS1tYWlsIERhdGEgRGlyZWN0b3J5IHdoaWxl
IHNlYXJjaGluZwpmb3IgYSBjcmVkaWJsZSBhbmQgcmVsaWFibGUgZm9yZWlnbiBwYXJ0bmVyIHRv
IHNoYXJlIHRoaXMgaW5mb3JtYXRpb24gd2l0aAp3aGljaCBpIGFtIGNvdW50aW5nIG9uIHlvdXIg
c2Vuc2Ugb2YgY29uZmlkZW50aWFsaXR5IGFzIGkgZGVzaXJlIHRoYXQgeW91CmtlZXAgdGhpcyBi
dXNpbmVzcyB0cmFuc2FjdGlvbiB0b3Agc2VjcmV0IG9ubHkgdG8geW91cnNlbGYgYmVjYXVzZSB0
aGlzIGlzCmh1Z2UgYW1vdW50IG9mIG1vbmV5IGludm9sdmVkLgoKVGhhdOKAmXMgd2h5IGkgYW0g
c2Vla2luZyB5b3VyIGNvb3BlcmF0aW9uIHRvIHByZXNlbnQgeW91IGFzIHRoZSBvbmUgdG8KYmVu
ZWZpdCBmcm9tIHRoaXMgZnVuZCBhcyB0aGUgbmV4dCBvZiBraW4sIHNvIHRoYXQgbXkgYmFuayBo
ZWFkcXVhcnRlcnMKd2lsbCBwYXkgdGhlIGZ1bmRzIGludG8geW91ciBiYW5rIGFjY291bnQuIEkg
aGF2ZSBkb25lIGVub3VnaCBpbnNpZGUgdGhlCmJhbmsgYXJyYW5nZW1lbnQgYW5kIGkgb25seSBo
YXZlIHRvIHB1dCBpbiB5b3VyIGRldGFpbHMgaW50byB0aGUKaW5mb3JtYXRpb24gbmV0d29yayBp
biB0aGUgYmFuayBjb21wdXRlcnMgYW5kIGRvY3VtZW50IGFuZCByZWZsZWN0IHlvdSBhcwpoaXMg
bmV4dCBvZiBraW4gYW5kIHRoZSBvbmx5IGJlbmVmaWNpYXJ5LCBpZiB5b3UgYWdyZWUgd2l0aCB0
aGlzIHByb3Bvc2FsLgpZb3Ugd2lsbCBoYXZlIDQwJSBvZiB0aGUgdG90YWwgZnVuZHMgd2hpbGUg
NjAlIHdpbGwgYmUgbWluZS4KClRoZXJlZm9yZSwgaWYgeW91IGFyZSBpbnRlcmVzdGVkIGFuZCB3
aWxsaW5nIGZvciB1cyB0byBhY2hpZXZlIHRoaXMgZ3JlYXQKb3Bwb3J0dW5pdHkga2luZGx5IGdl
dCBiYWNrIHRvIG1lIHdpdGhvdXQgZnVydGhlciBkZWxheSBmb3IgbW9yZSBkZXRhaWxzIG9uCmhv
dyB3ZSBjb3VsZCBwcm9jZWVkIGFuZCBhY2hpZXZlIHRoZXNlIGdvYWxzIHN1Y2Nlc3NmdWxseS4K
CkRJU0NMQUlNRVI6ClRoaXMgaXMgbm90IFNQQU0uIFlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZW1h
aWwgYmVjYXVzZSB5b3Uga25vdyBpdCBsb29rcwpzYWZlIG1ha2UgYSBsYWJlbCBmb3IgeW91ciBp
bmJveCBhbmQgbWFyayBpdCBhcyBub3Qgc3BhbSB0aGlzIGlzIG5vdApwaGlzaGluZy4KClRoYW5r
cyBhbmQgQmVzdCByZWdhcmRzLApXYWl0aW5nIHRvIGhlYXIgZnJvbSB5b3UKTWFkYW0gTmF0YWlj
aGEgTGF0aWZhIElub3NzYQpNeSBwcml2YXRlIFBob25lIG51bWJlciBvbiBXaGF0c0FwcCArMjI2
LSA2NC0xOS03My05Ny4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
