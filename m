Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F26993C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 14:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AF5888498;
	Thu, 22 Aug 2019 12:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDPgafu5dI10; Thu, 22 Aug 2019 12:34:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0D358833C;
	Thu, 22 Aug 2019 12:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C844B1BF409
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 12:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4BE184DBD
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 12:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RF+JC-158Q2M for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 12:34:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 51DC684973
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 12:34:03 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x18so5406767ljh.1
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 05:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=aWwEGZ7IKPwlD1SyN53LweuoS+rG8j2WBRgPDxMagPA=;
 b=Rbh3JsGIh2x+jDuVbneOEsdobwGn2xF3k9KTKgjnK8Dyd2ODu1sdAQZQ15vVyYnqdt
 7E9K7FhpCx9S2Dr1Ddo93q8TQvnmC/kE524CSoK66UbjC0Keqf53qhQ3yEqx3HAqneCK
 QJH+OsNLuiNr6NKxEeJtactPjxkq0IA/anzWTZbfxsdGDFNukm8hCNfpT4lameBjcg1P
 vMEErESY7RDQugMc/b/MZ0+sk5n2uzgwjXg1V0nNdJsVb5O6VyZacEb0HGljYN7+OPri
 sm6Rp5BE3EkVBy2/1k5KenPYcnLllMAdQCixAZH/6rT6ERxgPTfrELU8FhhN52TrBApt
 4Cxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=aWwEGZ7IKPwlD1SyN53LweuoS+rG8j2WBRgPDxMagPA=;
 b=hu0YDH7h63eYpIEkMjNr+X/8j3ODu4d90frT0Zu21p6zQz56/wS/bIxk+9kN5QNKtc
 /Iw2+EDSKmGxob/TI/Iy2WnA2i2dLeh18hTf0u7lKPsVCN8vl0HQkqShpwraYsYwS1I6
 mnI7BLS/wCm9rKOzdQK8DBX4RYrGPvWWnrfXCaT+zVH2v6N86joD34XNE30hk9k0lIZm
 In6oKwsyGxu2imfe/PU9qyUBqO0iiCD5aG9oM+1WVmnmRLZrOYVUBP5HBBCJ20PZKslz
 avZVILzYE+pT7ZyIxhCjJPNAAUpAUACdZrvfPtvunBBmpgM5blYSclXL3FQRhOacQgG8
 6Q+Q==
X-Gm-Message-State: APjAAAUiT3j1zQ1LKI27wm+KlDedM0WPy/GduX1X9eUXg6vKKZROO8CV
 cFvu/ZxbACc3mFsiBITXJ2PyHOckjgdbI7afspM=
X-Google-Smtp-Source: APXvYqz3MRqWqCJljuYvGs7Z39vR8szuBA98XmfHPUkBGUeOj4vI/x4jHKyZ57W6CcLrF9xDbGoqKi5bbRMPFZ+Cc3Y=
X-Received: by 2002:a2e:9a44:: with SMTP id k4mr17910876ljj.96.1566477241520; 
 Thu, 22 Aug 2019 05:34:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6a0f:0:0:0:0:0 with HTTP; Thu, 22 Aug 2019 05:34:01
 -0700 (PDT)
