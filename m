Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA85B5DCA
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Sep 2022 18:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25E9B40592;
	Mon, 12 Sep 2022 16:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25E9B40592
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tf2hAT0-Xfb; Mon, 12 Sep 2022 16:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD58E40587;
	Mon, 12 Sep 2022 16:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD58E40587
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15E3B1BF2C4
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 16:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDD76418F5
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 16:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDD76418F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jv7Plraz6knz for <devel@linuxdriverproject.org>;
 Mon, 12 Sep 2022 16:00:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30A40418ED
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30A40418ED
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 16:00:35 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id l8so2052327wmi.2
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 09:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=RMCPqj4tQ1+7IikYq54AniDzbOG6R4J0htZV62Ajc5Y=;
 b=b2jTNDMSuLu+A25pzn8r+7heZW9wsjHVovcx4z8pdYcuZbq/xoQ+j6Pd9LfZ2ljr3q
 NqoI5Mn9azsR+vD9vEcRpCYae8dAZCKiu7Y5Caxs7UvTQ10dflwdEB3y851gFmEdNQgL
 G73NVQVk5UtyLCqc1oTmcUnWm2kn2FtDY7EOkfmkQR+Q+I2LZZ4kzQ3KxNa57FGR2qO9
 lMaC+JNQTYZK7A3cmATjXGbzmg6pNVsc4VXW7Pc912/PG9iTqGDzFXjb5Q4seVqpkGG7
 te3kSFvl5yw4jb0bWUCo4sBs+Zdtm+sSm3xRJTL4AKohViwlAA+zQ6ij4UhMLT2XQ6ji
 vUfQ==
X-Gm-Message-State: ACgBeo126d/Z52JS1sHjzzQfWUCaFttq1VMWkPV7uNHbbt8LLnn9nVI5
 Tg7QFWpf803TLdqqGcFfiuv94jUTzPEfBlo03w==
X-Google-Smtp-Source: AA6agR7xr+jLDHU0p1sgSE+6aVojB/SsC0huBKhQN0VLVqagZBfxil+6W0y1KAFBITp9+ajL1qzJP+t92OkdwV+o+rE=
X-Received: by 2002:a05:600c:1f1b:b0:3a5:f4f4:f599 with SMTP id
 bd27-20020a05600c1f1b00b003a5f4f4f599mr14658285wmb.39.1662998425834; Mon, 12
 Sep 2022 09:00:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:cf08:0:0:0:0:0 with HTTP; Mon, 12 Sep 2022 09:00:25
 -0700 (PDT)
