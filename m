Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C907B2B57B0
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 04:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51F94204BF;
	Tue, 17 Nov 2020 03:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pq0FERYbvB+3; Tue, 17 Nov 2020 03:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09B9B203E7;
	Tue, 17 Nov 2020 03:09:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 837251BF20F
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 03:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FF7C8409C
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 03:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HaHk7Eqes5tK for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 03:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74A0884BCF
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 03:09:00 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id q3so20890319edr.12
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 19:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=YPiCOsoKuWLIEun2auriBsTtcbRK4CfGlScsRhdNxDg=;
 b=g3tyCUc9yIRFYSsjZQdvauu1V8MsKW7/q3jSkiGU6a1TK9Ks9o6dfAeRMZv7dtJ6UV
 adubuoxzDCZtSoqK9LZKw9M90ojfKuaE193FKRkT+GROKurgb7MGkSxbuPxCVm0kPxfs
 nU8mRxS99xPppOVDcRgawCeRIaCZu+8riYXTEODvtr/YUtIa39TlyKuRwQ2/c77LO3VZ
 nLO33/+Y/pQVizbhg8eUjMsvLK9lqYR5DluzwCwBCuGmoHMRh6/FgGyiNS7tibgjw1T4
 YZ6juHcnWQ9ygxGMzgcs4iWu3/FEALBAPdHooqHKLEYvqcwfzCHPG2QPKvZz3BxkZMO2
 8g8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=YPiCOsoKuWLIEun2auriBsTtcbRK4CfGlScsRhdNxDg=;
 b=RkzJI8kdMXt0gS/6Z5/sYTEejeZMj+wXIp/DTEMxkLlBFEA7KtjL4Hz+3/nw4ry5bA
 hcLhCQ882K0beFAhwB93QA+YnbrFd62peLfkpkL1fJ2kxC4EDtJuajFPvOCQW4c1ZmUy
 SM8JPru0Gk5NWWbeLbjz1i92Ft+vSJBD2SZT/WBnfYp0uBniwSLkF6frO4J8QE0h78nU
 4BY5unon7NHIQItNlbo1Y+U11dbTCSTIESP0UbvN+AAjm4TXUhtNjuUiTT9oBiD+mAZx
 PiNLNRur3RGALfHHN7+i7EZFjY10MYOoJG8PYYoJm2hJp70neLSN8LmJNYWZtbwDr8kf
 /aXA==
X-Gm-Message-State: AOAM5300iZVaLtPRjHi+XEWKy/hWadQlREbsgJRVw28Mu/XRd3hnBfg3
 KLfNndn3nOYRZy53u50ofKma9Z1aAknkgji8O64=
X-Google-Smtp-Source: ABdhPJxRwwggEcWapL2vBVlHm9jyD2ymYgrFGqxWuux8eUX9NAMknpVBq/S1PoAsuw4WaubQilpu8zVt4EsN4gzH+eA=
X-Received: by 2002:a05:6402:2208:: with SMTP id
 cq8mr480404edb.182.1605582538739; 
 Mon, 16 Nov 2020 19:08:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:4495:0:0:0:0 with HTTP; Mon, 16 Nov 2020 19:08:58
 -0800 (PST)
