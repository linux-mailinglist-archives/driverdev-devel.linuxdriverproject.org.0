Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D7449F079
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jan 2022 02:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AA7D84C0B;
	Fri, 28 Jan 2022 01:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qs1NlIY9auiz; Fri, 28 Jan 2022 01:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD60484BC0;
	Fri, 28 Jan 2022 01:21:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41FAD1C1148
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 01:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EFF541781
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 01:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veygdNwJPKfr
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 01:20:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11C7A41608
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 01:20:56 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id i62so13956120ybg.5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 27 Jan 2022 17:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=+oNxYn95HIkl5UrpQFHz7Di42C06fte+YL8gsa9FyyA=;
 b=n+7w41pr57EM1/8/UFQF5C33DM9wt/eXcOF9c68yXNdaXEQK2OM//njCEFDKNiLQJC
 E0lTV4PBpxWFdWhOnL8fpx5nuyuUk3fmAy4xPNLdOHZaa97gx+IdUERtRC8VazOS26zH
 355rIxIlYKEqbcZ56WtyF6YokrL/3KTmh2b3H48pO5n1kAELL494aX9PwzwAhErgkDlE
 cSk24CqYK2SN51EXB0ozzk+AQSW26iAs8kiZPSDpliNSVOIe4jG9HBKCgpAADrSIDbhD
 C+aLrgh2KLUl1Xw0uGTe6U2DKexjpKlekxvoBpRjOF+85I5ix8+JYrs3MhuM2J3KJsPh
 +SSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=+oNxYn95HIkl5UrpQFHz7Di42C06fte+YL8gsa9FyyA=;
 b=a5PR43mvsKkm0ZzN6SQNeGdTmOW+duUfgSz8p7S/Sz/mJGxEph95qXPLqTpdMBv4Jt
 E1w5DDdX2z/0S5lk6PQopxcwjqvPUoVnvssdRED7FCqKIdLc+hpp1wx61D9jICQAFhCm
 eGZKs6Eax5tuXpfMn3uqVFgkBZP3YkOkUW8aBCkIYYU4mDa6MfprsL2xMunvYnaPSxTh
 UWD1sDS7hJZeMaAwvYQd7Mw6+uJ4uyfCoWMJpd6gEWvh8ZsDIW88MtaD/33UBqXNy9zG
 WCLBM73trKjKDBPhhVblIKMRS5CL33KLk46PrW9TqJdU+x3Psk2m54h90qdKZYoNAe+S
 Kxwg==
X-Gm-Message-State: AOAM5314EawZ/rena+bRZ53wMr2UAdCRJuC9LdEItpUAVmPp+0FB4vkI
 v36ZHjjYFEFR0Zt2/RWJVmdSFvTQGYC69ii/b+o=
X-Google-Smtp-Source: ABdhPJzDX5VzTYGrFeV3dnxKac8HXXWgAzRzDve3MGxiCt7oFvEJvjGS/xhWU2CNZbpMpxg9NG1bUkphiqYl28P+mDE=
X-Received: by 2002:a25:67c4:: with SMTP id b187mr7794095ybc.519.1643332855142; 
 Thu, 27 Jan 2022 17:20:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:3387:b0:201:f6e8:880e with HTTP; Thu, 27 Jan 2022
 17:20:54 -0800 (PST)
