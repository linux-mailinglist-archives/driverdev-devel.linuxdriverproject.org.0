Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9366D9061
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Apr 2023 09:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55CE582022;
	Thu,  6 Apr 2023 07:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55CE582022
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Azt-kryfVAtc; Thu,  6 Apr 2023 07:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 234AA81F7E;
	Thu,  6 Apr 2023 07:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 234AA81F7E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39AC51BF349
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 07:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1342782022
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 07:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1342782022
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJK_bLyNN7Hy for <devel@linuxdriverproject.org>;
 Thu,  6 Apr 2023 07:23:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECCCF81F7E
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECCCF81F7E
 for <devel@driverdev.osuosl.org>; Thu,  6 Apr 2023 07:23:00 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id z19so36760444plo.2
 for <devel@driverdev.osuosl.org>; Thu, 06 Apr 2023 00:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680765780;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OXaj7vUVokUhX+Ht6b7+2XNv+hmxvUp4gAmZKJ8qDE0=;
 b=2SsB1JzSS0wuWkKnCzMaVrUfQ/GRuKt6bzNGV/Cen3O7dof9vKj2pswF0q1Riy/FDu
 ATJP0IrHL41RyRWEXddPddI8VprvgwpE/Czf70JRQfRcBeM8RwEcLu+SeAPacFurmegu
 yKgSRIX7wIWZ2asTuJ0XvLmECxIFFcZihAC8TNaFxLSshcwUXXZtBppncKFsWjfl3jYD
 PsjzDZ1GcGzh/cLgkDu9w/kBTVBRvSE3qRnsfU9BEAXqBjNSK7DVscW7rJyq2YQVZXwY
 YDuqg0oeiGQjSAm0arus6+wR2X9xaHrrfW9mmWRsiEh/AeKutvxxAPGEk8Un5x/Q7/o2
 E7IQ==
X-Gm-Message-State: AAQBX9dIi3r+hZ1DcnMHnVtRhJ+ChpumzbhjLhUon/DaxuhLCEqQe6TL
 veVV3Aaevwa6gu9ohAt87NV7X8N90xWDLhd2dJo=
X-Google-Smtp-Source: AKy350bWQsNFgFzP/OhAf6LXYIDvcckicVy9eIfWQA3gAikMQwRCUQw1d0RF9Em0FqsYvglweeEFrcIKjgi1/4nH8u8=
X-Received: by 2002:a17:903:1c7:b0:1a2:185a:cd6 with SMTP id
 e7-20020a17090301c700b001a2185a0cd6mr3876387plh.4.1680765780154; Thu, 06 Apr
 2023 00:23:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:670c:b0:61:9db2:df69 with HTTP; Thu, 6 Apr 2023
 00:22:59 -0700 (PDT)
