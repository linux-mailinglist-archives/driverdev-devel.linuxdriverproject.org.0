Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EB319583F
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 14:44:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D42E88A87;
	Fri, 27 Mar 2020 13:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IpeFIi36D+mX; Fri, 27 Mar 2020 13:44:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 168D088A18;
	Fri, 27 Mar 2020 13:44:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21CDA1BF301
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 13:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E69A8937D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 13:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbAiwCuOLw+f
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 13:44:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A627289387
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 13:44:24 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id j9so8793924ilr.7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=uIvUjlehSVigkxhw02yxSAS/Jekd0JL8sbxoZE/mhG8=;
 b=CWNX9l2UGIJBYDL8e4jKoBK3mg/HFG/VwWkS49sFUOwGcwaUXLkymaUmPK7xKJvmjg
 zXr71SvZFs7ZRMsD0a61S2oEsDu7CVNqG2wq94VRG+hDYkyTpmA0//GiuM3U5aZzAlaq
 3/PuQXp+wK92IHJoiu77IfDw+JqWdhskTvgGNkIK/XPRc3LPuxpAyFi1XQHT1j3S5CzI
 80j1Fg94ZapVYEplBPh1bw/oo97TcyY7shK3EGCEqeQjj+5wymT9gAOha9j2KODItYLT
 n+50BzsWR98TX9RE14ajukyEoO97IlgrAy11b1cinl/qOuib58ZBCriokyxANYk2DiaA
 fz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=uIvUjlehSVigkxhw02yxSAS/Jekd0JL8sbxoZE/mhG8=;
 b=SkgEvCs1eiG8o/G+akYJUcU1IKA35SjPJZB7Zxp65dCYH8svV+AQwZVfKZigzRxlk2
 dFdVM33X/sna+5lZZy5WOd0FXLi4hK8qekxb8siLsy2Y7Egcr9wR6iF20eYbv7BGGDKl
 wi7zaYYYnAVxa9gillEbbExKFREBGQvhgxLDd//3Djuf4UEpmDbaCawg6aNK2TAHoDyM
 9KxG6MR0zmzLWgXu29psF13uZ7WvLDKM8xBmiuXtsYlYvyaMMGRinOnXDvxlZO7I2ivM
 b9PttN4TkYqSHdZg0u/piJHaoRjq3tU/NlpbDBRl9qyzAG9fWY0eC0H2sCFv0lUDpRG4
 Kd0g==
X-Gm-Message-State: ANhLgQ1hO85A1PEpp3BoXn02ujIFd2iUQbUyFpomP3Jp7EGv8SYc494H
 JeEQbZjGCEzmfTCg9+hkpWuRlvBq83p1dUNix0k=
X-Google-Smtp-Source: ADFU+vuGyUq6Xt30XsVnZknBzw7vgbGSOT3EkN27y6j60sKN/SE1S2BbwpdY7CfbeeKUYB3PqQ5FRrDx5j+vTikJrZk=
X-Received: by 2002:a92:cb49:: with SMTP id f9mr13577899ilq.193.1585316663963; 
 Fri, 27 Mar 2020 06:44:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5e:8817:0:0:0:0:0 with HTTP; Fri, 27 Mar 2020 06:44:23
 -0700 (PDT)
From: Andrew Ede <consumingfirechurch4@gmail.com>
Date: Fri, 27 Mar 2020 15:44:23 +0200
Message-ID: <CAK6CGFdR_k3ecMryhXAp8JyUkPfuHqEmhJ1LE1d957vkCfBbcA@mail.gmail.com>
Subject: HOW ARE YOU?
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
Reply-To: officework_progress@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBkYXkuCgpNeSByZWFzb24gb2YgY29udGFjdGluZyB5b3UgaXMgdGhhdCBJIGFuZCBteSBj
b2xsZWFndWVzIHdvcmtpbmcgaW4gb3VyCmNvdW50cnnigJlzIE5hdGlvbmFsIFBldHJvbGV1bSBD
b3Jwb3JhdGlvbiB3YW50IHRvIGJ1eSBhbnkgZXhpc3RpbmcKbW9kZXJuIGNydWRlIG9pbCByZWZp
bmVyeSBpbiBhbnkgcGFydCBvZiB0aGUgd29ybGQuCgpXZSBhcmUgcmVhZHkgdG8gYnV5IGFueSBh
dmFpbGFibGUgbGFuZCB0byBidWlsZCB0aGUgUmVmaW5lcnkgb3IgYnV5CnRoZSBleGlzdGluZyBv
bmUgYW55d2hlcmUgb3V0c2lkZSBBZnJpY2EuIFdlIHdpbGwgbWFrZSB5b3Ugb3VyIGZvcmVpZ24K
cGFydG5lciBhYnJvYWQgd2l0aCBzb21lIHBlcmNlbnRhZ2Ugc2hhcmVob2xkaW5nIGlmIHlvdSB3
aWxsIGJlCmludGVyZXN0ZWQgdG8gd29yayB3aXRoIHVzIG9uIHRoaXMgcHJvamVjdC4KCldlIGhh
dmUgdGhlIHN1bSBvZiAoJDYwMCBNaWxsaW9uIERvbGxhcnMpIFNpeCBIdW5kcmVkIE1pbGxpb24g
RG9sbGFycwpmb3IgdGhpcyBwcm9qZWN0LgoKTWVhbndoaWxlLCB0aGlzIGFtb3VudCBvZiAoJDYw
MCBNaWxsaW9uIERvbGxhcnMpIHdpbGwgYmUgYWNjZXNzaWJsZQp0aHJvdWdoIEZvcmVpZ24gQ29u
dHJhY3QgUHVyY2hhc2UgRnVuZC4gV2UgYXJlIGdvaW5nIHRvIGNsYXJpZnkgd2hhdAp3ZSBtZWFu
dCBieSBGb3JlaWduIENvbnRyYWN0IFB1cmNoYXNlIEZ1bmQgYXMgc29vbiBhcyB3ZSBoZWFyIGZy
b20geW91CmZvciBiZXR0ZXIgdW5kZXJzdGFuZGluZyBhbmQgdGhlIHdheSBmb3J3YXJkLgoKSG93
ZXZlciwgaW4gY2FzZSB5b3UgYXJlIG5vdCBjYXBhYmxlIHRvIGhhbmRsZSB0aGlzIHByb2plY3Qg
d2l0aCB1cywKcGxlYXNlIGtpbmRseSBjb25uZWN0IHVzIHRvIGFueSBjYXBhYmxlIHBlcnNvbiBv
ciBjb21wYW55IHRoYXQgd291bGQKaGFuZGxlIHRoZSBwcm9qZWN0IHdpdGggdXMgaW4gb3JkZXIg
dG8gZW5hYmxlIHVzIHByb2NlZWQgYXQgb25jZS4KCldlIGhvcGUgdG8gaGVhciB5b3UgaW4gbm8g
ZGlzdGFuY2UgdGltZSB0aHJvdWdoIHRoaXMgZS1tYWlsIGFkZHJlc3MKYXQ6IG9mZmljZXdvcmtf
cHJvZ3Jlc3NAeWFob28uY29tLCBmb3IgaW1tZWRpYXRlIGNvbW11bmljYXRpb24gYW5kCm1vcmUg
ZmFjdHMgb24gaG93IHRvIGdvIG9uLgoKV2l0aCByZXNwZWN0CgpCZXN0IFJlZ2FyZHMKCkFuZHJl
dyBFZGUgYW5kIENvLCwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
