Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E99635072B7
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Apr 2022 18:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4936360BC1;
	Tue, 19 Apr 2022 16:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BAuAFeVh6Agr; Tue, 19 Apr 2022 16:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1367760B9A;
	Tue, 19 Apr 2022 16:11:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA821BF873
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 16:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A29D41836
 for <devel@linuxdriverproject.org>; Tue, 19 Apr 2022 16:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eKUk1w9k-rZS for <devel@linuxdriverproject.org>;
 Tue, 19 Apr 2022 16:11:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0977E415E2
 for <devel@driverdev.osuosl.org>; Tue, 19 Apr 2022 16:11:53 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id f5so10826026ilj.13
 for <devel@driverdev.osuosl.org>; Tue, 19 Apr 2022 09:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gTuFLfwaLxBEaCG6gNA4gQ0KgGkqe8VvzK5ZfrIaH70=;
 b=exyNB5a0SN1RyNLBciabpxuuF/0txmzMZOXlq47LrfYC59/rOLlRNP0M4gQjlanRpK
 RzHdjnkx+Wd1CEqNCklWyzqsQzxQlU76HS8Lk8GxfWFcBS5/BJItW5o3s/RB4Um8UqKg
 2D1uwwMbbSr9leV5YWamf4E5w0anO1I+eUDIJGHKOB2HaOgxKZCWzL+qxlEYWjAGpvdx
 hpThI/3QXcE1nrhP63778/jII9QzafZJFInfY4LooybZa7RW55qrM6c0mUxLGCsHAkAP
 Aq3kwAtC383HGFGdn3fI4+flEFW/f7HlQOD+5fL3tjKtv9ZYL8cfzoXzp0L1/qQpj057
 M1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=gTuFLfwaLxBEaCG6gNA4gQ0KgGkqe8VvzK5ZfrIaH70=;
 b=vFhmOIPUB7W6m6sUZaFE3OhDKwHhrmmb24IUPqNX+FRaR9KbfKWPhMQrIstX5WhKBh
 3Sy1IWmL++yDTXUXIsbQ3t7BabyJHthXhmZR2ZFm4GRCD5120CHv4wBdbsqRNe42d2Hp
 MY/EIy3N2fqcM8jTnPwe/x5aRqFfYYoLcajwlf87WzgcZFpv8ZZ9kpaO7vEsijmZdjCs
 vkWFJx/WT4xjBFunfdnJpVQ1x2Ne0x33Fsm3k2/xmd0QS7YWUlcj+3hUY486tKfVm+Zc
 dpiEPWH5iJicMq9BmKBoEO5j4/FhRJucb0KKeObXEmkRy/NO9az6RrAK8TfHKYky/0qq
 H/zg==
X-Gm-Message-State: AOAM531UNsc5RiWpn3j/MigcB8ihhob67ensDAcxRzbMfB9+RRwGd3xN
 G0iA/hDO4QZEYtuBW+ZiuhK0ZL6/Gr9vlmW7brI=
X-Google-Smtp-Source: ABdhPJyCkd15Ss0iZi6AWim7NMI6Lbq7takge89hTedB5Vx6/s7+9yEVNeaJA3BXE7rcb5rKSJBxi3IYh34jZqT8Ta4=
X-Received: by 2002:a05:6e02:c28:b0:2ca:8380:8390 with SMTP id
 q8-20020a056e020c2800b002ca83808390mr6872950ilg.174.1650384713053; Tue, 19
 Apr 2022 09:11:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6638:4123:0:0:0:0 with HTTP; Tue, 19 Apr 2022 09:11:52
 -0700 (PDT)
