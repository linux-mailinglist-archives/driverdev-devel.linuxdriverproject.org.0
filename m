Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 367085F3B0B
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Oct 2022 03:43:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F035D83123;
	Tue,  4 Oct 2022 01:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F035D83123
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4kGW3yxznXY; Tue,  4 Oct 2022 01:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9D1C830E3;
	Tue,  4 Oct 2022 01:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9D1C830E3
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90B041BF372
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Oct 2022 01:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E11160E62
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Oct 2022 01:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E11160E62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4WOdNgdRwx7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Oct 2022 01:42:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD23B60E5C
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD23B60E5C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Oct 2022 01:42:52 +0000 (UTC)
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-127dca21a7dso14947547fac.12
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 03 Oct 2022 18:42:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :references:in-reply-to:reply-to:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=WymTqadsUMxvIbZypiAzFmn8Ep1U6OXRgKCD9YasjdQ=;
 b=hie5W/MEYGB3CfrF6Badih1eRrPO3WQDXnB2DwhMZWINu52QdXq9wtH6MrN+Rhqpjr
 wVNWaCYBFnOjpMwNFGkpMqfqImC7hN/JW9x/scdqwNWOVZrmcxi5UNXtsUhMnv52Q5ju
 a4CAUm66Y6dTaQTYQbW7MNEJcRzV4CbChdjmEP3LuUGPs9tZZ8EEcDNlFcobnNVrr6ma
 k0bHCsybI1U8/1w3foXhtl9FXlAFBxSJEHnTefRfw86pccMtNI+fh5Ff5lqs0N/04m1c
 8dEzdTTJdT4bHz7Ca/AmbvBig4o7siO3mZ3VDZsYdWXncflZxA5n80uPI9HnhgY8B5Vr
 pINQ==
X-Gm-Message-State: ACrzQf1ztzN1VBoJXa/7x2Faf/u+6a+hukDEMN3HYOY2HAbi+MdZR9Im
 nt9N0hPmaEE32dMNIDWRxlbXcOmV8HgJ6TuURaE=
X-Google-Smtp-Source: AMsMyM7jAz1ATMlSJfMJ91fMAZ5ZDnTwl+3hDJi5vBSSv0INLXLw/k+p3E72tMq4Vxw9lKe2bGgi+mcq/+aoUO8bwTc=
X-Received: by 2002:a05:6870:a997:b0:11c:5a86:e11a with SMTP id
 ep23-20020a056870a99700b0011c5a86e11amr6800597oab.270.1664847771682; Mon, 03
 Oct 2022 18:42:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:50c4:b0:b2:2b90:c223 with HTTP; Mon, 3 Oct 2022
 18:42:50 -0700 (PDT)
In-Reply-To: <CAHg_c8Ny1WwXaJGwSh5jqtdQ37FwRqKSWMZ=BhK4bEgWsm+f7Q@mail.gmail.com>
References: <CAHg_c8MsxQ_nw-sCK-J7ZS1k+fNMJNiF=8oZf=xDj25RNykePA@mail.gmail.com>
 <CAHg_c8NGWqSJoB6LZ0=Wj1eqcjm-FdmhP0qtoSTM2HH8g_3L9A@mail.gmail.com>
 <CAHg_c8NrWNkExk81iqWSV23P7Xje2KsBq16b+VL3KSHSr62OpA@mail.gmail.com>
 <CAHg_c8Ny1WwXaJGwSh5jqtdQ37FwRqKSWMZ=BhK4bEgWsm+f7Q@mail.gmail.com>