From: "Dr. Abdoul Salam Sawadogo" <mr.contact2020@gmail.com>
Date: Wed, 5 Apr 2023 23:22:59 -0800
Message-ID: <CANcNQx_HM60+U+XChbJofDv_iNWyAxmoamnVYVMKUsUUL9WGMw@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680765780;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OXaj7vUVokUhX+Ht6b7+2XNv+hmxvUp4gAmZKJ8qDE0=;
 b=AlMJoe+jgyPbPimeJhTrgUAhiHQln907IbRB6p662Otgkwg7EUyN9CdeUX0IZpVXoX
 y6ik/jp06VDjM4PKntHEpttMLJqb5SMyqJN5Dv7KBC0Oh26EjkCJkfxgpJFiWXaWnWOu
 LaIV/Z9gje+tTXSiSQILPhGvx9HJYjGFG4QRxkKBwg6giMvjX0OwuHxqdGU2ko0NvWk+
 vzl/7VqwgxbYVVyrr/L5tHlVCyoM3I2Q+P+LzPeGCocCRzNJO1P7XzyAguFQ6+foNiG0
 93r0vshLlykMAsEzH8stY6F5e4IVC8hT/t/3bfvIetfvawrTt5h0eAApyYShEvKIJDRy
 h89w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AlMJoe+j
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
Reply-To: a.salamsawadogo@post.cz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQKSSB3aXNoIHRvIGFwb2xvZ2l6ZSBmb3IgYmFyZ2luZyB0aGlzIG1lc3NhZ2Ug
aW50byB5b3VyIG1haWwgYm94CndpdGhvdXQgYW55IGZvcm1hbCBpbnRyb2R1Y3Rpb24gZHVlIHRv
IHRoZSB1cmdlbmN5IGFuZCBJIGtub3cgdGhhdAp0aGlzIG1lc3NhZ2Ugd2lsbCBjb21lIHRvIHlv
dSBhcyBhIHN1cnByaXNlLiBJIGFtIERyLiBBYmRvdWwgU2FsYW0KU2F3YWRvZ28gRGlyZWN0b3Ig
TWFuYWdlbWVudCBDb21taXR0ZWUsIEduaWtwacOocmUgUGxhbmV0IEdPTEQgQnVya2luYQpGYXNv
LgoKUGxlYXNlIHJlYWQgbW9yZSBhYm91dCBtZTogIHd3dy5wbGFuZXRnb2xkLm9yZy9idXJraW5h
ZmFzbwoKTm93IG15IGNvdW50cnkgaXMgdW5kZXIgTWlsaXRhcnkgUmVnaW1lLCB0aGV5IGFyZSBz
ZXJpb3VzbHkgdXNpbmcKdGhlaXIgcG93ZXJzIHRvIGh1bWlsaWF0ZSB1cyBpbiBHb2xkIE1pbmlu
ZyBzZWN0b3JzOyBmb3VyIG1vbnRocyBhZ28sCnRoZXkgd2VyZSBpbnRlcnJvZ2F0aW5nIHVzIGlu
IE1pbmluZyBzZWN0b3JzIGFuZCB0aGVuIHRoZXkgc3RhcnRlZApjZWFzaW5nIG91ciBwcm9wZXJ0
aWVzLCBhbmQgY3VycmVudGx5IHRoZXkgYXJyZXN0ZWQgdXMgYW5kIG91cgpmYW1pbGllcywgd2Ug
YXJlIGN1cnJlbnRseSB1bmRlciBob3VzZSBhcnJlc3QsIHdpdGggb3VyIHdpdmVzIGFuZApjaGls
ZHJlbi4gUGxlYXNlLiBJIGFuZCBteSBjb2xsZWFndWVzIGhhdmUgYSBodWdlIHN1bSBvZiBtb25l
eQooVVMkMjcuNDAwLjAwMC4wMCBEb2xsYXJzKSB3aXRoIGEgYmFuayBpbiBFc2Nyb3cgYWNjb3Vu
dCBiZWxvbmdpbmcgdG8Kbm8gb25lIGluIHRoZSBiYW5rLgoKVGhlIE1pbGl0YXJ5IGdvdmVybm1l
bnQgaW4gcG93ZXIgaXMgYW54aW91cyB0byBrbm93IHRoZSBwb3NpdGlvbiBvZgp0aGlzIG1vbmV5
LCBwbGVhc2UgSSB1cmdlbnRseSBuZWVkIHlvdXIgYXNzaXN0YW5jZSB0byBoZWxwIHVzIG1vdmUK
dGhpcyBtb25leSB0byB5b3VyIGNvdW50cnkgaW1tZWRpYXRlbHkgYWxzbyBsZXQgbWUga25vdyB5
b3VyIHNoYXJpbmcKcmF0aW8gYXMgc29vbiB5b3UgcmVjZWl2ZSB0aGUgZnVuZCBpbiB5b3VyIGFj
Y291bnQgb3IgaW4geW91cgpwb3NzZXNzaW9uLiAgVXBvbiB5b3VyIHJlcGx5IEkgd2lsbCBzZW5k
IHlvdSB0aGUgYmFuayBjb250YWN0LCBhbmQgaG93CnlvdSB3aWxsIGNvbnRhY3QgdGhlIGJhbmsg
YXMgdGhlIG93bmVyIG9mIHRoZSBtb25leSBmb3IgdGhlIHRyYW5zZmVyCm9mIHRoZSBtb25leSBp
bnRvIHlvdXIgYmFuayBhY2NvdW50IG9yIGluc3RydWN0IHRoZSBiYW5rIGZvciBpbW1lZGlhdGUK
b25saW5lIHRyYW5zZmVyIG9yIHRvIGxvYWQgdGhlIG1vbmV5IGludG8gQVRNIFZJU0EgQ0FSRCBh
bmQgc2VuZCB0bwp5b3UgaW4geW91ciBjb3VudHJ5IG9yIHlvdSBjYW4gdHJhdmVsIGRvd24gdG8g
cGljayBpdCB1cC4KClJlZ2FyZHMuCkRyLiBBYmRvdWwgU2FsYW0gU2F3YWRvZ28uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