From: NANCY AND RAMON MAXI <ksks18182020@gmail.com>
Date: Mon, 12 Sep 2022 17:00:25 +0100
Message-ID: <CAFO6BZwp4K5p0ihcK3Et0AbMnMhJ9A6TyRB2moPa0C6euACJQQ@mail.gmail.com>
Subject: THE REASON WHY WE CONTACTED YOU
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=RMCPqj4tQ1+7IikYq54AniDzbOG6R4J0htZV62Ajc5Y=;
 b=quHF1P3d7kEVYTTaP3ZSvqokmwKx3vjAEk5RnACBitJG16rDPQVsY1lVb2wFHSG/4Z
 nHjd7J2qcnioXIQ3/jbxFazsbsWTjqQTofjVnepucDCDKNXlnNqruVrllzPD2EXCzZl/
 INrouTDRZ1AxIDqRUI/Swtn5xgEme6MzgSX9peFCRB3hYqNyddwKiB1qy9vTxJNuvCbg
 /RW+Gb4Y+So3HQLBIvtuthgRpQfr2Akn8scZIgBvCndUDmPNtHAoqLtzIvS09DsHT1bh
 6OSthg7gWCE2tJordjayUfbfTaSGWWmYk2jryvUPIYsTU+AJBvQHA9taShYX1W9umsMl
 bdYg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=quHF1P3d
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
Reply-To: ramonmaxi225@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhlbGxvIGRlYXIgcmVzcGVjdGVkLAoKV2UgZ3JlZXQgeW91IHdpdGggcmVzcGVjdC4gT3Vy
IG5hbWVzIGFyZSBNaXNzIE5hbmN5IE1heGkgYW5kIG15IGp1bmlvcgpicm90aGVyIGlzIFJhbW9u
LiBXZSBhcmUgdGhlIG9ubHkgdHdvIGNoaWxkcmVuIG9mIHRoZSBsYXRlIERyLiBhbmQKTXJzLk1h
eGkgZnJvbSBBYmlkamFuLCBDw7R0ZSBkJ0l2b2lyZS4gV2UgbG9zdCBvdXIgcGFyZW50cyBkdXJp
bmcgdGhlCmNyaXNpcyBpbiBvdXIgY291bnRyeSBpbiAyMDEwLgoKV2UgYXJlIGNvbnRhY3Rpbmcg
eW91IGJlY2F1c2Ugd2UgaGFkIHNvbWUgbW9uZXksKCBOaW5ldGVlbiB0aG91c2FuZApmaXZlIGh1
bmRyZWQgTWlsbGlvbiBVUyBkb2xsYXJzKSwgd2hpY2ggbXkgbGF0ZSBmYXRoZXIgZGVwb3NpdGVk
IHdpdGgKb25lIG9mIHRoZSBiZXN0IGJhbmtzIGhlcmUgYmVmb3JlIGhpcyBkZWF0aC4gV2UgbmVl
ZCB5b3VyIHNpbmNlcmUKY29vcGVyYXRpb24gYW5kIGFzc2lzdGFuY2UgdG8gaGVscCB1cyByZWNl
aXZlIHRoaXMgZnVuZCBpbiB5b3VyCmFjY291bnQgYW5kIHVzZSBwYXJ0IG9mIGl0IGZvciB0aGUg
d2VsbC1iZWluZyBvZiB0aGUgcG9vciBhbmQgbGVzcwpwcml2aWxlZ2VkLyBvcnBoYW5hZ2VzIGlu
IHlvdXIgY291bnRyeSBvciBlbHNld2hlcmUgaW4gdGhlIHdvcmxkLiBJbgphZGRpdGlvbiwgeW91
IHNoYWxsIGFsc28gaGVscCB1cyB0byBjb21lIG92ZXIgdG8geW91ciBjb3VudHJ5IHRvCmZ1cnRo
ZXIgb3VyIGVkdWNhdGlvbiB3aGlsZSB5b3UgbWFuYWdlIG91ciBmdW5kIHRpbGwgd2UgZmluaXNo
IG91cgplZHVjYXRpb24uCgpNeSBicm90aGVyIFJhbW9uIGFuZCBJIGhhdmUgYWdyZWVkIHRvIGdp
dmUgeW91IDE1JSBmcm9tIHRoaXMgdG90YWwKbW9uZXkgYXMgY29tcGVuc2F0aW9uIGFuZCB0aGFu
a3MgZm9yIHlvdXIgaGVscC4gV2UgYWxzbyBhZ3JlZWQgdG8gZ2l2ZQp5b3UgZXh0cmEgKE9uZSBo
dW5kcmVkIHRob3VzYW5kIFVTIGRvbGxhcnMgKSBmb3IgeW91IHRvIGNvdmVyIGFueQpleHBlbnNl
cyB0aGF0IHlvdSBtYXkgaW5jdXIgaW4gdGhlIGNvdXJzZSBvZiB0aGlzIGZ1bmQgdHJhbnNmZXIg
dG8KeW91ciBhY2NvdW50LgoKSWYgeW91IGFyZSBpbnRlcmVzdGVkIGFuZCBjYW4gYmUgVFJVU1RF
RCwgcGxlYXNlIHJlcGx5IHRvIHVzIGluCmFic29sdXRlIHRydXRoIGFuZCBzaW5jZXJpdHkgaW1t
ZWRpYXRlbHkgZm9yIG1vcmUgZGV0YWlscyBiZWZvcmUgSSBnbwpmb3Igc3VyZ2ljYWwgb3BlcmF0
aW9uLgoKV2FpdGluZyBmb3IgeW91ciByZXNwb25zZSwKClRoYW5rcyBhbmQgbWF5IGdvZCBibGVz
cyB5b3UsCk1pc3MgTmFuY3kgTWF4aSBhbmQgYnJvdGhlciBSYW1vbi4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
