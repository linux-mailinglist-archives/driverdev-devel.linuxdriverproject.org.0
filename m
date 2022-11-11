Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026A5625B89
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Nov 2022 14:53:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 537D540BD2;
	Fri, 11 Nov 2022 13:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 537D540BD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMYu0Imi-_9I; Fri, 11 Nov 2022 13:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A9014018B;
	Fri, 11 Nov 2022 13:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A9014018B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B39EE1BF957
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 13:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C38781F70
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 13:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C38781F70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BRAfmjMdQIPV for <devel@linuxdriverproject.org>;
 Fri, 11 Nov 2022 13:53:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1633481F71
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1633481F71
 for <devel@driverdev.osuosl.org>; Fri, 11 Nov 2022 13:53:21 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id d185so5292863vsd.0
 for <devel@driverdev.osuosl.org>; Fri, 11 Nov 2022 05:53:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZU7GGwKrTPUork0z7yrkXD7U1Gnt2h1KwulR2VwvT2w=;
 b=WPNuZP9tKoj9d3udHxMd0V/3jdnA5p91XVYgFhtLs30vit5R5c1DBa93NISeoz55mx
 zpYHYoMPwxHMuKdWgZMfeya/rLTDZl5f1h3JNst8mr7vu+CM8IA1cOL9viXmHil3t9TP
 Xe0BYectCGhYFyMeaFlyHe0i0y4WM0CHIbZqpOtw7/dkzevlSg0guyivgsSkaLHGByDT
 fuRjvtgVX9VhIapXwdxIRoduKsgRy2Zu3kJ6jtfWSijxVgmlpKKTXnZ+gAe/erIxyFoF
 Q6cHGQgRGysQ2B3b5Um3AhgR+iBX2Uvbrfr8/IKDKKAERRDLAKEzINxuFbU2b1saX4SK
 uZyQ==
X-Gm-Message-State: ANoB5pmUvdtK8FwjiJBxVy5N8xw6KJJM6bq35yGIxt9qg6/Gjy2HOWen
 g9L1/fsCMTYiLui/DihWEtTs6dgaZDgvteNxmco=
X-Google-Smtp-Source: AA0mqf6coDFkhb7CRuM0u0PCTCZiN//oIp3GFHLYduTcBD/k2cKS76PvgsWBFstbMB+Ng/ettV8ZMeKgI642nauLtzc=
X-Received: by 2002:a67:e95a:0:b0:3aa:3de6:a2fb with SMTP id
 p26-20020a67e95a000000b003aa3de6a2fbmr738152vso.37.1668174799825; Fri, 11 Nov
 2022 05:53:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a67:e3c2:0:0:0:0:0 with HTTP; Fri, 11 Nov 2022 05:53:19
 -0800 (PST)
