Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC894A37EF
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jan 2022 18:55:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3C7F401A1;
	Sun, 30 Jan 2022 17:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PdAv3Z6lbU34; Sun, 30 Jan 2022 17:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C37C4018B;
	Sun, 30 Jan 2022 17:55:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9270A1BF335
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 17:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8010A401A1
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 17:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jO204TgJ_bhD for <devel@linuxdriverproject.org>;
 Sun, 30 Jan 2022 17:55:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE8FC4018B
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 17:55:27 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id e28so10875181pfj.5
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 09:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FHRMrChk+pAdJ8vLmfVIpAL8adX/NHuyOVbfwNVkL7E=;
 b=cL273jwpvvv/16YUaHxoYUuwJWBlVbw/lwQIzM88cyhYKOKY5qQhIB7A9oc0pXv8il
 1tE+e0Rt2RXayGyQXZtS/CXbz9wYG4oIqiJRGwqMT/nBGQccx5DhFYeXM9lNWufHJEvD
 HBk/2r6Nym1e0h/eIMtSnAkkIisPQJDRKMar1UcBV7rWI81asMOdKRUu1I/Ga0b/jZXf
 vUHXM/wxnDixkXkA/9XLzLA7sQh3NpfgH8QdBvJDp69pnNjr/rZldbHrqaHgipYIS/e+
 Gez/GkGcX1H2H9Jhz/M7Pmk7adRv0j+sYjcp+2cE5YKp95/kfJ+/qrUOtVDkIMFizfFY
 qcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=FHRMrChk+pAdJ8vLmfVIpAL8adX/NHuyOVbfwNVkL7E=;
 b=QtSVGUQ/Ns782rtcBJqow/A/V0rrCfwzZx9XBa+0Ve0He5Pao+YFTo34V7gaoSagQi
 NQ+rIhH6v2XPab8sXU+IUE90oYppbPe/IKZOSxyzQsw5WoiE+tuzj/SJIEBMRCjWBLy/
 uEy8xktvG2XnMVrdhNc2MBc5cqrfOt41dmeMSZe8jcj9ja183mW0Ny+bp+WDm71rHFDA
 WAZfTYdw/yjY79vFeEEtwRlFge4/CKUu7+auLes5Sl+kXb+FMp23tQU+3GKXFohzyfvN
 qQRHX+IU4AYTCScz9i1VtKZgKpLra73I4RLef+Cksh/VHoB2ama0wNS7wBP9X0J/Lptv
 qrjA==
X-Gm-Message-State: AOAM532ax4lyU2Qpy0L8IcmxYn0A+qDAjPgDWOftCd2UodqV6RKTnN7b
 TYQGJklKUgG+mOAkFV6CIOM+bRBQxJFDEP+u5YY=
X-Google-Smtp-Source: ABdhPJyplW1v4I/AIiaJOJYM9qnA1f94XQ2Be287+fSyOKhvjxBDwFrtY1QYD+EoNBh1yh+QPWI/4QWAzODrbI8HfX0=
X-Received: by 2002:a05:6a00:130a:: with SMTP id
 j10mr16167109pfu.32.1643565326379; 
 Sun, 30 Jan 2022 09:55:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:e7c6:0:0:0:0 with HTTP; Sun, 30 Jan 2022 09:55:25
 -0800 (PST)
