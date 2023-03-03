Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAA56A8F95
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Mar 2023 04:02:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E010612D1;
	Fri,  3 Mar 2023 03:01:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E010612D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsBuRts9fj8V; Fri,  3 Mar 2023 03:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 365F160B45;
	Fri,  3 Mar 2023 03:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 365F160B45
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88C501BF35B
 for <devel@linuxdriverproject.org>; Fri,  3 Mar 2023 03:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 640BD82124
 for <devel@linuxdriverproject.org>; Fri,  3 Mar 2023 03:01:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 640BD82124
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tk8YopatTYtp for <devel@linuxdriverproject.org>;
 Fri,  3 Mar 2023 03:01:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC9BF82123
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC9BF82123
 for <devel@driverdev.osuosl.org>; Fri,  3 Mar 2023 03:01:53 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id bo22so1155526pjb.4
 for <devel@driverdev.osuosl.org>; Thu, 02 Mar 2023 19:01:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677812513;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UpY+OCgUYrfgNvUXfOo5cLcn7ZRQiNnILz5UmRrcEYs=;
 b=zGJKSyQ3uN3OOBTmhBdhOSsqNo6QrHH9Lry0fGlaFhoPP4BXJ07j6a64+lO5zOHn3R
 2WoNnSnFoCAHS7olevzlIod/AeiYbgKokDEDtIwf2sMDUGEb+AjJRbx4dt3Pm+kUcr9w
 oD2flOZj4FZkaHZ2p5W3mo4ibK8pUsy+TTOCBJVNBfkrVO+J4H8yzSqE2vMV428kCZuf
 LjGsPppO/0RPPdj0shpT4nmyeN1CIK4qqqTIfU1+n9Ub5lKjdh1BkZLj81pNR/I8O50O
 RqZaFKQ29Qo+AgF6/KOYiL/jozgChRRYbnohZukvx5JeTYhOflCcFCEl4Cl2w36N36I3
 XLqA==
X-Gm-Message-State: AO0yUKVogd/KEXB1uepps3bmSo95OIXZns2mdH1jsCNqgv6LilO1/tEl
 bA5ysvqDR6Bk0+On7EHT3akXrWY1/RIdymV24zA=
X-Google-Smtp-Source: AK7set9xXbg/pTTN0q2I7BklEPJIIXrWYJLqGM/QbWnQE8ITfwbyDVXpXuklut0s1qHuLBl4Kwaii0yzQeyuWWLZy3Q=
X-Received: by 2002:a17:90a:f0c9:b0:237:4a5d:5a57 with SMTP id
 fa9-20020a17090af0c900b002374a5d5a57mr36308pjb.1.1677812513093; Thu, 02 Mar
 2023 19:01:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:e90d:b0:43f:770d:f35 with HTTP; Thu, 2 Mar 2023
 19:01:52 -0800 (PST)
From: INTERNATIONAL MONITORING NETWORK SYSTEM
 <internationalmonitoringn@gmail.com>
Date: Thu, 2 Mar 2023 22:01:52 -0500
X-Google-Sender-Auth: 2CmhHoMFpthZyOkIm2dzjEGfHR4
Message-ID: <CALhVJqq8ZzPqgK3SxWAuPJmfs3_e1L4NmtSA8dsC6pAYic=aVQ@mail.gmail.com>
Subject: Congratulations on your lottery winning prize
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677812513;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UpY+OCgUYrfgNvUXfOo5cLcn7ZRQiNnILz5UmRrcEYs=;
 b=dLrg++cv3XyR6izUZJox+oOFaykXcb5CkyRqTqihCwdL9RfrYgteQxeYUMmP7+2JaN
 1o/Li/0OgaRKL308jPJOKQ66sEjn8bAYLx9E2VYrZnQF5UZ8kKgr8Q2i36eQvFocJe9f
 7CSEfDl2cOrtpg+pwipfKODBPF2Jr29yzxLhA36jTv51bf6lcdl9gPawoWxN2QIDO+jm
 aZqxtiaisPqGW3Hp9VVMUBl51ikxQ+bwEhUxJxvL6vMjKhmN+l+20tTzkrB1e9sPxiEb
 L4UnFQJMdIjzwLCIkyjdAHAWgmpBzKAM3FQ6wh+DpfNEuDnjx86NMCXqeGeIyeUSQ9+W
 qjDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dLrg++cv
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