From: "Mrs. Rose Edem Etok" <mrsroseetokedem@gmail.com>
Date: Tue, 19 Apr 2022 16:11:52 +0000
X-Google-Sender-Auth: 1TgHE2zPyBY0-w-CN0sg-Ykkmaw
Message-ID: <CABzYKDz2e449wMPi8t=fu0YUWFkuQrh6NQi9714_vfMSWEq-+g@mail.gmail.com>
Subject: Greetings My Dear,
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgTmFtZSBpcyBNcnMuIFJvc2UgRWRlbSBFdG9rLCBJIGFtIGEgQnJpdGlzaCBjaXRpemVuIGFu
ZCBJIGFtCmNvbnRhY3RpbmcgeW91IGZyb20gYSBob3NwaXRhbCBpbiBCdXJraW5hIEZhc28gKEFN
UE8gSW50ZXJuYXRpb25hbApwcml2YXRlIGhvc3BpdGFsKSBhbSBhIHdpZG93IHN1ZmZlcmluZyBm
cm9tIEJyZWFzdCBDYW5jZXIgYW5kIFN0cm9rZSwKd2hpY2ggZGVuaWVkIG1lIGEgY2hpbGQgYXMg
YSByZXN1bHQsIGkgbWF5IG5vdCBsYXN0IHRpbGwgdGhlIG5leHQgdHdvCm1vbnRocyBhY2NvcmRp
bmcgdG8gbXkgZG9jdG9yIHJlcG9ydC4gSSdtIG1hcnJpZWQgdG8gbGF0ZSBNci4gRWRlbQpFdG9r
LCBhIHBvbGl0aWNpYW4gd2hvIHdvcmtlZCB3aXRoIFR1bmlzaWEgQW1iYXNzYWRvciBpbiBCdXJr
aW5hIEZhc28KYmVmb3JlIGhlIGRpZWQgYW5kIHdlIHdlcmUgbWFycmllZCBmb3IgbWFueSB5ZWFy
cyB3aXRob3V0IGFueSBjaGlsZApiZWZvcmUgaGlzIGRlYXRoIGFuZCBhZnRlciBoaXMgZGVhdGgg
aSBjYW4gbm90IGJlIGFibGUgdG8gZ2V0IGhvbGQgb2YKbXlzZWxmIGJlY2F1c2Ugb2YgdGhlIGxv
dmUgd2Ugc2hhcmUgdG9nZXRoZXIuIEknbSA2MiB5ZWFycyBvbGQgd29tYW4uCkkgaGF2ZSBzb21l
IGZ1bmRzIGkgaW5oZXJpdGVkIGZyb20gbXkgbGF0ZSBodXNiYW5kIHRoZSBzdW0gb2YK4oKsMTgs
NTAwLDAwMCwwMCAoIEVpZ2h0ZWVuIE1pbGxpb24gRml2ZSBIdW5kcmVkIFRob3VzYW5kIEV1cm8g
KSB3aGljaCBpCm5lZWRlZCBhIHZlcnkgaG9uZXN0IGFuZCBHb2QgZmVhcmluZyBwZXJzb24gd2hv
IHdpbGwgY2xhaW0gdGhlIGZ1bmRzCmZyb20gdGhlIGJhbmsgYW5kIHVzZSB0aGUgZnVuZHMgZm9y
IHdvcmsgb2YgR29kIEFmZmFpcnMgbGlrZTsgZG9uYXRpb24KaW4gdGhlIGhvdXNlIG9mIEdvZCwg
cHJvcGFnYXRpbmcgdGhlIGdvb2QgbmV3cyBvZiBHb2QgYW5kIHRvIGVuZGVhdm9yCkdvZCB3b3Jz
aGlwaW5nIHBsYWNlIGFuZCBoZWxwIGxlc3MtcHJpdmlsZWdlZC4gSSBmb3VuZCB5b3VyIHByb2Zp
bGUKYW5kIGkgZGVjaWRlZCB0byBjb250YWN0IHlvdSBmb3IgdGhlIGRvbmF0aW9uIHdvcmsgb2Yg
R29kLgoKUGxlYXNlIGlmIHlvdSB3b3VsZCBiZSBhYmxlIHRvIHVzZSB0aGUgZnVuZHMgZm9yIHRo
ZSB3b3JrIG9mIEdvZCBhcyBpCnN0YXRlZCAsY29udGFjdCBtZSBiYWNrIHNvIGkgd2lsbCBsZWFk
IHlvdSB0byAoVEVCKSBUdXJrZXkgaW4gRXVyb3BlCndoZXJlIHRoaXMgZnVuZHMgd2FzIGRlcG9z
aXRlZCBieSBteSBsYXRlIGh1c2JhbmQgTXIuIEVkZW0gRXRvaywgZm9yCnlvdSB0byByZXRyaWV2
ZSB0aGUgZnVuZHMgaW4gbXkgbmFtZSBhcyB0aGUgbmV4dCBvZiBraW4uIE15IGxhdGUKaHVzYmFu
ZCBNci4gRWRlbSBFdG9rIGRpZWQgYWZ0ZXIgYSBicmllZiBpbGxuZXNzIHRoYXQgbGFzdGVkIGZv
ciBvbmx5CmZpdmUgZGF5cywgSSB3aWxsIHN0b3AgaGVyZSB1bnRpbCBpIGhlYXIgZnJvbSB5b3Ug
LAoKcGxlYXNlIGNvbnRhY3QgbWUgb24gbXkgcHJpdmF0ZSBlbWFpbCAobXJzcm9zZWV0b2tAZ21h
aWwuY29tKQoKQWx3YXlzIHByYXkgZm9yIG15IGhlYWx0aC4KTWF5IEdvZCBibGVzcyB5b3UgSW4g
SmVzdXMgbmFtZSBBbWVuISEhCk1ycy4gUm9zZSBFZGVtIEV0b2sKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