From: SULEIMAN ABU <larsnbarro11@gmail.com>
Date: Thu, 27 Jan 2022 17:20:54 -0800
Message-ID: <CAGrgLwuOsfLAzqpozHHNKRBerHi99un8-Y+Juh10zJpEKj__7Q@mail.gmail.com>
Subject: Urgent Reply
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
Reply-To: abuxx111@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLApXaXRoIGR1ZSByZXNwZWN0IHRvIHlvdXIgcGVyc29uYWxpdHkgYW5kIG11Y2gg
c2luY2VyaXR5IG9mIHRoaXMKcHVycG9zZSwgSSBtYWtlIHRoaXMgY29udGFjdCB3aXRoIHlvdSBi
ZWxpZXZpbmcgdGhhdCB5b3UgY2FuIGJlIG9mCmdyZWF0IGFzc2lzdGFuY2UgdG8gbWUuIE15IG5h
bWUgaXMgTXIuU3VsZW1hbiBBYnUsIGZyb20gQnVya2luYSBGYXNvLApJJ20gdGhlIENoYWlybWFu
IG9mIEZPUkVJR04gUEFZTUVOVFMgQ09OVFJBQ1QgQVdBUkQgQ09NTUlUVEVFIGFuZCBhbHNvCkRp
cmVjdG9yIG9mIEZvcmVpZ24gUmVtaXR0YW5jZSBEZXBhcnRtZW50IG9mIEFmcmljYW4gRGV2ZWxv
cG1lbnQgQmFuawooQURCKSBCdXJraW5hIEZhc28sIFBsZWFzZSBzZWUgdGhpcyBhcyBhIGNvbmZp
ZGVudGlhbCBtZXNzYWdlIGFuZCBkbwpub3QgcmV2ZWFsIGl0IHRvIGFub3RoZXIgcGVyc29uIGJl
Y2F1c2UgaXTigJlzIGEgdG9wIHNlY3JldC4KCkl0IGlzIHdpdGggdHJ1c3QgdGhhdCBJIHdpc2gg
dG8gY29udGFjdCB5b3Ugb24gdGhpcyBtYXR0ZXIgY29uY2VybmluZwp0aGUgdHJhbnNmZXIgb2Yg
VVMkMTcuNCBNaWxsaW9uIERvbGxhcnMuIFRoaXMgbW9uZXkgY2FtZSBvdXQgZnJvbQpDb250cmFj
dCB0aGF0IHdhcyBhd2FyZGVkIHRvIGEgZm9yZWlnbiBjb21wYW55IGZvciBNYWludGVuYW5jZSBv
ZiBPSUwKUkVGSU5FUlkgUExBTlQgaW4gQnVya2luYSBGYXNvIHllYXJzIGJhY2suIENvbnRyYWN0
Ck5vO1NPTkFCSFkvRVBSLzEwNC9QRUQvMjAwNCwgVGhlIGNvbnRyYWN0IHdhcyBvdmVyLWludm9p
Y2VkIGJ5IG1lIHRvCnRoZSB0dW5lIG9mIFVTJDE3LjQgbWlsbGlvbiBPbmx5LCBhbmQgdGhpcyBm
dW5kIGhhdmUgdHJhbnNmZXIgdG8gb3VyCkNvcnJlc3BvbmRpbmcgYmFuayBpbiBEdWJhaSBzbyB0
aGV5J2xsIHRyYW5zZmVyIHRoZSBmdW5kcyB0byB5b3VyIGJhbmsKYWNjb3VudCwgQW5kIGkgaGF2
ZSBhbGwgdGhlIGRvY3VtZW50cyB5b3Ugd2lsbCBwcmVzZW50IHRvIG91cgpjb3JyZXNwb25kaW5n
IGZvciB0aGUgdHJhbnNmZXIgdGhlIGZ1bmQgdG8geW91ciBiYW5rIGFjY291bnQgd2l0aG91dAph
bnkgZGVsYXkuCgpJIGhhdmUgdW5hbmltb3VzbHkgZGVjaWRlZCB0byB0cmFuc2ZlciB0aGUgRnVu
ZHMgdG8gYSByZWxpYWJsZSBmb3JlaWduCmJhbmsgYWNjb3VudCwgSSB3YW50IHRvIHByZXNlbnQg
eW91IHRvIHRoZSBiYW5rIHRvIHByb3ZpZGUgYSByZWxpYWJsZQpiYW5rIGFjY291bnQgd2hlcmUg
dGhpcyBtb25leSB3aWxsIGJlIHRyYW5zZmVycmVkIHRvIHlvdSwgYmVjYXVzZSB3ZQpDaXZpbCBT
ZXJ2YW50cyBhbmQgYXMgYSBiYW5rZXIgd2UgYXJlIG5vdCBhbGxvd2VkIHRvIG9wZXJhdGUgYW55
CmZvcmVpZ24gYmFuayBhY2NvdW50IHdoaWxlIGluIHNlcnZpY2VzLiBJIGhhdmUgd29ya2VkIG91
dCBhbGwKbW9kYWxpdGllcyBwdXQgaW4gcGxhY2UgZm9yIGxlZ2FsIGFuZCBzYWZlIHRyYW5zZmVy
IG9mIHRoZSBmdW5kcwpkaXJlY3RseSBpbnRvIHlvdXIgbm9taW5hdGVkIGJhbmsgYWNjb3VudC4g
QW5kIG5vdGUgdGhhdCBJIGhhdmUgbG9zdApzb21lIGZ1bmRzIGluIHRoZSBwYXN0IGluIHNpbWls
YXIgdHJhbnNmZXIgYnV0IGkgcmVwb3NlIHRydXN0IGluIHlvdQpiYXNlZCBvbiB5b3VyIHByb2Zp
bGUgYW5kIGkgbmVlZCBhIG11dHVhbCBhZ3JlZW1lbnQgZm9yIHNhZmUga2VlcGluZwpvZiB0aGUg
ZnVuZHMuCgpEdWUgdG8gbXkgcG9zaXRpb24gaW4gdGhlIGJhbmsgYW5kIG15IHJldGlyZW1lbnQg
YXBwcm9hY2hpbmcsIEkgY2Fubm90CmFmZm9yZCBhIHNsaXAgaW4gdGhpcyB0cmFuc2FjdGlvbi4g
Q29udGFjdCBtZSB3aXRoIHRoZXNlIGluZm9ybWF0aW9uCm1lbnRpb25lZCBoZXJldW5kZXI7Cgoo
MSkgWW91ciBjb21wbGV0ZSBuYW1lcy9jb21wYW55IG5hbWVzCigyKSBZb3VyIGFnZQooMylZb3Vy
IG9jY3VwYXRpb24KKDQpWW91ciBtYXJpdGFsIHN0YXR1cwooNSlZb3VyIGZ1bGwgcmVzaWRlbnRp
YWwgYWRkcmVzcyBhbmQgY291bnRyeS4KKDYpWW91ciBkaXJlY3QgcGhvbmUgYW5kIGZheCBudW1i
ZXJzLgooNylBIGNvcHkgb2YgeW91ciBkcml2aW5nIGxpY2Vuc2Ugb3IgcGFzc3BvcnQgc2Nhbm5l
ZCBhbmQgc2VudCB0byBtZSBieSBtYWlsLgoKSSBzaGFsbCB1c2UgdGhpcyBpbmZvcm1hdGlvbiB0
byBzZWN1cmUgYWxsIHRoZSBvcmlnaW5hbCBjb3BpZXMgb2YgdGhlCmNvbnRyYWN0IGRvY3VtZW50
cyBhbmQgd2lsbCBmdXJ0aGVyIG5lZ290aWF0ZSB3aXRoIHlvdSBvbiB5b3VyCmNvbXBlbnNhdGlv
bi9wZXJjZW50YWdlIHRoYXQgeW91IGRlc2VydmUgdG8gcGFydGljaXBhdGUgaW4gdGhpcwpUcmFu
c2FjdGlvbi4gUGxlYXNlLCBub3RlIHRoYXQgdGhpcyB0cmFuc2FjdGlvbiBuZWVkcyB1dG1vc3QK
Q29uZmlkZW50aWFsaXR5IHBlbmRpbmcgd2hlbiB0aGUgbW9uZXkgaXMgY3JlZGl0ZWQgaW50byB5
b3VyIGFjY291bnQuCkknbSBsb29raW5nIGZvcndhcmQgdG8geW91ciBmYXZvcmFibGUgcmVzcG9u
c2UgaW4gdGhpcyBtYXR0ZXIuCm9rYXkKClRoYW5rcyBpbiBhbnRpY2lwYXRpb24sCk1yLlN1bGVt
YW4gQWJ1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