From: Ahmed hanif <qpeterson07@gmail.com>
Date: Fri, 11 Nov 2022 05:53:19 -0800
Message-ID: <CAGL6GqF=N_FPW38ZQrsDvp13v-JnTwH5Nf=j7QAHEjOVKVUJxA@mail.gmail.com>
Subject: Hello Dear,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZU7GGwKrTPUork0z7yrkXD7U1Gnt2h1KwulR2VwvT2w=;
 b=ffoV6c1GraqnDvCB+Ful+czn9NT4D8MSBsPTGDH8S5A6CZn5gPf/VEZ4PrzANXdcl2
 3enTGMWYwBJQt8RWzSfv5bF0acCk0gYo/UUmvhvAH/h308DpYLFZqQpbX6SjXCQu/Fg2
 jMOBD4+tgQjY3PoWy5GsIgNgu+wHwck9lK5w+kaChG4gCYYHXpSKwCvx+3I6t1NvBWVo
 tjhGnnMF+ZFICnJPTV9yswJHC2WW6NvsZH3Js5DtqscqmFXTMamPOlFgdC+YmBC4ViOu
 2chyUSwucJf/XMf2cKtyO+x6fNSLHux2cG4n/T3695iKlYfJnqSCvVL8TOUR0vhuL2Vh
 eDQQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ffoV6c1G
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
Reply-To: mrahmedhanif880@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhlbGxvIERlYXIsCgpSZTogQW4tdW5zcGVudCBVUyQ0MS42TSBJTUYgSW52ZXN0bWVudCBG
dW5kOgpJIGFtIHRoZSBDaGllZiBCdWRnZXQgTWFuYWdlbWVudCBPZmZpY2VyIGFuZCBhIHNlbmlv
ciBFY29ub21pYwpTdHJhdGVnaXN0IG9mIE9GRklDRSBPRiBCVURHRVQgQU5EIFBMQU5OSU5HIChP
QlApLCBJbnRlcm5hdGlvbmFsCk1vbmV0YXJ5IEZ1bmQsIElNRi4gSG93ZXZlciwgSSBhbSByZWFj
aGluZyB5b3Ugb24gdGhpcyBtYWlsIG5vdCBpbgp0aGF0IGNhcGFjaXR5LCBidXQgaW4gbXkgaW5k
aXZpZHVhbCBzZWxmIGFzIHlvdSB3aWxsIGZpbmQgb3V0IHJlYWRpbmcKYmVsb3cuCgpUbyBzdGFy
dCB3aXRoLCB0aGUgYW1vdW50IGFib3ZlIGlzIGEgbGVmdG92ZXIvb3IgdW5zcGVudCBhcHByb3Zl
ZCBhbmQKYnVkZ2V0ZWQgRlVORFMgZm9yIHZhcmlvdXMgSU1GIGFkbWluaXN0cmF0aXZlIGFuZCBj
YXBpdGFsIGJ1ZGdldHMKdW5kZXIgdGhlIHB1cnZpZXcgb2YgbXkgb2ZmaWNlIGluIDIwMjAuIEhv
d2V2ZXIsIGR1ZSB0byBoZWF2eSBnbG9iYWwKZmluYW5jaWFsIHJlZCB0YXBlIGJyb3VnaHQgYWJv
dXQgYnkgdGhlIGNvdmlkLTE5IHBhbmRlbWljIGxhc3QgeWVhciwKYW5kIHJlc3RyaWN0aW9ucyBv
biByZWxlYXNlIG9mIG5vbi1pbnN0aXR1dGlvbmFsIGx1bXAgc3VtcywKClRoZSBsZWZ0IG92ZXIg
YW1vdW50IHdhcyBjYXJlZnVsbHkgIktFUFQgQVBBUlQiIGluIGEgW0JBTksgU0VDVVJJVFkKVkFV
TFRdIHdoZXJlIGl0IHdvdWxkIGJlIG1vdmVkL3RyYW5zZmVycmVkIGludG8gdGhlIGN1c3RvZHkv
YmFuawphY2NvdW50IG9mIGFuIGludGVyZXN0ZWQgcGFydG5lciAoc2luY2UgSSBhbSB1bmFibGUg
dG8gcmVjZWl2ZSBpdApkaXJlY3RseSBpbiBteSBuYW1lKSBmb3IgYSBwb3NzaWJsZSBQcml2YXRl
IEludmVzdG1lbnQgQ29udHJhY3QgKFBJQykKQm9vc3QgRnVuZCAoYmV0d2VlbiB1cykgdW5kZXIg
eW91ciBzdGVlci1zaGlwIGFuZCBtYW5hZ2VtZW50LiBCdXQgaWYKeW91IGFyZSBub3QgZGlzcG9z
ZWQgdG8gb3VyIGpvaW50IGludmVzdG1lbnQgcGFydG5lcnNoaXAsIG9mIGNvdXJzZSB3ZQpjYW4g
ZGVjaWRlIG9uIGEgNTAvNTAgc3BsaXQgb2YgdGhlIG1vbmV5IHdoaWNoIGFsbG93cyBlYWNoIG9m
IHVzIHRvCnRha2Ugb3VyIHNoYXJlcyBhY2NvcmRpbmdseS4KCkluIHRoZSBsaWdodCBvZiB0aGlz
LCBwbGVhc2UgcmVwbHkgbWUgdXJnZW50bHkgYW5kIGZlZWwgYXQgZWFzZSB0bwpyZXF1ZXN0IGZv
ciBhbnkgYWRkaXRpb25hbCBpbmZvcm1hdGlvbi9jbGFyaWZpY2F0aW9uIHJlZ2FyZGluZyB5b3Vy
Cmludm9sdmVtZW50LgpPd2luZyB0byBzZWxmLXByb3RlY3Rpb24gYW5kIHNlbnNpdGl2aXR5IG9m
IG15IHByZXNlbnQgcG9zaXRpb24sIEkKd2lsbCBhcHByZWNpYXRlIHlvdXIg4oCcV09SROKAnSB0
aGF0IHRoaXMgdHJhbnNhY3Rpb24gc2hhbGwgcmVtYWluIHZlcnkKY29uZmlkZW50aWFsIGJldHdl
ZW4gdGhlIHR3byBvZiB1cy4KCllvdXJzIHRydWx5LApNciBBaG1lZCBIYW5pZgpFbWFpbDoKbXJh
aG1lZGhhbmlmODgwQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