From: Shehata Ibrahim <shirinrehim@gmail.com>
Date: Sun, 30 Jan 2022 17:55:25 +0000
X-Google-Sender-Auth: aT9NWjY8SmjyPB07hfNUy9sIrCQ
Message-ID: <CAOFs0uFzoSvLztg3k_Pv84bmexjAaouX0YZpAzbUBNDkGTJMmw@mail.gmail.com>
Subject: Your E-mail ID is among the scam Victims listed to be compensated.
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
Reply-To: shirinrehim@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fn5+fn5gYGBgCkRlYXIgdmFsdWVkIGN1c3RvbWVyLCBTaXIvTWFkYW0sIENvbXBsaW1lbnQgb2Yg
dGhlIGRheTsgdGhpcyBpcyB0bwppbmZvcm0geW91IHRoYXQgdGhlIElNRi9Xb3JsZCBCYW5rIGF1
ZGl0b3JzIGhhcyBhcHByb3ZlZCBhCmNvbXBlbnNhdGlvbiBwYXltZW50IHRvIGNvbXBlbnNhdGUg
c29tZSBvZiB0aGUgc2NhbSB2aWN0aW1zIGFuZCwgWW91cgpFLW1haWwgSUQgaXMgYW1vbmcgdGhl
IHNjYW0gVmljdGltcyBsaXN0ZWQgdG8gYmUgY29tcGVuc2F0ZWQgYnkgV29ybGQKQmFuay9JTUYg
dmFsdWVkIGF0IFVTJCAzIE1pbGxpb24gZWFjaC4KCk5vdGUsIHdlIGhhdmUgcmVjZWl2ZWQgZnJv
bSB0aGUgY3VzdG9keSBvZiAoSU1GIGFuZCBXb3JsZCBCYW5rKSB0aGUKbmVjZXNzYXJ5IGRvY3Vt
ZW50cyBiYWNraW5nIGFuZCBwcm92aW5nIHlvdSBhcyB0aGUgYmVuZWZpY2lhcnkgb2YgdGhlCiQz
IE1pbGxpb24gVXMgRG9sbGFycyB0aGF0IHdlIGFyZSBhYm91dCB0byByZWxlYXNlIHRvIHlvdSBh
cyBhCmNvbXBlbnNhdGlvbiBwYXltZW50LiBUaGlzIGNvbXBlbnNhdGlvbiBpcyBmb3IgdGhvc2Ug
d2hvIGV4cGVyaWVuY2UKdmljdGltIG9mIHNjYW0gd29ybGR3aWRlLgoKSSBhbSBmdWxseSBpbi1j
aGFyZ2UsIGFuZCBvcmRlcmVkIGJ5IHRoZSBNYW5hZ2VtZW50IE9mIFUuSyBzdWItcmVnaW9uClVu
aXQgKDEpIEludGVybmF0aW9uYWwgTW9uZXRhcnkgRnVuZCAoSU1GKSBUaGUgb2ZmaWNpYWxzIG9m
IEV4dGVybmFsClJlbGF0aW9ucyBJbnRlcm5hdGlvbmFsIE1vbmV0YXJ5IEZ1bmQgKElNRikgSW50
ZXJuYWwgQXVkaXQgTW9uaXRvcmluZwphbmQgSW52ZXN0aWdhdGluZyB1bml0IGFsc28gd2FudCB0
byB1c2UgdGhpcyBvcHBvcnR1bml0eSB0byBhbm5vdW5jZQp0byBhbGwgdGhlIGJlbmVmaWNpYXJp
ZXMgbGlzdGVkL2luZGljYXRlZCBpbiBvdXIgaW50ZXJuYXRpb25hbApvdXRzdGFuZGluZyBwYXlt
ZW50IGxpc3QgYXMgeW91ciB1bmNsYWltZWQgZnVuZCBpbmRpY2F0ZWQgaW4gb3VyCnBheW1lbnQg
bGlzdC4gIC4KCkZvbGxvd2VkIHRvIHRoZSByZWNlbnQgIGluc3RydWN0aW9ucyAgZnJvbSB0aGUg
Zm9yZWlnbiAgZW1iYXNzaWVzLCBhbmQKIHdpdGggaGVscCBvZiB0aGUgQnJpdGlzaCBpbnZlc3Rp
Z2F0aW9uIFVuaXQsIGFuZCBzZXJpZXMgb2YgcmVwb3J0Cmxpc3RlZCBmcm9tIG91ciBmb3JlaWdu
IHJlbWl0dGFuY2Ugb2ZmaWNlcywgYW5kIHJlY2VudCByZXBvcnRzIGZyb20Kb3VyIGNvcnJlc3Bv
bmRpbmcgVW5pdCBVbmRlciBJbnRlcm5hdGlvbmFsIE1vbmV0YXJ5IEZ1bmQgKElNRiksCgpTZXJp
ZXMgb2YgcmVwb3J0IGFuZCBjb21wbGFpbiByZWNlaXZlZCBmcm9tIEluZGl2aWR1YWxzIG1haW5s
eSBmcm9tClVuaXRlZCBTdGF0ZXMgT2YgQW1lcmljYSwgQ2FuYWRpYW5zLCBBdXN0cmFsaWFucywg
U2luZ2Fwb3JlLApQaGlsaXBwaWFucywgQnJhemlsLCBNZXhpY2FucywgRWd5cHQsIFNhdWRpIEFy
YWJpYW5zLCBFdXJvcGVhbnMsCkluZGlhbnMsIE5ldyBaZWFsYW5kIGFuZCBvdGhlciBwYXJ0cyBv
ZiB0aGUgd29ybGQgcmVwb3J0aW5nICB0aGF0CnRoZWlyIGluaGVyaXRhbmNlIGNvbnRyYWN0IGZ1
bmRzLCB3aW5pbmcgbG90dG8ncywgYW5kIGNvbXBlbnNhdGlvbnMKYXJlIGJlaW5nIHdpdGhoZWxk
IGluIHZhcmlvdXMgQmFua3MsIGxvdHRv4oCZcyAgd2lubmluZyBhZ2VuY2llcywKY291cmllciBj
b21wYW5pZXMsIGFuZCBvdGhlciBhZ2VuY2llcyBpbiBwYXJ0IG9mIEFmcmljYS4KCllvdSBhcmUg
aW5zdHJ1Y3RlZCB0byBmaWxsIG91ciBwYXltZW50IGFwcGxpY2F0aW9uIGZvcm0gYXMgb3V0bGlu
ZWQKYmVsb3cgY29ycmVjdGx5IHRvIGF2b2lkIGFueSBlcnJvciBpbiByZWxlYXNpbmcgeW91ciBw
YXltZW50IGFuZCBiZWFyCmluIG1pbmQgdGhhdCB3ZSB3aWxsIGNvbW1lbmNlIHlvdXIgcGF5bWVu
dCBhcyBzb29uIGFzIHdlIHJlY2VpdmUgdGhlCmluZm9ybWF0aW9uIGZyb20geW91LgoKUmVjb25m
aXJtIHRoZSBmb2xsb3dpbmcgaW5mb3JtYXRpb24gZm9yIHNlY3VyaXR5IHJlYXNvbi4KCjEuKSBG
dWxsIG5hbWU6CjIuKSBBZ2U6CjMuKSBTZXg6CjQuKSBBZGRyZXNzOgo1LikgWmlwL3Bvc3RhbCBj
b2RlOgo2LikgU3RhdGUvcHJvdmluY2U6CjcuKSBDb3VudHJ5Ogo4LikgUmVzaWRlbnRpYWwgQ291
bnRyeToKOS4pIFBob25lL3M6CjEwLikgT2NjdXBhdGlvbi9wb3NpdGlvbjoKCllvdXJzIGZhaXRo
ZnVsbHksCk1yOiBTaGVoYXRhIElicmFoaW0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
