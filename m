Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D10CA4F42E
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 09:33:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FE02863E3;
	Sat, 22 Jun 2019 07:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVEQCNlayyat; Sat, 22 Jun 2019 07:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6543086364;
	Sat, 22 Jun 2019 07:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAFD91BF868
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 07:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA71420423
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 07:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3ACAAyBmid9 for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 07:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 991E820421
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 07:33:34 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id m10so13536709edv.6
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 00:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=g5MH06bMo/g39S8XyrohSWTyGVkurw920lvInSmeIwM=;
 b=JMWaObg9LIiKc0NMiRK3mSWd6HFOZ4b8FxIH4YLXXExGwGuOibak/Ka9HHhGAI1daa
 J9aKiJAoa7if9r18FOJg+Wyp8fZ1z/LLCxWAIg7DZIJ4eUfkEvsBywzlNwXY3p/SFCqz
 W65ijOucQ4y/jY/wx5PLqWRDWM60P2vjCWySaQ/9ETAASMYrV7E5M7ZacZROj7zIjGkr
 aLzxmgr7ZE46CQeeT3vu2txceH4G20J70oYDcTegs7TEBO315ixmQYneHBKL/H2uphyT
 xWPUSo6yUyQHc609qlDrSIzDM+s/UbuB42HUiIl4qX3M2OhwsYTngtmi17h+zM1nRCBg
 +q+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=g5MH06bMo/g39S8XyrohSWTyGVkurw920lvInSmeIwM=;
 b=ZuriYlXBYXK0XOxN6NSxJbO+GCkYaHBb1xYu+0r48FA01/MQuAiothEDhWsK+Qo9u1
 +0CPyJjUJAP+mVqb0xy8FA9+3SJfaTvRRmDTSpYdMuonboHC7LMmsqAiT5CCbwEaq+pm
 V403kK6jUUodUa/c7PFU74Q5d/zN1gFxvEFuxctmxj65+dGZLYSGpFb4o3C0z7Yw1t2A
 ssQcpy/8Ki6IDoQ/LfNF5VF4pBB+sQ2Czu0VK888vVGSlR2uQEyNzwv9GxwaJWDJ71wz
 n+0MqZRPXCGoP+U6F3NnqaBxzCYrTrfJynl0Bxa5I0p4hf9hAWMqeMTwC8VRzJNykwXm
 4hUA==
X-Gm-Message-State: APjAAAVA8V9rlUujOG6PCOySgt2m8ivUmbK6kKJSFAIatGjmi3UXEK2G
 Z5eRn9dmsGWjv+dnYxKbnCIo+3hKq/KaWzuMnZQ=
X-Google-Smtp-Source: APXvYqzivkjFRixEXxGoj1hfz2/kIovtdGaXMhiREBUKWdPdS5NJ9S6agHckJnhp3vLCQWXlB5aqFwufs8alD9pjcVM=
X-Received: by 2002:a17:906:5255:: with SMTP id
 y21mr46973361ejm.253.1561188812873; 
 Sat, 22 Jun 2019 00:33:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:887a:0:0:0:0:0 with HTTP; Sat, 22 Jun 2019 00:33:31
 -0700 (PDT)