From: "Mr. David Jacob" <mrthembam2018@gmail.com>
Date: Tue, 4 Oct 2022 03:42:50 +0200
Message-ID: <CAHg_c8PtpLizKxk80bUWOLuSCBQm1byJyJ0=9yFO00AqcGCoBA@mail.gmail.com>
Subject: Investment Partnership Venture.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :references:in-reply-to:reply-to:mime-version:from:to:cc:subject
 :date;
 bh=WymTqadsUMxvIbZypiAzFmn8Ep1U6OXRgKCD9YasjdQ=;
 b=FKPvWdSNoNgEzUSEOUu3Kfp+AU/qtE+2j10krDNqCbilOwk6jA1Kq8ZTO8nhbHHXHo
 eCftIF4KOkWzvAPsv9QQ7H9Cm69NeEQhku4uO7J7qGsRPT6rPJmgck/lG3C6At3Op1CH
 3vyc1JCCm/rITOP0ERRChKtV9t1YnVYPj8HWMKUHRPRvw7M3gpSAtEmL4OaceP5p22el
 YfmD9CGzYtLV8IuWQBp59FbkCnCJUc6pzMKVq7M/aY6W97IQHsZ3w4LQKANiPqgpPMrI
 f/rlPC5X7T/+zbuefPCsINuxToTu/EMiHP9Dl4KxUaD2W8ZgL4pYCJYW7L5U5i+anXc1
 rzpg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=FKPvWdSN
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
Reply-To: 2018davidjacob2018@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SW52ZXN0b3JzL0NFTyAmIERpcmVjdG9ycy4KCkkgYW0gY29udGFjdGluZyB5b3UgZm9yIGEgbHVj
cmF0aXZlIGJ1c2luZXNzIHZlbnR1cmUgYWZ0ZXIgbWFraW5nCm9mZmljaWFsIGVucXVpcmllcyBh
dCB0aGUgZm9yZWlnbiB0cmFkZSBvZmZpY2UuIE15IG5hbWUgaXMgTXIuIERhdmlkCkphY29iIGZy
b20gRWFzdGVybiBDYXBlIFNvdXRoIEFmcmljYSwgSSB3cml0ZSB0byBwcmVzZW50IHRvIHlvdSBh
CmJ1c2luZXNzIHByb3Bvc2FsLiBJIGFtIGxvb2tpbmcgZm9yIGEgcHJpdmF0ZSBidXNpbmVzcywg
aW52ZXN0b3JzIG9yCnByb3BlcnR5IG93bmVycyB3aG9tIEkgY2FuIHBhcnRuZXIgd2l0aCBpbiBn
b29kIGFuZCBsdWNyYXRpdmUgYnVzaW5lc3MKdmVudHVyZSBvciBpbnZlc3RpbmcgaW4geW91ciBw
cm9qZWN0LgoKV2UgaGF2ZSBhIGZhbWlseSBmdW5kIHdoaWNoIHdhcyBkZXBvc2l0ZWQgaW4gYSBC
YW5rIGhlcmUgaW4gU291dGgKQWZyaWNhIGJ5IG15IGxhdGUgTW90aGVyIHdobyB3b3JrcyBmb3Ig
bWluaW5nIGNvbXBhbnkgaW4gU291dGggQWZyaWNhCmFuZCBzaGUgaXMgYWxzbyBhIHdlbGwgc3Vj
Y2Vzc2Z1bCBidXNpbmVzcyB3b21hbiBiZWZvcmUgaGVyIHVudGltZWx5CmRlYXRoLgoKSSBkb27i
gJl0IHdhbnQgdG8gaW52ZXN0IHRoaXMgbW9uZXkgaW4gU291dGggQWZyaWNhIGJlY2F1c2Ugb2YK
aW5zZWN1cml0eSBpbiB0aGUgY291bnRyeS4gVGhlcmVmb3JlIEkgYW0gaW4gbmVlZCBvZiBhIGdv
b2QgbWFuIG9yCndvbWFuIHdob20gSSBjYW4gdHJ1c3QgYW5kIHBhcnRuZXIgd2l0aCBpbiBoaXMg
b3IgaGVyIGJ1c2luZXNzIG9yCnByb2plY3Qgd2l0aCB0aGlzIGZ1bmQuCgpJZiB5b3UgYXJlIGlu
dGVyZXN0ZWQgdG8gYmUgbXkgcGFydG5lciwgSSB3aWxsIGludmVzdCBpbiB5b3VyIGtpbmQKYnVz
aW5lc3Mgb3IgcHJvamVjdHMgc28gZmVlbCBmcmVlIHRvIGNvbnRhY3QgbWUgZm9yIG1vcmUgaW5m
b3JtYXRpb24Kb24gaG93IHdlIHdpbGwgcHJvY2VlZC4KCk9uY2UgSSByZWNlaXZlIGEgcmVwbHkg
ZnJvbSB5b3UgdG8gaW5kaWNhdGUgeW91ciBpbnRlcmVzdCB0aGF0IHlvdSBhcmUKYWxzbyBsb29r
aW5nIGZvciBhbiBpbnZlc3RvciB3ZSB3aWxsIHByb2NlZWQgaW1tZWRpYXRlbHkuIEkgbG9vawpm
b3J3YXJkIGZvciB5b3VyIHJlc3BvbmQgdG8gbXkgcGVyc29uYWwgZW1haWwgYWRkcmVzcyBiZWxv
dy4KCllvdXJzIEZhaXRoZnVsbHksCk1yLiBEYXZpZCBKYWNvYi4KRW1haWw6IDIwMThkYXZpZGph
Y29iMjAxOEBnbWFpbC5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