QVRURU5USU9OOgoKClRoaXMgZS1tYWlsIGhhcyBiZWVuIGlzc3VlZCB0byB5b3UgaW4gb3JkZXIg
dG8gT2ZmaWNpYWxseSBpbmZvcm0geW91CnRoYXQgd2UgaGF2ZSBjb21wbGV0ZWQgYW4gaW52ZXN0
aWdhdGlvbiBvbiBhbiBJbnRlcm5hdGlvbmFsIFBheW1lbnQgaW4Kd2hpY2ggd2FzIGlzc3VlZCB0
byB5b3UgYnkgYW4gSW50ZXJuYXRpb25hbCBMb3R0ZXJ5CkNvbXBhbnkoTG90dG9sYW5kKS4gV2l0
aCB0aGUgaGVscCBvZiBvdXIgbmV3bHkgZGV2ZWxvcGVkIHRlY2hub2xvZ3kKKEludGVybmF0aW9u
YWwgTW9uaXRvcmluZyBOZXR3b3JrIFN5c3RlbSkgd2UgZGlzY292ZXJlZCB0aGF0IHlvdXIKZS1t
YWlsIGFkZHJlc3Mgd2FzIGF1dG9tYXRpY2FsbHkgc2VsZWN0ZWQgYnkgYW4gT25saW5lIEJhbGxv
dGluZwpTeXN0ZW0sIHRoaXMgaGFzIGxlZ2FsbHkgd29uIHlvdSB0aGUgc3VtIG9mIOKCrDEuNG1p
bGxpb24gRXVyb3MgZnJvbSBhCkxvdHRlcnkgQ29tcGFueShMb3R0b2xhbmQpIG91dHNpZGUgdGhl
IFVuaXRlZCBTdGF0ZXMgb2YgQW1lcmljYS4KRHVyaW5nIG91ciBpbnZlc3RpZ2F0aW9uIHdlIGRp
c2NvdmVyZWQgdGhhdCB5b3VyIGUtbWFpbCB3b24gdGhlIG1vbmV5CmZyb20gYW4gT25saW5lIEJh
bGxvdGluZyBTeXN0ZW0gYW5kIHdlIGhhdmUgYXV0aG9yaXplZCB0aGlzIHdpbm5pbmcgdG8KYmUg
cGFpZCAgdG8geW91IHZpYSBJTlRFUk5BVElPTkFMIENFUlRJRklFRCBCQU5LIERSQUZULgoKCk5v
cm1hbGx5LCBpdCB3aWxsIHRha2UgdXAgdG8gNSBidXNpbmVzcyBkYXlzIGZvciBhbiBJTlRFUk5B
VElPTkFMCkNFUlRJRklFRCBCQU5LIERSQUZUIGJ5IHlvdXIgbG9jYWwgYmFuay4gV2UgaGF2ZSBz
dWNjZXNzZnVsbHkgbm90aWZpZWQKdGhpcyBjb21wYW55IG9uIHlvdXIgYmVoYWxmIHRoYXQgZnVu
ZHMgYXJlIHRvIGJlIGRyYXduIGZyb20gYQpyZWdpc3RlcmVkIGJhbmsgd2l0aGluIHRoZSB3b3Js
ZCB3aW5kZWQsIHNvIGFzIHRvIGVuYWJsZSB5b3UgY2FzaCB0aGUKY2hlcXVlIGluc3RhbnRseSB3
aXRob3V0IGFueSBkZWxheSwgaGVuY2Vmb3J0aCB0aGUgc3RhdGVkIGFtb3VudCBvZgrigqwxLjRt
aWxsaW9uIEV1cm9zIGhhcyBiZWVuIGRlcG9zaXRlZCB3aXRoIElNRi4KCgpXZSBoYXZlIGNvbXBs
ZXRlZCB0aGlzIGludmVzdGlnYXRpb24gYW5kIHlvdSBhcmUgaGVyZWJ5IGFwcHJvdmVkIHRvCnJl
Y2VpdmUgdGhlIHdpbm5pbmcgcHJpemUgYXMgd2UgaGF2ZSB2ZXJpZmllZCB0aGUgZW50aXJlIHRy
YW5zYWN0aW9uCnRvIGJlIFNhZmUgYW5kIDEwMCUgcmlzayBmcmVlLCBkdWUgdG8gdGhlIGZhY3Qg
dGhhdCB0aGUgZnVuZHMgaGF2ZQpiZWVuIGRlcG9zaXRlZCB3aXRoIElNRiB5b3Ugd2lsbCBiZSBy
ZXF1aXJlZCB0byBjb250YWN0ICBkaXJlY3RseSB0bwp0aGUgTG90dGVyeSBBZ2VudCBpbi1jaGFy
Z2Ugb2YgdGhpcyB0cmFuc2FjdGlvbiB3aG9tIGlzIGxvY2F0ZWQgaW4KQnVya2luYSBGYXNvICBJ
biBvcmRlciB0byBwcm9jZWVkIHdpdGggdGhpcyB0cmFuc2FjdGlvbi4gIEtpbmRseSBsb29rCmJl
bG93IHRvIGZpbmQgYXBwcm9wcmlhdGUgY29udGFjdCBpbmZvcm1hdGlvbjoKCgpDT05UQUNUIEFH
RU5UIE5BTUU6IE1yLiBCcnlhbiBCb3VjaGV0CkNPTlRBQ1QgRU1BSUwgQUREUkVTUyAoYnJ5YW5f
Ym91Y2hldEB5YWhvby5jb20pCllvdSB3aWxsIGJlIHJlcXVpcmVkIHRvIGUtbWFpbCBoaW0gd2l0
aCB0aGUgZm9sbG93aW5nIGluZm9ybWF0aW9uOgpGVUxMIE5BTUU6CkFERFJFU1M6CkNJVFk6ClNU
QVRFOgpaSVAgQ09ERQpDT1VOVFJZOgpESVJFQ1QgQ09OVEFDVCBOVU1CRVI6Ck9DQ1VQQVRJT046
CkEgQ09QWSBPRiBZT1VSIFBBU1NQT1JUIE9SIElEIENBUkQ6CgoKaW4gb3JkZXIgdG8gaW1tZWRp
YXRlbHkgc2hpcCB5b3VyIHByaXplIG9mIOKCrDEuNG1pbGxpb24gRXVyb3MgdmlhCklOVEVSTkFU
SU9OQUwgQ0VSVElGSUVEIEJBTksgRFJBRlQgZnJvbSBJTUYsIGFsc28gaW5jbHVkZSB0aGUKZm9s
bG93aW5nIHRyYW5zYWN0aW9uIGNvZGUgaW4gb3JkZXIgZm9yIGhpbSB0byBpbW1lZGlhdGVseSBp
ZGVudGlmeQp0aGlzIHRyYW5zYWN0aW9uIDogRUEyOTQ4LTkxMC4gVGhpcyBsZXR0ZXIgd2lsbCBz
ZXJ2ZSBhcyBwcm9vZiB0aGF0CnRoZSBGZWRlcmFsIEJ1cmVhdSBPZiBJbnZlc3RpZ2F0aW9uIGhh
cyBhdXRob3JpemVkIHlvdSBmb3IgdGhpcwpwYXltZW50LgoKQ29uZ3JhdHVsYXRpb25zIHRvIGFs
bCBsdWNreSB3aW5uZXJzCgpZb3VycyBGYWl0aGZ1bApEci5LaW0gWW9vbgpTZWNyZXRhcnkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