From: Aisha Gaddafi <groupementvillagebasa@gmail.com>
Date: Sat, 22 Jun 2019 07:33:31 +0000
Message-ID: <CAKs=fLHePw67fvgN6O5tS0ULBdKyMZP+Bh8moB8UQ9z4Cfk+hA@mail.gmail.com>
Subject: Hello My Beloved One
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
Reply-To: aishatougaddafi@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gTXkgQmVsb3ZlZCBPbmUsIGkgbmVlZCB5b3VyIGFzc2lzdGFuY2UsCgpQbGVhc2UgYmVh
ciB3aXRoIG1lIGkgYW0gd3JpdGluZyB0aGlzIG1haWwgdG8geW91IHdpdGggdGVhcnMgYW5kCnNv
cnJvdyBmcm9tIG15IGhlYXJ0LgoKSSBhbSBBaXNoYSBNdWFtbWFyIEdhZGRhZmksIHRoZSBvbmx5
IGRhdWdodGVyIG9mIHRoZSBlbWJhdHRsZWQKcHJlc2lkZW50IG9mIExpYnlhLCBIb24uIE11YW1t
YXIgR2FkZGFmaS4gSSBrbm93IG15IG1haWwgbWlnaHQgY29tZSB0bwp5b3UgYXMgYSBzdXJwcmlz
ZSBiZWNhdXNlIHlvdSBkb27igJl0IGtub3cgbWUsIGJ1dCBkdWUgdG8gdW5zb2xpY2l0ZWQKbmF0
dXJlIG9mIG15IHNpdHVhdGlvbiBoZXJlIGluIFJlZnVnZWUgY2FtcCwgaSBkZWNpZGVkIHRvIGNv
bnRhY3QgeW91CmZvciBoZWxwLiBJIGhhdmUgcGFzc2VkIHRocm91Z2ggcGFpbnMgYW5kIHNvcnJv
d2Z1bCBtb21lbnQgc2luY2UgdGhlCmRlYXRoIG9mIG15IGZhdGhlci4gQXQgdGhlIG1lYW50aW1l
LCBteSBmYW1pbHkgaXMgdGhlIHRhcmdldCBvZgpXZXN0ZXJuIG5hdGlvbnMgbGVkIGJ5IE5BVE8g
d2hvIHdhbnRzIHRvIGRlc3Ryb3kgbXkgZmF0aGVyIGF0IGFsbApjb3N0cy4gT3VyIGludmVzdG1l
bnRzIGFuZCBiYW5rIGFjY291bnRzIGluIHNldmVyYWwgY291bnRyaWVzIGFyZQp0aGVpciB0YXJn
ZXRzIHRvIGZyZWV6ZS4KCk15IEZhdGhlciBvZiBibGVzc2VkIG1lbW9yeSBkZXBvc2l0ZWQgdGhl
IHN1bSBvZiAkMTUuOE0gKGZpZnRlZW4KTWlsbGlvbiBFaWdodCBIdW5kcmVkIFRob3VzYW5kIERv
bGxhcnMpIGF0IHRoZSBiYW5rIGluIEJ1cmtpbmEgRmFzbwp3aGljaCBoZSB1c2VkIG15IG5hbWUg
YXMgdGhlIG5leHQgb2Yga2luLiBJIGhhdmUgYmVlbiBjb21taXNzaW9uZWQgYnkKdGhlIGJhbmsg
dG8gcHJlc2VudCBhbiBpbnRlcmVzdGVkIGZvcmVpZ24gaW52ZXN0b3IvcGFydG5lciB3aG8gY2Fu
CnN0YW5kIGFzIG15IHRydXN0ZWUgYW5kIHJlY2VpdmUgdGhlIGZ1bmQgaW4gaGlzIGFjY291bnQg
Zm9yIGEgcG9zc2libGUKaW52ZXN0bWVudCBpbiBoaXMgY291bnRyeSBkdWUgdG8gbXkgcmVmdWdl
ZSBzdGF0dXMgaGVyZS4KCkkgYW0gaW4gc2VhcmNoIG9mIGFuIGhvbmVzdCBhbmQgcmVsaWFibGUg
cGVyc29uIHdobyB3aWxsIGhlbHAgbWUgIGFuZApzdGFuZCBhcyBteSB0cnVzdGVlIHNvIHRoYXQg
SSB3aWxsIHByZXNlbnQgaGltIHRvIHRoZSBCYW5rIGZvciB0aGUKdHJhbnNmZXIgb2YgdGhlIGZ1
bmQgdG8gaGlzIGJhbmsgYWNjb3VudCBvdmVyc2Vhcy4gSSBoYXZlIGNob3NlbiB0bwpjb250YWN0
IHlvdSBhZnRlciBteSBwcmF5ZXJzIGFuZCBJIGJlbGlldmUgdGhhdCB5b3Ugd2lsbCBub3QgYmV0
cmF5IG15CnRydXN0IGJ1dCByYXRoZXIgdGFrZSBtZSBhcyB5b3VyIG93biBzaXN0ZXIgb3IgZGF1
Z2h0ZXIuIElmIHRoaXMKdHJhbnNhY3Rpb24gaW50ZXJlc3QgeW91LCB5b3UgZG9uJ3QgaGF2ZSB0
byBkaXNjbG9zZSBpdCB0byBhbnkgYm9keQpiZWNhdXNlIG9mIHdoYXQgaXMgZ29pbmcgd2l0aCBt
eSBlbnRpcmUgZmFtaWx5LCBpZiB0aGUgdW5pdGVkIG5hdGlvbgpoYXBwZW5zIHRvIGtub3cgdGhp
cyBhY2NvdW50LCB0aGV5IHdpbGwgZnJlZXppbmcgaXQgYXMgdGhleSBmcmVlemUKb3RoZXJzLCBz
byBwbGVhc2Uga2VlcCB0aGlzIHRyYW5zYWN0aW9uIG9ubHkgdG8geW91cnNlbGYgdW50aWwgd2UK
ZmluYWxpemUgaXQuCgpodHRwOi8vd3d3LnRlbGVncmFwaC5jby51ay9uZXdzL3dvcmxkbmV3cy9h
ZnJpY2FhbmRpbmRpYW5vY2Vhbi9saWJ5YS85OTY3MjAzL0dhZGRhZmlzLWRhdWdodGVyLXRocm93
bi1vdXQtb2YtQWxnZXJpYS1hZnRlci1zaGUtc2V0LWZpcmUtdG8tcHJlc2lkZW50aWFsLXJlc2lk
ZW5jZS5odG1sCgpTb3JyeSBmb3IgbXkgcGljdHVyZXMgaSB3aWxsIGVuY2xvc2UgaXQgaW4gbXkg
bmV4dCBtYWlsIGFuZCBtb3JlIGFib3V0Cm1lIHdoZW4gaSBoZWFyIGZyb20geW91IG9rYXkuCgpZ
b3VycyBTaW5jZXJlbHkKQmVzdCBSZWdhcmQsCkFpc2hhIEVsIEdhZGRhZmkKbXkgcHJpdmF0ZSBl
bWFpbCBhZGRyZXNzKCBhaXNoYXRvdWdhZGRhZmlAZ21haWwuY29tICkKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