From: Mr Suleman Bello <sulmbello6745@gmail.com>
Date: Tue, 17 Nov 2020 03:08:58 +0000
Message-ID: <CABSOehzRCgr4aZSYvugpKy5cV_8B_4c5x_fxZZ50eurPg8xL4A@mail.gmail.com>
Subject: CAN I TRUST YOU?
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
Reply-To: mrsfatimakargbo@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpQbGVhc2UgSSB3YW50IHlvdSB0byByZWFkIHRoaXMgbGV0dGVyIHZlcnkg
Y2FyZWZ1bGx5IGFuZCBJIG11c3QKYXBvbG9naXplIGZvciBiZXJnaW5nIHRoaXMgbWVzc2FnZSBp
bnRvIHlvdXIgbWFpbGJveCB3aXRob3V0IGFueQpmb3JtYWwgaW50cm9kdWN0aW9uIGR1ZSB0byB0
aGUgdXJnZW5jeSBhbmQgY29uZmlkZW50aWFsaXR5IG9mIHRoaXMKaXNzdWUgYW5kIEkga25vdyB0
aGF0IHRoaXMgbWVzc2FnZSB3aWxsIGNvbWUgdG8geW91IGFzIGEgc3VycHJpc2UuClBsZWFzZSwg
SSB1cmdlIHlvdSB0byBoYW5kbGUgdGhpcyBtZXNzYWdlIGFzIGEgdG9wIHNlY3JldCBhbmQgSSB3
aWxsCm5vdCBsaWtlIHlvdSB0byBqb2tlIHdpdGggaXQuCgpJIGFtIE1yLlN1bGVtYW4gQmVsbG8s
IGEgc3RhZmYgaW4gQmFuayBvZiBCdXJraW5hIGZhc28gKE91YWdhZG91Z291KQpBcyBhIGJyYW5j
aCBpbnRlcm5hbCBhdWRpdG9yIG9mIHRoZSBiYW5rLCBJIGRpc2NvdmVyZWQgYW4gZXhpc3RpbmcK
ZG9ybWFudCBhY2NvdW50IGZvciB5ZWFycyB3aXRob3V0IGFueSBiYW5raW5nIGFjdGl2aXR5IGdv
aW5nIG9uIGluIGl0OwpuZWl0aGVyIGRlcG9zaXRzIG5vciB3aXRoZHJhd2FscyBmcm9tIHRoaXMg
YWNjb3VudCBmb3IgdGhpcyBsb25nCnBlcmlvZC4gQW5kIGFjY29yZGluZyB0byB0aGUgcnVsZXMg
Z3VpZGluZyBvdXIgYmFuaywgYW55IHVuc2VydmljZWFibGUKYWNjb3VudCBmb3IgbW9yZSB0aGFu
ICg3KSBzZXZlbiB5ZWFycyB3aWxsIGJlIGRlbGlzdGVkLCBhbmQgdGhlIGZ1bmRzLApubyBtYXR0
ZXIgdGhlIGFtb3VudCwgd2lsbCBiZSB0cmFuc2ZlcnJlZCB0byB0aGUgbmF0aW9uYWwgdHJlYXN1
cnkgYXMKYW4gdW5jbGFpbWVkIGZ1bmQuCgpJIGhvcGUgeW91IGtub3cgdGhlIG1lYW5pbmcgb2Yg
dW5jbGFpbWVkIGZ1bmRzOyBhbiBhYmFuZG9uZWQgZnVuZCB5b3UKY2Fu4oCZdCBsb2NhdGUgdGhl
IG93bmVyLCBwcm9iYWJseSBiZWNhdXNlIHRoZSBvd25lciBpcyBkZWFkIGJ5CnNpY2tuZXNzLCBh
Y2NpZGVudCwgcGxhbmUgY3Jhc2gsIG5hdHVyYWwgZGlzYXN0ZXIgb3IgbXVyZGVyZWQgd2l0aG91
dApsZWF2aW5nIGluZm9ybWF0aW9uIGFib3V0IHRoZSBmdW5kcyB0byBhbnkgcmVsYXRpdmUgb3Ig
ZnJpZW5kLiAgT3IKZnVuZHMgbG9vdGVkIGFuZCBhYmFuZG9uZWQgYnkgcG9saXRpY2lhbnMgZm9y
IHRoZSBmZWFyIG9mICBiZWluZwpwcm9zZWN1dGVkIGJ5IHRoZWlyIGdvdmVybm1lbnQuIFRoYXQn
cyB3aHkgeW91IGhhdmUgbWFueSB1bmNsYWltZWQKZnVuZHMgbGl0dGVyZWQgaW4gZGlmZmVyZW50
IGJhbmtzIGV2ZXJ5d2hlcmUuIEFuZCBJdCBpcyBvbmx5IHN0YWZmCmxpa2UgaW4gbXkgcG9zaXRp
b24gYXMgYW4gaW50ZXJuYWwgYXVkaXRvciBvZiBhIGJhbmsgdGhhdCBvZnRlbiBjb21lCmFjcm9z
cyBzdWNoIGFjY291bnRzIGFuZCB0aGVpciBkZXRhaWxzLgoKSSBob3BlIHRoYXQgeW91IHdpbGwg
bm90IGV4cG9zZSBvciBiZXRyYXkgdGhpcyB0cnVzdCBhbmQgY29uZmlkZW5jZQp0aGF0IEkgYW0g
YWJvdXQgdG8gZXN0YWJsaXNoIHdpdGggeW91IGZvciB0aGUgbXV0dWFsIGJlbmVmaXQgb2YgeW91
CmFuZCBJLiAgUGxlYXNlLCBJIG5lZWQgIHVzIHRvIHdvcmsgdG9nZXRoZXIgaW4gb3JkZXIgdG8g
bW92ZSB0aGUgZnVuZHMKb3V0IGltbWVkaWF0ZWx5IHRvIHlvdXIgcG9zc2Vzc2lvbiBzbyB0aGF0
IHdlIGNhbiBzaGFyZSBpdC4gIEkgd2lsbAphc3Npc3QgeW91IHRvIGNvbWUgdXAgd2l0aCBhIGJl
bmVmaWNpYXJ5IGNsYWltIHRvIGVuYWJsZSB0aGUKdHJhbnNmZXJyaW5nIG9mIHRoZSBzYWlkIHN1
bSBvZiAkMTAuNSBtaWxsaW9uIFVuaXRlZCBTdGF0ZXMgRG9sbGFyCmludG8geW91ciBhY2NvdW50
IHdpdGhpbiA3IGJhbmtpbmcgZGF5cy4gT25jZSBpdCBpcyBkb25lLCBJIHdpbGwKcmVzaWduIGZy
b20gbXkgd29yayBhbmQgdXNlIG15IHNoYXJlIGZvciBiZXR0ZXIgYW5kIGx1Y3JhdGl2ZQpidXNp
bmVzc2VzLCBhbmQgcmVtYXJyeSBzaW5jZSBJIGFtIGRpdm9yY2VkLCBhbmQgdG8gY29udGludWUg
bXkgbGlmZQpoYXBwaWx5IGluIGFub3RoZXIgYmVhdXRpZnVsIGFuZCBjb3p5IGZvcmVpZ24gY291
bnRyeSBvZiBteSBjaG9pY2UsCndpdGggbXkgbmV3IGZhbWlseS4KCkFzIGFuIGluc2lkZXIgaW4g
dGhlIGJhbmsgdGhhdCB5b3UgY2FuIHRydXN0LCBJIGNhbiBsZWFrLW91dCAgb3IKc2VjcmV0bHkg
cmV2ZWFsIHRvIHlvdSBldmVyeSBpbmZvcm1hdGlvbiBhbmQgZG9jdW1lbnQgYWJvdXQgdGhlCmFj
Y291bnQgaW5jbHVkaW5nIHRoZSBhY2NvdW50IHN0YXRlbWVudCB0byBlbmFibGUgdXMgIGZhY2ls
aXRhdGUgaXQuClRoZSB0cnV0aCBpcyB0aGF0IHRoaXMgYWNjb3VudCBhbmQgZnVuZHMgaW4gaXQg
aGF2ZSBiZWVuIGRvcm1hbnQgZm9yCnllYXJzIGluIG91ciBCYW5rLCBhbmQgdGhlIHJlcXVlc3Qg
Zm9yIGEgIGZvcmVpZ25lciB0byBiZSBpbnZvbHZlZCBpbgp0aGlzIGRlYWwgYmVjb21lcyBuZWNl
c3NhcnkgYmVjYXVzZSBvdXIgbGF0ZSBjdXN0b21lciB3YXMgYSBmb3JlaWduZXIKYW5kIGEgYnVy
a2luYWJlIGNhbm5vdCBzdGFuZCBhcyBOZXh0IG9mIEtpbiB0byBhIGZvcmVpZ25lci4gVGhlcmVm
b3JlLApiZWNhdXNlIG9mIHRoZSBuYXR1cmUgb2YgdGhpcyB0cmFuc2FjdGlvbiwgSSB3YW50IHlv
dSB0byBzdGFuZCBhcyB0aGUKTmV4dCBvZiBraW4gc28gdGhhdCBvdXIgYmFuayB3aWxsIGFjY29y
ZCB5b3UgdGhlIHJlY29nbml0aW9uIGFuZCBoYXZlCnRoZSBmdW5kIHRyYW5zZmVycmVkIHRvIHlv
dXIgYWNjb3VudC4gQW5kIEkgcHJvbWlzZWQgdGhhdCBJIHdpbGwgYmUKZ3VpZGluZyB5b3UgdW50
aWwgdGhlIGVuZCB0byBhdm9pZCBhbnkgbWlzdGFrZS4KClVwb24geW91ciByZXNwb25zZSwgSSBz
aGFsbCB0aGVuIHByb3ZpZGUgeW91IHdpdGggZnVydGhlciBpbmZvcm1hdGlvbiwKaW5jbHVkaW5n
IHZlcmlmaWFibGUgZG9jdW1lbnRzIGxpbmtlZCB0byB0aGUgYWNjb3VudCBhbmQgbW9yZSBkZXRh
aWxzCnRoYXQgd2lsbCBoZWxwIHlvdSB1bmRlcnN0YW5kIHRoZSB0cmFuc2FjdGlvbi4gSSBhbSBl
eHBlY3RpbmcgeW91cgp1cmdlbnQgcmVzcG9uc2UgdG8gZW5hYmxlIG1lIGluZm9ybSB5b3UgaG93
IHRoaXMgZGVhbCB3aWxsIGJlCmV4ZWN1dGVkLgoKUGxlYXNlIEkgd291bGQgbGlrZSB5b3UgdG8g
a2VlcCB0aGlzIHRyYW5zYWN0aW9uIGNvbmZpZGVudGlhbCBhbmQgYXMgYQp0b3Agc2VjcmV0IG9y
IGRlbGV0ZSBpZiB5b3UgYXJlIG5vdCBpbnRlcmVzdGVkLgoKV2l0aCBtYW55IHRoYW5rcywKU3Vs
ZW1hbiBCZWxsby4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