From: "Law firm(Eku and Associates)" <ezeobodo1@gmail.com>
Date: Thu, 22 Aug 2019 12:34:01 +0000
Message-ID: <CAN-_bTZ726ayFtAv4dpjhKOuZFqgxZg3rZFa8VV4nXz4ZvjT-Q@mail.gmail.com>
Subject: MY $25,000,000.00 INVESTMENT PROPOSAL WITH YOU AND IN YOUR COUNTRY.
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
Reply-To: eku.lawfirm@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkRlYXIsCldpdGggZHVlIHJlc3BlY3QgdGhpcyBpcyBub3Qgc3BhbSBvciBTY2FtIG1haWws
IGJlY2F1c2UgSSBoYXZlCmNvbnRhY3RlZCB5b3UgYmVmb3JlIGFuZCB0aGVyZSB3YXMgbm8gcmVz
cG9uc2UgZnJvbSB5b3UsSSBhcG9sb2dpc2UgaWYKdGhlIGNvbnRlbnRzIG9mIHRoaXMgbWFpbCBh
cmUgY29udHJhcnkgdG8geW91ciBtb3JhbCBldGhpY3MsIHdoaWNoIEkKZmVlbCBtYXkgYmUgb2Yg
Z3JlYXQgZGlzdHVyYmFuY2UgdG8geW91ciBwZXJzb24sIGJ1dCBwbGVhc2UgdHJlYXQgdGhpcwp3
aXRoIGFic29sdXRlIGNvbmZpZGVudGlhbGl0eSwgYmVsaWV2aW5nIHRoYXQgdGhpcyBlbWFpbCBy
ZWFjaGVzIHlvdQppbiBnb29kIGZhaXRoLiBNeSBjb250YWN0aW5nIHlvdSBpcyBub3QgYSBtaXN0
YWtlIG9yIGEgY29pbmNpZGVuY2UKYmVjYXVzZSBHb2QgY2FuIHVzZSBhbnkgcGVyc29uIGtub3du
IG9yIHVua25vd24gdG8gYWNjb21wbGlzaCBncmVhdAp0aGluZ3MuCkkgYW0gYSBsYXd5ZXIgYW5k
IEkgaGF2ZSBhbiBpbnZlc3RtZW50IGJ1c2luZXNzIHByb3Bvc2FsIHRvIG9mZmVyIHlvdS4KSXQg
aXMgbm90IG9mZmljaWFsIGJ1dCBzaG91bGQgYmUgY29uc2lkZXJlZCBhcyBsZWdhbCBhbmQgY29u
ZmlkZW50aWFsCmJ1c2luZXNzLiBJIGhhdmUgYSBjdXN0b21lcidzIGRlcG9zaXQgb2YgJFVTMjUg
bWlsbGlvbiBkb2xsYXJzIHJlYWR5CnRvIGJlIG1vdmVkIGZvciBpbnZlc3RtZW50IGlmIHlvdSBj
YW4gcGFydG5lciB3aXRoIHVzLiBXZSBhcmUgcmVhZHkgdG8Kb2ZmZXIgeW91IDEwJSBvZiB0aGlz
IHRvdGFsIGFtb3VudCBhcyB5b3VyIGNvbXBlbnNhdGlvbiBmb3Igc3VwcG9ydGluZwp0aGUgdHJh
bnNhY3Rpb24gdG8gY29tcGxldGlvbi4gSWYgeW91IGFyZSBpbnRlcmVzdGVkIHRvIGhlbHAgbWUg
cGxlYXNlCnJlcGx5IG1lIHdpdGggeW91ciBmdWxsIGRldGFpbHMgYXMgc3RhdGVkIGJlbG93Ogoo
MSkgWW91ciBmdWxsIG5hbWVzOgooMikgWW91ciBhZGRyZXNzOgooMykgWW91ciBvY2N1cGF0aW9u
OgooNCkgWW91ciBtb2JpbGUgdGVsZXBob25lIG51bWJlcjoKKDUpIFlvdXIgbmF0aW9uYWxpdHk6
Cig2KSBZb3VyIHByZXNlbnQgbG9jYXRpb246Cig3KSBZb3VyIGFnZToKU28gdGhhdCBJIHdpbGwg
cHJvdmlkZSB5b3UgbW9yZSBkZXRhaWxzIG9uIHdoYXQgdG8gZG8gYW5kIHdoYXQgaXMKcmVxdWly
ZWQgZm9yIHN1Y2Nlc3NmdWwgY29tcGxldGlvbi4KTm90ZTogRE8gTk9UIFJFUExZIE1FIElGIFlP
VSBBUkUgTk9UIElOVEVSRVNURUQgQU5EIFdJVEhPVVQgVEhFIEFCT1ZFCk1FTlRJT05FRCBERVRB
SUxTCgpTaW5jw6hyZW1lbnQgdsO0dHJlLApBdm9jYXQgRXRpZW5uZSBFa3UgRXNxLihMYXdmaXJt
KQpQcm9jdXJldXIgcHJpbmNpcGFsLiBEZSBDYWJpbmV0IGTigJlhdm9jYXRzIGRlIGzigJlBZnJp
cXVlIGRlIGzigJlvdWVzdC4KU2t5cGU6d2VzdGFmcmljYWxhd2Zpcm0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
