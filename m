Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B87164F2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 15:49:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 805C287C89;
	Tue,  7 May 2019 13:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qBwbLWtl2rlj; Tue,  7 May 2019 13:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F5B185945;
	Tue,  7 May 2019 13:49:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3FB1BF32C
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 13:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C5DC22699
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 13:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mixsXB9Orzuk for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 13:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 36A8E2151E
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 13:49:37 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id f37so18756797edb.13
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 06:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=euemdhHUFLuSuId1RNfwYjKhHGbhd9gRXwryEuN0UN8=;
 b=Gya7RSBvbDj7ToTPgKhS6yAIXnCX8xm9zep18SKqSe5SUR1WW0paYN3kFGCHu+Kkc6
 ed5/OlwGHIenGWvC2wror9do3NnU4n6hMDqJ9hhQIFXCqqpBuNOJlH/Sxv80yb+L2bd9
 lb1lX8u+qVasahpBpBZSi05ly0k0RJSJERSs4c3mmP3wACKt9/72T111HdqTKG2i8LvS
 z0JVla1ixYxsPpQa7pX20R3l2eEFD/SPABChWG1k0BeuRneH66i1LEwiEHexmnXsy3Ru
 WY2GS7QigIoHDmXHaQsPCmIhPo3FeM470q7zLGlrAzLaY9G86yp31edMj5hIw2rex6Z3
 O4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=euemdhHUFLuSuId1RNfwYjKhHGbhd9gRXwryEuN0UN8=;
 b=kswfBX6SazlYZF13/U6VA9B3DCQSElsri350aHKXsIq573ybZEEeCTaCTiNtyTgi5o
 OqERGeL3CDqXBpYMrEL/3GlvuLCeetfcpYe3lN9Mv8k0NGxkKxuRDaQyM8PIBnV24gEX
 GYGnCcYHkoABOA0Vn0Sv6fn4kD4JjQko/QAKKyYHiDT1SYnYCmBME1c+6DhAgdtJCDf+
 KmloqrBB34s2pIvxe0mNpUb+gfSVm0f69qzP1tJ18NdB+4/9r9b6kRllhh4IdTj8mgIT
 rops/qZ8L1agar0N6JOy6LtA72jPW4HodYr54hTZMQSxjz6InwTfEHNh+xNfXZo/IuPA
 +YHQ==
X-Gm-Message-State: APjAAAVBDG1ZXxx46amKj6LY7cVUOQtku7h6WjcgzpCtpfZ6Knd5TgDa
 O4Em10fCxIVBkxtpwl7Ve7FZw9ONz1v16PFFgRg=
X-Google-Smtp-Source: APXvYqxrwYWlgdaQeBMp+ljjwiAlV4eVdD+SE5MefsMILZDPoawLtjMFwoNlCkitGwRaPuvwwS7jSO1gQPV7ry1NmLQ=
X-Received: by 2002:a17:906:6410:: with SMTP id
 d16mr24602660ejm.75.1557236975656; 
 Tue, 07 May 2019 06:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <1557177887-30446-3-git-send-email-ynezz@true.cz>
In-Reply-To: <1557177887-30446-3-git-send-email-ynezz@true.cz>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 7 May 2019 16:49:24 +0300
Message-ID: <CA+h21hqZnr1C5W6qMQMictdSROZvmggjXoYhX+=biEoT4Fs0jQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 2/4] net: dsa: support of_get_mac_address new
 ERR_PTR error
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCA3IE1heSAyMDE5IGF0IDAwOjI2LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IFRoZXJlIHdhcyBOVk1FTSBzdXBwb3J0IGFkZGVkIHRvIG9mX2dldF9tYWNf
YWRkcmVzcywgc28gaXQgY291bGQgbm93Cj4gcmV0dXJuIEVSUl9QVFIgZW5jb2RlZCBlcnJvciB2
YWx1ZXMsIHNvIHdlIG5lZWQgdG8gYWRqdXN0IGFsbCBjdXJyZW50Cj4gdXNlcnMgb2Ygb2ZfZ2V0
X21hY19hZGRyZXNzIHRvIHRoaXMgbmV3IGZhY3QuCj4KPiBXaGlsZSBhdCBpdCwgcmVtb3ZlIHN1
cGVyZmx1b3VzIGlzX3ZhbGlkX2V0aGVyX2FkZHIgYXMgdGhlIE1BQyBhZGRyZXNzCj4gcmV0dXJu
ZWQgZnJvbSBvZl9nZXRfbWFjX2FkZHJlc3MgaXMgYWx3YXlzIHZhbGlkIGFuZCBjaGVja2VkIGJ5
Cj4gaXNfdmFsaWRfZXRoZXJfYWRkciBhbnl3YXkuCj4KPiBGaXhlczogZDAxZjQ0OWMwMDhhICgi
b2ZfbmV0OiBhZGQgTlZNRU0gc3VwcG9ydCB0byBvZl9nZXRfbWFjX2FkZHJlc3MiKQo+IFNpZ25l
ZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gIG5ldC9kc2Ev
c2xhdmUuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbmV0L2RzYS9zbGF2ZS5jIGIvbmV0L2RzYS9zbGF2ZS5j
Cj4gaW5kZXggMzE2YmNlOS4uZmU3YjZhNiAxMDA2NDQKPiAtLS0gYS9uZXQvZHNhL3NsYXZlLmMK
PiArKysgYi9uZXQvZHNhL3NsYXZlLmMKPiBAQCAtMTQxOCw3ICsxNDE4LDcgQEAgaW50IGRzYV9z
bGF2ZV9jcmVhdGUoc3RydWN0IGRzYV9wb3J0ICpwb3J0KQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgTkVUSUZfRl9IV19WTEFOX0NUQUdfRklMVEVSOwo+ICAgICAgICAgc2xhdmVf
ZGV2LT5od19mZWF0dXJlcyB8PSBORVRJRl9GX0hXX1RDOwo+ICAgICAgICAgc2xhdmVfZGV2LT5l
dGh0b29sX29wcyA9ICZkc2Ffc2xhdmVfZXRodG9vbF9vcHM7Cj4gLSAgICAgICBpZiAocG9ydC0+
bWFjICYmIGlzX3ZhbGlkX2V0aGVyX2FkZHIocG9ydC0+bWFjKSkKPiArICAgICAgIGlmICghSVNf
RVJSX09SX05VTEwocG9ydC0+bWFjKSkKPiAgICAgICAgICAgICAgICAgZXRoZXJfYWRkcl9jb3B5
KHNsYXZlX2Rldi0+ZGV2X2FkZHIsIHBvcnQtPm1hYyk7Cj4gICAgICAgICBlbHNlCj4gICAgICAg
ICAgICAgICAgIGV0aF9od19hZGRyX2luaGVyaXQoc2xhdmVfZGV2LCBtYXN0ZXIpOwo+IC0tCj4g
MS45LjEKPgoKVGVzdGVkLWJ5OiBWbGFkaW1pciBPbHRlYW4gPG9sdGVhbnZAZ21haWwuY29tPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
